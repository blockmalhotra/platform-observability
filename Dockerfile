# MemeBot prod container (Phase5)
FROM python:3.12-slim

WORKDIR /app
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    DRY_RUN=true

# system
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy source (data/logs mounted as vol)
COPY . .

# nonroot
RUN useradd -m botuser && chown -R botuser:botuser /app
USER botuser

VOLUME ["/app/data", "/app/logs"]

# default dry
ENTRYPOINT ["python", "main.py"]
# For live: override env + pass passphrase via VAULT_PASSPHRASE_FILE or interactive (tty)
