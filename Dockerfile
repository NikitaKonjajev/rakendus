# Используем официальный Node.js образ
FROM node:14

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и устанавливаем зависимости
COPY package*.json ./
RUN npm install

# Копируем весь код приложения
COPY . .

# Открываем порт
EXPOSE 3000

# Запускаем приложение
CMD ["node", "app.js"]

