from django.shortcuts import render
from rest_framework import generics, serializers
from .models import News
from .serializers import NewsSerializer


# Create your views here.
#GET POST UPDATE DELETE


class NewsGetCreate(generics.ListCreateAPIView):
    queryset = News.objects.all()
    serializer_class = NewsSerializer

class NewsUpdateDelete(generics.RetrieveUpdateDestroyAPIView):
    queryset = News.objects.all()
    serializer_class = NewsSerializer











