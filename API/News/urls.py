

from django.urls import path
from .views import NewsGetCreate, NewsUpdateDelete

urlpatterns = [
    path('', NewsGetCreate.as_view()),
    path('<int:pk>', NewsUpdateDelete.as_view())
]
