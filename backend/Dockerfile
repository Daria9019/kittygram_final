# Dockerfile для сервиса backend
# Используем базовый образ с Python 3.9
FROM python:3.9

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем requirements.txt внутрь контейнера
COPY ./backend/requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы проекта внутрь контейнера
COPY ./backend/ .

# Копируем скрипт entrypoint.sh внутрь контейнера и устанавливаем права на выполнение
COPY ./backend/entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Выполняем команды при запуске контейнера
ENTRYPOINT ["/app/entrypoint.sh"]
