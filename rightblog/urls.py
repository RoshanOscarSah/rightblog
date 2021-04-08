"""rightblog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import include,path
from users import views

urlpatterns = [
    path('admin/', admin.site.urls),

    path('', views.index),
    path('index', views.index),
    path('blog/<id>', views.blog),
    path('page-about', views.about),
    path('page-contact', views.contact),
    path('login', views.login),
    path('creator', views.creator),
    path('signupform', views.signupform),
    path('loginform', views.loginform),
    path('logout', views.logout1),
    path('creatorupload', views.creatorupload),
    path('commentform', views.commentform1),
    path('deleteblog', views.deleteblog),
    path('updateblog', views.updateblog),
]
