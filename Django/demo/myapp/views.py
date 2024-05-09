from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def home(request):
    # return HttpResponse("<h1>Welcome To Django Web Framework</h1>")
    return render(request,'home.html')

def about(request):
    # return HttpResponse("<h1>About us</h1>")
    return render(request,'about.html')

def contact(request):
    # return HttpResponse("<h1>Contact us</h1>")
    return render(request,'contact.html')

def getdata(request):
    nm = request.GET['nm']
    mobile = request.GET['mobile']
    return render(request,'welcome.html',{'mynm':nm,'mob':mobile})