from django import forms

class CheckoutForm(forms.Form):
    first_name = forms.CharField()
    last_name = forms.CharField()
    email = forms.EmailField()
    phone = forms.CharField()
    address = forms.CharField()
    country = forms.CharField()
    state = forms.CharField()
    zip_code = forms.CharField()
