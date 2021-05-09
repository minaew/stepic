from django.urls import path, re_path
from . import views

urlpatterns = [
    path('', views.test, name='test'),
    path('login/', views.test, name='test'),
    path('signup/', views.test, name='test'),
    re_path(r'^question/(\d+)/$', views.test, name='test'),
    path('ask/', views.test, name='test'),
    path('popular/', views.test, name='test'),
    path('new/', views.test, name='test')
]