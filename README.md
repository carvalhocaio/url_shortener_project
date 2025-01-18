# URL Shortener API

Este é um projeto de API de encurtador de URL construído com FastAPI e SQLAlchemy.

## Requisitos

- Python 3.8+
- FastAPI
- SQLAlchemy
- Uvicorn
- Pydantic
- Validators

## Instalação

1. Clone o repositório:

```sh
git clone https://github.com/carvalhocaio/url_shortener_project
cd url_shortener_project
```

2. Crie um ambiente virtual e ative-o:

```sh
python -m venv .venv
source venv/bin/activate  # No Windows use `venv\Scripts\activate`
```

3. Instale as dependências:

```sh
pip install -r requirements.txt
```

## Configuração

Crie um arquivo .env na raiz do projeto e adicione as seguintes variáveis de ambiente:

```sh
ENV_NAME=Local
BASE_URL=http://localhost:8000
DB_URL=sqlite:///./shortener.db
```

## Executando a Aplicação

Para iniciar a aplicação, execute o comando:

```sh
make run
```

A API estará disponível em `http://localhost:8000`.

## Endpoints

- `GET /`: Retorna uma mensagem de boas-vindas.
- `POST /url`: Cria uma nova URL encurtada.
- `GET /{url_key}`: Redireciona para a URL original.
- `GET /admin/{secret_key}`: Retorna informações administrativas sobre a URL encurtada.
- `DELETE /admin/{secret_key}`: Deleta a URL encurtada.

---