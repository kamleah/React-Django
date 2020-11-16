from rest_framework import serializers
from api.models import UserRegistraton,Book,AddProducts,AddCart,user1
from rest_framework.authtoken.models import Token
from rest_framework_jwt.settings import api_settings
from django.contrib.auth.models import User


# User Serializer
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email')

# Register Serializer
class RegisterSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email', 'password')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(validated_data['username'], validated_data['email'], validated_data['password'])

        return user

        

class UserRegistratonSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserRegistraton
        fields = "__all__" 
    
    

class UserBookSerializer(serializers.ModelSerializer):
    class Meta:
        model=Book
        fields="__all__"

class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = AddProducts
        fields="__all__"

class AddCartSerializer(serializers.ModelSerializer):
    class Meta:
        model = AddCart        
        fields = "__all__"

class UpdateCartSerializer(serializers.ModelSerializer):
    class Meta:
        model = AddCart        
        fields = ["quantity","price"]
        
        
        

