#/bin/zsh

# kubectl delete deployment web-vroumvroum-deployment
# kubectl delete deployment db-vroumvroum-deployment
# kubectl delete svc db-vroumvroum-svc
# kubectl delete svc web-vroumvroum-svc

kubectl apply -f db-vroumvroum-svc.yaml 
kubectl apply -f db-vroumvroum-deployment.yaml
sleep 5 # wait for db svc to be ready
kubectl apply -f web-vroumvroum-svc.yaml      
kubectl apply -f web-vroumvroum-deployment.yaml
