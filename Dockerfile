# 使用适用于多架构的 Python 基础镜像
FROM python:3.11-slim

# 设置工作目录
WORKDIR /app

# 将应用所需的文件复制到容器中
COPY . /app

# 安装应用依赖
RUN pip install --no-cache-dir fastapi uvicorn

# 暴露应用运行的端口
EXPOSE 8000

# 启动 FastAPI 应用
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
