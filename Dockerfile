FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

# 安装 uv
RUN pip install uv -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . .
RUN uv sync --no-dev

ENTRYPOINT ["uv", "run", "tradingagents"]
