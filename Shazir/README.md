## Kubernetes

# Défi 1

kubectl create deployment defi1 --image=xhelozs/csc8567:v1
kubectl get pods
kubectl port-forward pods/defi1-bc65795db-sb9qk 8002:5000

<img src="https://github.com/Shazbg/Antivol/blob/main/defi1/Schema_defi_1.png?raw=true" alt="Défi 1">

# Défi 2

kubectl apply -f csc8567-deployment.yaml
kubectl apply -f csc8567-service.yaml
http://127.0.0.1:8001/api/v1/namespaces/u-895md/services/csc8567-service/proxy/

