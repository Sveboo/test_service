# Берем нужный базовый образ
FROM python:3.9
# Копируем все файлы из текущей директории в /app контейнера
COPY ./app/main.py /app
# Устанавливаем все зависимости
RUN apk update && pip install -r /app/requirements.txt --no-cache-dir
# Выполнить
# Говорим контейнеру какой порт слушай
EXPOSE 8080
# Запуск нашего приложения при старте контейнера
CMD app/main
