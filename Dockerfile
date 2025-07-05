FROM image-registry.openshift-image-registry.svc:5000/openshift/python:3.9-ubi9
WORKDIR /app

COPY . .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
#CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--forwarded-allow-ips=*", "--proxy-headers", "app:app"]
