FROM image-registry.openshift-image-registry.svc:5000/openshift/python:3.9-ubi9
WORKDIR /app

COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD ["python","app.py"]