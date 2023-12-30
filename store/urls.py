from django.views.generic import TemplateView
from django.urls import path
from . import views

urlpatterns = [
    path('products/', views.product_archives, name="product_archives"),
    path('products/<int:id>', views.product_single, name="product_single"),
    path('checkout/', views.checkout, name="checkout"),
    path("add/<int:product_id>/", views.add_to_cart, name="add_to_cart"),
    path("remove/<int:cart_item_id>/", views.remove_from_cart, name="remove_from_cart"),
    path("cart/", views.cart_detail, name="cart_detail"),
    path("order_reciever/", views.order_reciever, name="order_reciever"),
    path("thank_you/", views.thank_you, name="thank_you"),
]