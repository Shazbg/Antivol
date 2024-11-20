## Kubernetes

# Défi 1

kubectl create deployment defi1 --image=xhelozs/csc8567:v1  
kubectl get pods  
kubectl port-forward pods/defi1-bc65795db-sb9qk 8002:5000  

<img src="https://github.com/Shazbg/Antivol/blob/main/defi1/Schema_defi_1.png?raw=true" alt="Défi 1">

# Défi 2

kubectl apply -f csc8567-deployment.yaml -n u-mssxs  
kubectl apply -f csc8567-service.yaml -n mssxs  
http://127.0.0.1:8001/api/v1/namespaces/u-mssxs/services/csc8567-service/proxy/    

Un service sert à exposer une application réseau qui est exécutée sur un ou plusieurs pods.   

Un ClusterIP expose le service de manière interne au cluster avec des adresses IP internes. C'est utile pour la communication interne entre différents composants d'une application déployée dans le cluster. Par exemple, un service back-end accessible uniquement par un front-end qui est dans le même cluster. Là où un NodePort expose l'applications de manière extene en ouvrant un port spécifique sur chaque noeud du cluster. Ce port redirige le trafic vers le service Kubernetes, qui à son tour redirige le trafic vers les Pods.

<img src="https://github.com/Shazbg/Antivol/blob/main/Shazir/defi2.drawio.png?raw=true">

# Défi 3


Quelle critique pouvez-vous donner vis-à-vis de l'utilisation d'un Pod pour la base de données ?  

L'utilisation d'un seul pod est dangereux pour une base de données, dans le cas où celui-ci crash, le site web serait alors accessible et on ne profite en aucun cas de toute la résilience que peut apporter Kube.

Sur quel type de ressource KubeDNS crée des entrées ? Quelle information propre a la ressource est utilisée ?

KubeDNS se base sur le nom et namespaces des services et pods pour créer des entrées DNS 

Différence avec un Deployment :
Deployment : Utilisé pour des applications stateless où l'identité des pods et la persistance des données ne sont pas importantes. Les pods sont répliqués de manière interchangeable.
StatefulSet : Conçu pour des applications stateful où l'identité et l'état des pods sont essentiels. Les pods sont créés dans un ordre spécifique, avec des volumes persistants individuels, et leur identité est conservée à travers les redémarrages.

<img src="https://github.com/Shazbg/Antivol/blob/main/Shazir/defi3.png?raw=true">

# Défi 4 

Rajout de l'ingress pour rendre le site accessible depuis internet sans proxy Kube.

<img src="https://github.com/Shazbg/Antivol/blob/main/Shazir/defi4.png?raw=true">

# Défi 5

Séparation des images Docker (public, api), création de nouveaux déploiements avec leur service + modification de l'ingress vers les services respectifs.

<img src="https://github.com/Shazbg/Antivol/blob/main/Shazir/defi5.drawio.png?raw=true">

# Défi 6 

helm install vroumvroum ./vroumvroum


# Défi 7 

Un statefulset apporte une persistance des données dans les pods, ce qui est fort utile dans le cas d'une base de données, lié à un PVC, il permet de conserver les données de la base de données même lorsque le pod de la BDD crash. 

Un service Headless est un service ClusterIP auquel on force la non-attribution d'une IP au cluster. Le routage vers ce type de service repose uniquement sur le service DNS. Il permet d'accéder individuellement à chaque pod, utile dans le cas où chaque instance doit pouvoir communiquer à chaque noeud d'un cluster.

<img src="https://github.com/Shazbg/Antivol/blob/main/Shazir/defi7.drawio.png?raw=true">