FROM python:3-slim
ADD python3.sh fetch.py /root/
WORKDIR /root/
RUN pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib && \
    chmod +x /root/python3.sh
CMD /bin/sh -c /root/python3.sh
