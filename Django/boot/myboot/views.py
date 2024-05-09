from django.shortcuts import render
from django.http import HttpResponse
import requests

# Create your views here.
def home(request):
    		# return HttpResponse("Hello World");
            url = "https://api.rootnet.in/covid19-in/hospitals/beds"
            res = requests.get(url)
            data = res.json()
            ruralHospital = data['data']['summary']['ruralHospitals']
            ruralBed = data['data']['summary']['ruralBeds']
            region = data['data']['regional']
            return render(request,'index.html',{'ruralHospital':ruralHospital,'ruralBed':ruralBed,'region':region});

