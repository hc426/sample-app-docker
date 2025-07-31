FROM python:3.12.11

#This is just documentation to tell the person
#I'm going to brown on port 80 docker
EXPOSE 3000

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

#First is where I am, second is the /app
COPY . .    

#Only when someone starts then start the program here, fixed 
ENTRYPOINT ["python", "app.py"]

