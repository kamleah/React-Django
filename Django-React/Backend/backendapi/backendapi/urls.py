from django.contrib import admin
from django.urls import path
from api import views
from django.conf.urls.static import static
from django.conf import settings
from rest_framework_jwt.views import obtain_jwt_token
from knox import views as knox_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.UserRegistration.as_view()),
    path('books/',views.ShopList.as_view()),
    path('books/<int:pk>/',views.ShopDetail.as_view()),
    path('addproduct/',views.ProductList.as_view()),
    path('viewproduct/<int:pk>/',views.ProductDetail.as_view()),
    path('viewproductdetails/<int:pk>/<int:productID>/',views.ProductDetailView.as_view()),
    path('cart/',views.AddToCart.as_view()),
    path('cartview/<int:pk>/',views.CartView.as_view()),
    path('cartviewss/<int:pk>/',views.updateQuantity.as_view()),
    path('register/', views.RegisterAPI.as_view(), name='register'),
    path('login', views.LoginAPI.as_view(), name='login'),
    path('logout', knox_views.LogoutView.as_view(), name='logout'),
    path('logoutall/', knox_views.LogoutAllView.as_view(), name='logoutall'),


    

]

if settings.DEBUG is True:
    urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)