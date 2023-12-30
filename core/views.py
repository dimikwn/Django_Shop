from django.contrib.auth import authenticate, login, logout
from .forms import UserCreationForm, LoginForm
from django.shortcuts import render, redirect
from store.models import Product
from pprint import pprint

# Create your views here.
def say_hello(request):
    product = Product.objects.get(pk=1)
    return render(request, 'hello.html', {'name' : 'Mitsos'})

def index(request):# Render the HTML template index.html
    products = Product.objects.filter(inventory__gt=0)[:4]
    return render(request, 'homepage/index.html', {'test_var' : 'test', 'products': products})


def user_signup(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
    else:
        form = UserCreationForm()
    return render(request, 'auth/signup.html', {'form': form})

# login page
def user_login(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
            user = authenticate(request, username=username, password=password)
            if user:
                login(request, user)    
                return redirect('home')
    else:
        form = LoginForm()
    return render(request, 'auth/login.html', {'form': form})

# logout page
def user_logout(request):
    logout(request)
    return redirect('login')