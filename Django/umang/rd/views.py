from django.shortcuts import render
from django.http import HttpResponse
import requests

# Create your views here.
def log(request):
    return render(request,'login.html')

def login(request):
    mob = request.GET['mob']
    url = "https://codingshika.com/UMANG/API/admin_login.php?mobile="+mob
    res = requests.get(url, headers={"User-Agent":"XY"})
    data = res.json()
    sts = data['posts']['status']
    if(sts=="200"):
        # url = "https://codingshika.com/UMANG/API/rd_passbook_list.php?id=5"
        # res = requests.get(url, headers={"User-Agent":"XY"})
        # data = res.json()
        # rddata = data['posts']['post']
        # return render(request,'index.html',{'rddata':rddata});
        return home(request)
    else:
        return render(request,'login.html')

def home(request):
    url = "https://codingshika.com/UMANG/API/rd_passbook_list.php?id=5"
    res = requests.get(url, headers={"User-Agent":"XY"})
    data = res.json()
    rddata = data['posts']['post']
    return render(request,'index.html',{'rddata':rddata});



