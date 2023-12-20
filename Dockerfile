# Використання образу scratch як базового образу
FROM scratch

# Визначення аргументу APP_NAME та його значення за замовчуванням
ARG APP_NAME=my-go-app

# Створення робочої директорії
WORKDIR /app

# Копіювання скомпільованої програми до робочої директорії контейнера
COPY ${APP_NAME} /app/main

# Вказати, що контейнер слухатиме на порту 8080
EXPOSE 8080

# Команда для запуску додатку при старті контейнера з робочої директорії
CMD ["./main"]
