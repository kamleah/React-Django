from django.shortcuts import render
from api.models import UserRegistraton,Book,AddProducts,AddCart,user1
from api.serialize import UserRegistratonSerializer,UserBookSerializer,ProductSerializer,AddCartSerializer,UpdateCartSerializer,UserSerializer
from rest_framework.views import APIView
from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from django.http import Http404
from django.http import HttpResponse
from rest_framework import permissions, status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.generics import GenericAPIView
from django.conf import settings
from django.contrib import auth
import jwt

from django.contrib.auth import login

from rest_framework import permissions
from rest_framework.authtoken.serializers import AuthTokenSerializer
from knox.views import LoginView as KnoxLoginView


from rest_framework import generics, permissions
from rest_framework.response import Response
from knox.models import AuthToken
from api.serialize import UserSerializer, RegisterSerializer

# Register API
class RegisterAPI(generics.GenericAPIView):
    serializer_class = RegisterSerializer

    def post(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.save()
        return Response({
        "user": UserSerializer(user, context=self.get_serializer_context()).data,
        "token": AuthToken.objects.create(user)[1]
        })

class LoginAPI(KnoxLoginView):
    permission_classes = (permissions.AllowAny,)

    def post(self, request, format=None):
        serializer = AuthTokenSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        login(request, user)        
        return Response({
        "user": UserSerializer(user).data,
        "token": AuthToken.objects.create(user)[1]
        })


class UserRegistration(APIView):
    def get(self,request):
        queryset =UserRegistraton.objects.all()
        UserSerializer_class = UserRegistratonSerializer(queryset,many=True)
        return Response(UserSerializer_class.data)

    def post(self,request):
        UserRegistrationObj = UserRegistratonSerializer(data=request.data)
        print(UserRegistrationObj)
        if UserRegistrationObj.is_valid():
            UserRegistrationObj.save()
            return self.get(request)
            return Response(UserRegistrationObj.data, status=status.HTTP_201_CREATED)
        return Response(UserRegistrationObj.errors, status=status.HTTP_400_BAD_REQUEST)
    
   
       

class BookViewSet(APIView):
    def get(self,request):
        queryset = Book.objects.all()
        BookSerializer_class = UserBookSerializer(queryset,many=True)
        return Response(BookSerializer_class.data)

    def post(self,request):
        covers = request.data['covers']
        title = request.data['title']
        address = request.data['address']
        Book.objects.create(title=title,covers=covers,address=address)
        return HttpResponse({'message':'Book Created'},status=200)
class ShopList(APIView):
    """
    List all Shop, or create a new snippet.
    """
    def get(self, request, format=None):
        snippets = Book.objects.all()
        serializer = UserBookSerializer(snippets, many=True)
        return Response(serializer.data)
    
    def post(self,request):
        covers = request.data['covers']
        title = request.data['title']
        address = request.data['address']
        Book.objects.create(title=title,covers=covers,address=address)
        return HttpResponse({'message':'Book Created'},status=200)

class ShopDetail(APIView):
    """
    Retrieve, update or delete a snippet instance.
    """
    def get_object(self, pk):
        try:
            return Book.objects.get(pk=pk)
        except Book.DoesNotExist:
            raise Http404

    def get(self, request, pk, format=None):
        snippet = self.get_object(pk)
        serializer = UserBookSerializer(snippet)
        return Response(serializer.data)

    def put(self, request, pk, format=None):
        snippet = self.get_object(pk)
        serializer = UserBookSerializer(snippet, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk, format=None):
        snippet = self.get_object(pk)
        snippet.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)



class ProductList(APIView):
    """
    List all Shop, or create a new snippet.
    """
    def get(self, request, format=None):
        productsView = AddProducts.objects.all()
        productsViewserializer = ProductSerializer(productsView, many=True)
        return Response(productsViewserializer.data)
    
    def post(self,request):
        shopID = request.data['shopID']
        productName = request.data['productName']
        productPrice = request.data['productPrice']
        productImage = request.data['productImage']                
        AddProducts.objects.create(shopID=shopID,productName=productName,productPrice=productPrice,productImage=productImage)
        return HttpResponse({'message':'Product Is Added Successfully'},status=200)

class ProductDetail(APIView):
    """
    Retrieve, update or delete a snippet instance.
    """
    def get_object(self, pk,**kwargs):
        try:
            return AddProducts.objects.get(pk=pk)
        except AddProducts.DoesNotExist:
            raise Http404

    def get(self, request, pk, format=None):
        productsView = AddProducts.objects.filter(shopID=pk)
        serializer = ProductSerializer(productsView, many=True)
        return Response(serializer.data)

    def put(self, request, pk, format=None):
        productsView = self.get_object(pk)
        serializer = ProductSerializer(productsView, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk, format=None):
        productsView = self.get_object(pk)
        productsView.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

class ProductDetailView(APIView):
    """
    Detail view of products
    """
    def get_object(self, pk,productID,**kwargs):
        try:
            return AddProducts.objects.get(pk=pk,productID=productID)
        except AddProducts.DoesNotExist:
            raise Http404

    def get(self, request, pk,productID, format=None):
        productsView = AddProducts.objects.filter(shopID=pk,productID=productID)
        serializer = ProductSerializer(productsView, many=True)
        return Response(serializer.data)


class AddToCart(APIView):
    """
    List all Shop, or create a new snippet.
    """
    def get(self, request, format=None):
        cartView = AddCart.objects.all()
        Cart = AddCartSerializer(cartView, many=True)
        return Response(Cart.data)
    
    def post(self,request):
        shopID = request.data['shopID']
        productID = request.data['productID']
        productName = request.data['productName']
        productImage = request.data['productImage']  
        productPrice = request.data['productPrice'] 
        quantity = request.data['quantity']
        price = request.data['price']
        AddCart.objects.create(productID=productID,shopID=shopID,productName=productName,productImage=productImage,productPrice = productPrice,quantity=quantity,price=price)
        return HttpResponse({'message':'Product Is Added To Cart'},status=200)

class CartView(APIView):
    """
    Retrieve, update or delete a snippet instance.
    """
    def get_object(self, pk,**kwargs):
        try:
            return AddCart.objects.get(cartID=pk)
        except AddCart.DoesNotExist:
            raise Http404

    def get(self, request, pk, format=None):
        CartView = AddCart.objects.filter(cartID=pk)
        serializer = AddCartSerializer(CartView, many=True)
        return Response(serializer.data)

    def put(self, request, pk, format=None):
        CartView = self.get_object(pk)
        serializer = AddCartSerializer(CartView, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk, format=None):
        CartView = self.get_object(pk)
        CartView.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

class updateQuantity(APIView):
    def get_object(self, pk):
        try:
            return AddCart.objects.get(cartID=pk)
        except AddCart.DoesNotExist:
            raise Http404

    def get(self, request, pk, format=None):
        CartView = AddCart.objects.filter(cartID=pk)
        serializer = AddCartSerializer(CartView, many=True)
        return Response(serializer.data)

    def get(self,request,pk,format=None):
        CartViews = AddCart.objects.filter(cartID=pk)
        serializer = UpdateCartSerializer(CartViews,many=True)
        return Response(serializer.data)

    def put(self,request,pk,format=None):
        CartViews = self.get_object(pk)
        serializer = UpdateCartSerializer(CartViews,data=request.data)        
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk, format=None):
        CartView = self.get_object(pk)
        CartView.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)