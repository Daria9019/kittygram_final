# Используем официальный образ Python 3.9
FROM python:3.9

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем requirements.txt внутрь контейнера
COPY requirements.txt .

# Устанавливаем зависимости из requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все остальные файлы проекта внутрь контейнера
COPY . .

# Добавим команду для установки прав на скрипт entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Запускаем команду для запуска приложения при старте контейнера
CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]
