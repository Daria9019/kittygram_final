FROM python:3.9 


WORKDIR /app 


COPY requirements.txt . 


RUN pip install --no-cache-dir -r requirements.txt 
 

COPY . . 

 
RUN python manage.py migrate 

RUN python manage.py collectstatic --noinput 


CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]