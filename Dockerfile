FROM python:3-slim
COPY python3.sh fetch.py /root/
ENV CREDENTIALS=null
ENV TOKEN=null
WORKDIR /root/
RUN pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib && \
    chmod 700 /root/python3.sh && \
    echo $CREDENTIALS > /root/credentials.json && \
    echo $TOKEN > /root/token.pickle
CMD /bin/sh -c /root/python3.sh
