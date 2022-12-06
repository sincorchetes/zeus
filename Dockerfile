FROM python:3.11-alpine
ADD app /app
RUN pip install -r /app/requirements/devel.txt
EXPOSE 8080
WORKDIR /app
CMD ["/usr/local/bin/uvicorn","main:app","--host", "0.0.0.0", "--port","8080","--reload"]
