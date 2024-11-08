run:
	uvicorn shortener_app.main:app --reload

lint:
	ruff check . && ruff check . --diff

format:
	ruff check . --fix && ruff format .