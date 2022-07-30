kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f reverseproxy-deployment.yaml

kubectl apply -f backend-feed-service.yaml
kubectl apply -f backend-user-service.yaml
kubectl apply -f frontend-service.yaml
kubectl apply -f reverseproxy-service.yaml

kubectl expose deployment frontend --type=LoadBalancer --name=publicfrontend --port 80
kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy