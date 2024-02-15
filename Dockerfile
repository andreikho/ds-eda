FROM quay.io/jupyter/datascience-notebook:2024-01-15

USER root

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

USER $NB_UID

CMD ["start-notebook.sh"]
