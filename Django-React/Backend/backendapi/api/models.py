from django.db import models

# Create your models here.

class user1(models.Model):
    username = models.CharField(max_length=100)
    email = models.EmailField(max_length=255)
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    password = models.CharField(max_length=100)  

    class Meta:
        db_table = "user1"


class UserRegistraton(models.Model):
    UserFirstName=models.CharField(max_length=100)
    UserMiddleName=models.CharField(max_length=100)
    UserLastName=models.CharField(max_length=100)
    UserContactNo=models.CharField(max_length=100)
    UserAddress=models.CharField(max_length=250)
    UserEmail=models.EmailField(max_length=100)
    UserPassword=models.CharField(max_length=100)
    token = models.CharField(max_length=250)

    class Meta:
        db_table =  "UserRegistration"

def upload_path(instance,filename):
    return '/'.join(['covers',filename])

class Book(models.Model):
    title = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    covers = models.ImageField(blank=True, null=True, upload_to=upload_path)

    class Meta:
        db_table = "Images"

def product_path(instance,filename):
    return '/'.join(['productImg',filename])

class AddProducts(models.Model):
    productID = models.AutoField(primary_key=True)
    shopID = models.CharField(max_length=100)
    productName = models.CharField(max_length=100)
    productPrice = models.BigIntegerField()
    productImage = models.ImageField(blank=True,null=True,upload_to=product_path)
    
    def __str__(self):
        return self.productImage
        

    class Meta:
        managed = True
        db_table = "Products"
            
class AddCart(models.Model):    
    cartID = models.AutoField(primary_key=True)
    shopID = models.CharField(max_length=100)    
    productName = models.CharField(max_length=100)
    productID = models.IntegerField()
    productImage = models.TextField()
    productPrice = models.BigIntegerField()
    quantity = models.BigIntegerField()
    price = models.BigIntegerField(null=True)
    class Meta:
        managed = True
        db_table = "cart"


