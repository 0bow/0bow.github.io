FROM python:3.12.0-alpine3.18

LABEL maintainer="Hyoyoung Chang <hyoyoung@example.com>"

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# CMD ["sh"]
ENTRYPOINT ["pelican", "/site", "-r", "-l", "-b", "0.0.0.0"]
