
from django.shortcuts import render,HttpResponse
import requests
# Create your views here.
def log(request):
    return render(request,'login.html')

def home(request):
    #return HttpResponse("<h1>Hello World</h1>");
    url="https://codingshika.com/UMANG/API/rd_passbook_list.php?id=5"
    res=requests.get(url,headers={"User-Agent":"XY"})
    data=res.json()
    #print(data)
    sts=data['posts']['status']
    rd=data['posts']['post']
    return render(request,'index.html',{'sts':sts,'rdamt':rd})
def about(request):
    return HttpResponse("<h1>About Us</h1>")
def sqr(request):
    n=int(request.GET["num"])
    return render(request, "welcome.html",{'ans':n*n})


def login(request):
    mob=request.GET["mob"]
    url="https://codingshika.com/UMANG/API/admin_login.php?mobile="+mob
    res=requests.get(url,headers={"User-Agent":"XY"})
    data=res.json()
    #print(data)
    sts=data['posts']['status']
    if(sts=="200"):
        return render(request, "index.html")
    else:
        return render(request, "login.html")
