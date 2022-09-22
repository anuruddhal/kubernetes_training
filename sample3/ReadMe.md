kubectl create -f deployment.yaml
kubectl create -f service.yaml

kubectl create -f service_nodeport.yaml


kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.2/deploy/static/provider/cloud/deploy.yaml



kubectl create ingress demo-localhost --class=nginx --rule="demo.localdev.me/*=demo:80"
kubectl port-forward --namespace=ingress-nginx service/ingress-nginx-controller 8080:80