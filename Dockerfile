# استفاده از Node.js 20
FROM node:20

# نصب Supervisor
RUN apt-get update && apt-get install -y supervisor && rm -rf /var/lib/apt/lists/*

# تنظیم دایرکتوری کاری و کپی کردن فایل‌ها
WORKDIR /app
COPY package*.json ./
COPY . .

# نصب پکیج‌های موردنیاز Node.js
RUN npm install

# کپی کانفیگ Supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# تنظیم Supervisor به عنوان entrypoint
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
