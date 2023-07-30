FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Устанавливаем права на выполнение для entrypoint.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Копируем collected_static из backend внутрь контейнера
COPY backend/collected_static /app/collected_static

# Указываем entrypoint
ENTRYPOINT ["/entrypoint.sh"]
