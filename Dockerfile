FROM python:3.8-slim
WORKDIR /flaskapp
COPY . .
RUN pip install -r requirements.txt && pip install waitress
CMD ["waitress-serve","--port=8008","app:app"]
#ENTRYPOINT ["flask"]
#CMD ["python","--host=0.0.0.0" ]