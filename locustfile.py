import time
from locust import  HttpUser, task, between

class MyUser(HttpUser):
  host = r'https://demowebapp.azurewebsites.net:443/predict'

  @task
  def prediction(self):
    post_data = {
        "CHAS":{
            "0":0
        },
        "RM":{
            "0":6.575
        },
        "TAX":{
            "0":296.0
        },
        "PTRATIO":{
            "0":15.3
        },
        "B":{
            "0":396.9
        },
        "LSTAT":{
            "0":4.98
        }
    }
    
    post_headers = {r'Content-Type': r'application/json'}


    response = self.client.request(method='POST',path=self.host,json=post_data )
