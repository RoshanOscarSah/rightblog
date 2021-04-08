from django.shortcuts import render, redirect
import random
from django.core.files.storage import FileSystemStorage
from django.contrib.auth.models import User,auth
from django.contrib.auth import logout
from django.core.mail import send_mail
from django.conf import settings
from django.contrib import messages
from users.models import creators
from users.models import comments


def index(request):
    creatorsa = creators.objects.all()
    return render(request, 'index.html', {'creatorsb':creatorsa})
def blog(request,id):
    count = comments.objects.all().count()
    creatorsa = creators.objects.all()
    blogid = creators.objects.get(id=id)
    commentsall = comments.objects.all()
    return render(request, 'blog.html', {'creatorsb':creatorsa,'blogid1':blogid, 'commentsalls':commentsall, 'count':count})
def about(request):
    creatorsa = creators.objects.all()
    return render(request, 'page-about.html', {'creatorsb':creatorsa})
def contact(request):
    creatorsa = creators.objects.all()
    return render(request, 'page-contact.html', {'creatorsb':creatorsa})
def login(request):
    creatorsa = creators.objects.all()
    if request.user.is_authenticated:
        return redirect('/creator')
    else:
        return render(request, 'login.html', {'creatorsb':creatorsa})
def creator(request):
    creatorsa = creators.objects.all()
    if request.user.is_authenticated:
        fullname= request.user.get_full_name()
        return render(request, 'creator.html', {'creatorsb':creatorsa, 'fullname':fullname})
    else:
        return redirect('/login')

def signupform(request):
    if request.method == "POST":
        username = request.POST['Susername']
        FirstName = request.POST['Sfname']
        LastName = request.POST['Slname']
        Email = request.POST['Semail']
        Password = request.POST['Spassword']

        if User.objects.filter(username=username).exists():
            messages.info(request,("Username already exist"))
            return redirect('/login')
        else:
            form = User.objects.create_user(username=username, first_name=FirstName, last_name=LastName, email=Email,
                                            password=Password)

            form.save()

            messages.info(request, ("Signup successful. please login"))
            return redirect('/login')
    else:
        return render(request, "/login")

def loginform(request):
    if request.method == "POST":
        Username = request.POST['cUsername']
        Password = request.POST['cPassword']

        user = auth.authenticate(username=Username, password=Password)
        if user is not None:
            auth.login(request, user)
            return redirect('/creator')
        else:
            messages.info(request,("Username or password does not match"))
            return redirect('/login')

    else:
        return render(request, "/login")

def logout1(request):
    logout(request)
    messages.info(request, ("logged out successfully"))
    return redirect('/login')

def creatorupload(request):
    if 'publish' in request.POST:
        if request.method == "POST":
            topic1 = request.POST['ctopic']
            discription1 = request.POST['cdiscription']
            category1 = request.POST['ccategory']
            user_image = request.FILES['cphoto']
            full_name1 = request.POST['cname']

            random_number = str(random.randrange(1, 999, 3))

            fs = FileSystemStorage();
            user_image_rename_image = full_name1 + "_" + random_number + "_" + user_image.name;
            fs.save(user_image_rename_image, user_image)

            p = creators(full_name=full_name1, topic=topic1, category=category1, image=user_image_rename_image,
                         discription=discription1)
            p.save()
            messages.info(request, ("Blog Published"))
            return redirect('/login')
        else:
            messages.info(request, ("Blog not Published"))
            return redirect('/login')
    elif 'update' in request.POST:
        if request.method == "POST":
            blog_id = request.POST['blog_id']
            form= creators.objects.get(id=blog_id)

            topic1 = request.POST['ctopic']
            discription1 = request.POST['cdiscription']
            category1 = request.POST['ccategory']
            user_image = request.FILES['cphoto']
            full_name1 = request.POST['cname']

            random_number = str(random.randrange(1, 999, 3))

            fs = FileSystemStorage();
            user_image_rename_image = full_name1 + "_" + random_number + "_" + user_image.name;
            fs.save(user_image_rename_image, user_image)

            form.topic = topic1
            form.discription= discription1
            form.category=category1
            form.image=user_image_rename_image
            form.full_name=full_name1

            form.save()
            messages.info(request, ("Blog Updated"))
            return redirect('/login')
        else:
            messages.info(request, ("Blog not updated"))
            return redirect('/login')


def commentform1(request):
        if request.method == "POST":
            comment = request.POST['bcomment']
            blog_id = request.POST['bid']
            full_name = request.POST['bfullname']

            if full_name is '':
                messages.info(request, ("Login to comment"))
                return redirect('/login')
            else:

                form = comments(comment=comment, blog_id=blog_id, full_name=full_name)
                form.save()
                messages.info(request, ("Comment successful"))
                return redirect('/blog/' + blog_id)

        else:
            return redirect('/')

def deleteblog(request):
    if request.method == "POST":
        blogid = request.POST['blogid']

        instance = creators.objects.get(id=blogid)
        instance.delete()
        messages.info(request, ("Blog Deleted"))
        return redirect('/creator')
    else:
        return redirect("/")

def updateblog(request):
    if request.method == "POST":
        blogid = request.POST['blogid']
        creatorsa = creators.objects.all()
        if request.user.is_authenticated:
            fullname = request.user.get_full_name()

        instance1 = creators.objects.get(id=blogid)
        messages.info(request, ("Update Your Blog"))
        return render(request,'creator.html',{'instance':instance1,'creatorsb':creatorsa, 'fullname':fullname})




