#/bin/zsh

kubectl delete deployment web-vroumvroum-deployment -n u-mssxs
kubectl delete deployment db-vroumvroum-deployment -n u-mssxs
kubectl delete svc db-vroumvroum-svc -n u-mssxs
kubectl delete svc web-vroumvroum-svc -n u-mssxs
kubectl delete ingress web-vroumvroum-ingress -n u-mssxs

kubectl apply -f db-vroumvroum-svc.yaml -n u-mssxs
kubectl apply -f db-vroumvroum-deployment.yaml -n u-mssxs
sleep 5 # wait for db svc to be ready
kubectl apply -f web-vroumvroum-svc.yaml -n u-mssxs      
kubectl apply -f web-vroumvroum-deployment.yaml -n u-mssxs
kubectl apply -f web-vroumvroum-ingress.yaml -n u-mssxs
