from django.core.validators import MinValueValidator
from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse


class Collection(models.Model):
    title = models.CharField(max_length=255)

    def __str__(self)-> str:
        return self.title
    
    class Meta:
        ordering= ['title']


class Product(models.Model):
    title = models.CharField(max_length=255)
    description = models.TextField(null=True, blank=True)
    unit_price = models.DecimalField(
        max_digits=6, 
        decimal_places=2,
        validators=[MinValueValidator(1)])
    inventory = models.IntegerField()
    last_update = models.DateTimeField(auto_now=True)
    collection = models.ForeignKey(Collection, on_delete=models.PROTECT)
    
    def __str__(self)-> str:
        return self.title
    
    class Meta:
        ordering= ['title']

    def get_image_url(self):
        img = self.image_set.first()
        if img:
            return img.image_path.url
        return img #None
 


class Image(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    image_path = models.ImageField()

class Customer(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    phone = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    country= models.CharField(max_length=255)
    state= models.CharField(max_length=255)
    zip_code= models.CharField(max_length=255)
    def __str__(self):
        return f"{self.user.first_name} {self.user.last_name}"


class Order(models.Model):
    PAYMENT_STATUS_PENDING = 'P'
    PAYMENT_STATUS_COMPLETE = 'C'
    PAYMENT_STATUS_FAILED = 'F'
    PAYMENT_STATUS_CHOICES = [
        (PAYMENT_STATUS_PENDING, 'Pending'),
        (PAYMENT_STATUS_COMPLETE, 'Complete'),
        (PAYMENT_STATUS_FAILED, 'Failed')
    ]

    placed_at = models.DateTimeField(auto_now_add=True)
    payment_status = models.CharField(
        max_length=1, choices=PAYMENT_STATUS_CHOICES, default=PAYMENT_STATUS_PENDING)
    customer = models.ForeignKey(Customer, on_delete=models.PROTECT)


class OrderItem(models.Model):
    order = models.ForeignKey(Order, on_delete=models.PROTECT)
    product = models.ForeignKey(Product, on_delete=models.PROTECT)
    quantity = models.PositiveSmallIntegerField()
    unit_price = models.DecimalField(max_digits=6, decimal_places=2)

class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)

    def __str__(self):
        return f"{self.quantity} x {self.product}"

    def get_absolute_url(self):
        return reverse("cart:cart_detail")