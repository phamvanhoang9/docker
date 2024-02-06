FROM python:3.9-slim
COPY . /usr/app/
EXPOSE 8501
WORKDIR /usr/app/
RUN pip install --upgrade pip setuptools wheel && \
    pip install --no-cache-dir -r requirements.txt
CMD ["python", "flask_api.py"]
