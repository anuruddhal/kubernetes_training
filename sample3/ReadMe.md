# Deploy service
kubectl create -f deployment.yaml

# Acess via nodeport
kubectl create -f service_nodeport.yaml

# Access via ingress
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.2/deploy/static/provider/cloud/deploy.yaml
kubectl create -f service.yaml
kubectl create -f ingress.yaml

# Clean up
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.2/deploy/static/provider/cloud/deploy.yaml