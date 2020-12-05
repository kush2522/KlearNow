apiVersion: v1
kind: Service
metadata:
  name: my-flask-service
spec:
  selector:
    app: my-flask
  ports:
  - protocol: "TCP"
    port: 6000
    targetPort: 5000
  type: LoadBalancer
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-flask
spec:
  selector:
    matchLabels:
      app: my-flask
  replicas: 2
  template:
    metadata:
      labels:
        app: my-flask
    spec:
      containers:
      - name: my-flask
        image: 670853499222.dkr.ecr.us-east-2.amazonaws.com/my-flask
        ports:
        - containerPort: 5000
