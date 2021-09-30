FROM python:3.8-slim
WORKDIR /flaskapp
COPY . .
RUN pip install -r requirements.txt && pip install waitress
#CMD ["waitress-serve","--port=5000","app:app"]
#CMD ["gunicorn", "app:app", "-c", "./gunicorn.conf.py"]
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0","--port=5000"]