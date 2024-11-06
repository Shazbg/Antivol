#/bin/zsh

kubectl delete deployment web-vroumvroum-deployment
kubectl delete statefulset db-vroumvroum-statefulset
kubectl delete svc db-vroumvroum-svc
kubectl delete svc web-vroumvroum-svc
kubectl delete pvc postgres-storage-db-vroumvroum-statefulset-0

kubectl apply -f db-vroumvroum-svc.yaml 
kubectl apply -f db-vroumvroum-statefulset.yaml
sleep 5 # wait for db svc to be ready
kubectl apply -f web-vroumvroum-svc.yaml      
kubectl apply -f web-vroumvroum-deployment.yaml
