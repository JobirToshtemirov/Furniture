FROM python:3.11
LABEL maintainer="furniture"

ENV PYTHONUNBUFFERED = 1

COPY ./requirements.txt /app/requirements.txt
RUN python -m venv venv && \
    venv/bin/pip install --upgrade pip && \
    venv/bin/pip -r /app/requirements.txt && \
    adduser --disabled-password  --gecos "" django-user && \
    chown -R django-user:django-user /app


USER django-user


COPY ./ /app
WORKDIR /app

 ENV PATH="/venv/bin:$PATH"

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

