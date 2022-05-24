# blog_flask_with_selenium_tests

## Create venv using poetry
```bash
poetry install
poetry shell
```

## Create database and add test data
```bash
python init_db.py
```

## Using .env для настройки окружения
```
FLASK_APP=app
FLASK_ENV=development
SECRET_KEY='your secret key'
```

## Launch application using console
```bash
python app.py
```