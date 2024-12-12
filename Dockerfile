# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це Linux з попередньо встановленим python-3.13
FROM python:3.13-slim

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .

# Встановимо залежності всередині контейнера
RUN pip install -r requirements.txt

# Запустимо наш застосунок всередині контейнера
ENTRYPOINT ["python"]
CMD ["main.py"]




# Встановимо змінну середовища
#ENV APP_HOME /app

# Встановимо робочу директорію всередині контейнера
#WORKDIR $APP_HOME

# Скопіюємо інші файли в робочу директорію контейнера
#COPY . .

# Встановимо залежності всередині контейнера
# For common venv
#RUN pip install -r requirements.txt

# For POETRY 
#COPY poetry.lock $APP_HOME/poetry.lock
#COPY pyproject.toml $APP_HOME/pyproject.toml

#RUN pip install poetry
#RUN poetry config virtualenvs.create false && poetry install --only main

# Скопіюємо інші файли в робочу директорію контейнера
#COPY . .

# Позначимо порт, де працює застосунок всередині контейнера
#EXPOSE 5000

# Запустимо наш застосунок всередині контейнера
#ENTRYPOINT ["python"]
#CMD ["main.py"]