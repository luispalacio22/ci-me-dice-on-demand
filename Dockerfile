FROM python:3.8-slim
WORKDIR /flaskapp
COPY . .
RUN pip installl -r requirements.txt && pip install waitress
CMD ["waitress-serve","--port=5000","app:app"]