FROM python:3.9
COPY app/ /app
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt --no-cache-dir
# какой порт слушаем по default
EXPOSE 8080
CMD python app/main.py