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

Un service sert à exposer une application réseau qui est exécutée sur un ou plusieurs pods. Un ClusterIP expose le service de manière interne au cluster avec des adresses IP internes. C'est utile pour la communication interne entre différents composants d'une application déployée dans le cluster. Par exemple, un service back-end accessible uniquement par un front-end qui est dans le même cluster. Là où un NodePort expose l'applications de manière extene en ouvrant un port spécifique sur chaque noeud du cluster. Ce port redirige le trafic vers le service Kubernetes, qui à son tour redirige le trafic vers les Pods.

<img src="https://github.com/Shazbg/Antivol/blob/main/Shazir/defi2.drawio.png?raw=true">