FROM python:3.11-bookworm

WORKDIR /app

COPY ./requirements.txt /app/

RUN pip install -r requirements.txt

RUN pip install jupyter

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
