FROM python:3.8-slim
WORKDIR /flaskapp
COPY . .
RUN pip install -r requirements.txt && pip install waitress
CMD ["waitress-serve","app:app"]
EXPOSE 5000
#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0","--port=5000"]