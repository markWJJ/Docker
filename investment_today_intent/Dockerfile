FROM registry.docker-cn.com/library/ubuntu:16.04
MAINTAINER junjiang
RUN apt-get update && \
    apt-get -y install \
    python3 \
    supervisor \
    python3-pip
RUN mkdir /Intent_Dtection
RUN mkdir -p /var/log/stdout
RUN mkdir -p /var/log/stderr
WORKDIR /Intent_Dtection
COPY ./Intent_Dtection/requirements.txt ./
RUN pip3 install --upgrade
RUN pip3 install -r requirements.txt -i https://pypi.douban.com/simple
ENV LANG C.UTF-8
CMD python3 model/ml_model/intent_ml.py
COPY ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./Intent_Dtection ./
#RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 150
CMD ["/usr/bin/supervisord"]

