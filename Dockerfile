FROM python:3.8
WORKDIR /usr/bin

RUN pip install flask requests gunicorn gevent -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . .

CMD gunicorn run:app -c student_system_web/gunicorn.conf.py

