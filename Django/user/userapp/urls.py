from django.urls import path
from . import views

urlpatterns = [
    path("",views.log,name="log"),
    path("login",views.login,name="login"),
    path("home",views.home,name="home"),
    path("user",views.user,name="user"),
    path("userdel",views.userdel,name="userdel"),
]