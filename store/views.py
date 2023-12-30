from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from .models import Product, Customer, Cart, OrderItem, Order
from .forms import CheckoutForm
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User


def product_archives(request):# Render the HTML template index.html
    products = Product.objects.filter(inventory__gt=0)
    paginator = Paginator(products, 4)  # Show 4 products per page.
    page_number = request.GET.get("page")
    page_obj = paginator.get_page(page_number)
    return render(request, 'products/archive.html', {'test_var' : 'test', 'page_obj': page_obj})

def product_single(request, id):
    product = Product.objects.get(pk=id)
    return render(request, 'products/single.html', {'test_var' : 'test', 'product': product})

def checkout(request):
    cart_items = Cart.objects.filter(user=request.user)
    total_price = sum(item.quantity * item.product.unit_price for item in cart_items)
    form = CheckoutForm()

    context = {
        "cart_items": cart_items,
        "total_price": total_price,
        "form": form,
    }
    return render(request, 'checkout.html', context)


@login_required(login_url='/login/')
def add_to_cart(request, product_id):

    if not request.user:
        return redirect("login")
    product = Product.objects.get(pk=product_id)
    cart_item = Cart.objects.filter(user=request.user, product=product_id).first()

    if cart_item:
        cart_item.quantity += 1
        cart_item.save()
        messages.success(request, "Item added to your cart.")
    else:
        Cart.objects.create(user=request.user, product=product)
        messages.success(request, "Item added to your cart.")

    return redirect("cart_detail")

@login_required(login_url='/login/')
def remove_from_cart(request, cart_item_id):
    cart_item = get_object_or_404(Cart, id=cart_item_id)

    if cart_item.user == request.user:
        cart_item.delete()
        messages.success(request, "Item removed from your cart.")

    return redirect("cart_detail")

@login_required(login_url='/login/')
def cart_detail(request):
    cart_items = Cart.objects.filter(user=request.user)
    total_price = sum(item.quantity * item.product.unit_price for item in cart_items)

    context = {
        "cart_items": cart_items,
        "total_price": total_price,
    }

    return render(request, "cart/cart_detail.html", context)

@login_required(login_url='/login/')
def product_detail(request, product_id):
    product = get_object_or_404(Product, id=product_id)

    if request.method == "POST":
        messages.success(request, f"{product.name} added to your cart.")
        return redirect("add_to_cart", product_id=product.id)

    context = {
        "product": product,
    }

    return render(request, "products/single.html", context)

@login_required(login_url='/login/')
def order_reciever(request):
    if request.method== 'POST':
        form= CheckoutForm(request.POST)
        if form.is_valid():
            customer, created = Customer.objects.update_or_create(user = request.user, 
                                defaults = {
                                    'phone' : form.cleaned_data["phone"],
                                    'address' : form.cleaned_data["address"],
                                    'country' : form.cleaned_data["country"],
                                    'state' : form.cleaned_data["state"],
                                    'zip_code' : form.cleaned_data["zip_code"],
                                    
                                }  
                                )
            customer.save()

            user, created = User.objects.update_or_create(username = request.user.username,
                                defaults = {
                                    'first_name' : form.cleaned_data["first_name"],
                                    'last_name' : form.cleaned_data["last_name"],
                                    'email' : form.cleaned_data["email"],
                                }  
                                )
            user.save()

            order = Order(customer = customer)
            order.save()

            cart_items = Cart.objects.filter(user=request.user)

            for item in cart_items:
                order_item = OrderItem( 
                    order = order,
                    product = item.product,
                    quantity =item.quantity,
                    unit_price = item.product.unit_price,
                    )
                order_item.save()
                # temp_product = Product.objects.get(id = item.product.id)
                new_invetory = item.product.inventory - item.quantity
                product, created = Product.objects.update_or_create(id = item.product.id,
                                defaults = {
                                    'inventory' : new_invetory,
                                }  
                )
                product.save()


            cart_items.delete()
            return redirect("thank_you")

def thank_you(request):
    return render(request, "thank_you.html", {})