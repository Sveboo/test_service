# Берем нужный базовый образ
FROM python:3.9
# Копируем все файлы из текущей директории в /app контейнера
COPY app/ /app
COPY requirements.txt /app
# Устанавливаем все зависимости
RUN pip install -r /app/requirements.txt --no-cache-dir
# Выполнить
# Говорим контейнеру какой порт слушай
EXPOSE 8080
RUN cat app/main.py
# Запуск нашего приложения при старте контейнера
CMD python app/main.py
