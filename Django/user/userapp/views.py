from django.shortcuts import render
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
        return home(request)
    else:
        return render(request,'login.html')

def home(request):
    url = "https://codingshika.com/APP/WS_API/select_test.php"
    res = requests.get(url, headers={"User-Agent":"XY"})
    data = res.json()
    userdata = data['posts']['post']
    return render(request,'index.html',{'userdata':userdata});

def user(request):
    # val = request.POST["v"]
    # if(val == "del"):
    #     id = request.POST["id"]
    #     url = "https://codingshika.com/APP/WS_API/delete_test.php?id="+id
    #     res = requests.get(url, headers={"User-Agent":"XY"})
    #     data = res.json()
    #     sts = data['posts']['status']
    #     if(sts == "200"):
    #         return home(request)
    # else:
        nm = request.POST["nm"]
        email = request.POST["email"]
        addr = request.POST["address"]
        url = "https://codingshika.com/APP/WS_API/insert_test.php?name="+nm+"&email="+email+"&addr="+addr
        res = requests.get(url, headers={"User-Agent":"XY"})
        data = res.json()
        sts = data['posts']['status']
        if(sts == "200"):
            return home(request)

def userdel(request):
    # val = request.POST["del"]
    # if(val == "delete"):
    id = request.POST.get["id"]
    url = "https://codingshika.com/APP/WS_API/delete_test.php?id="+id
    res = requests.get(url, headers={"User-Agent":"XY"})
    data = res.json()
    sts = data['posts']['status']
    if(sts == "200"):
        return home(request)


