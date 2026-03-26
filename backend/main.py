# filename: backend/main.py
# 실행 : uv run fastapi dev main.py

from fastapi import FastAPI
import DBConnection

app = FastAPI()


@app.get("/")
def health_check():
    return {"status": "ok"}