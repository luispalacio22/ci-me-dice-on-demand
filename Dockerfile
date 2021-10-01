FROM python:3.8-slim
WORKDIR /flaskapp
COPY . .
RUN pip install -r requirements.txt && pip install waitress
EXPOSE 5000
CMD ["waitress-serve","app:app"]
#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0","--port=5000"]