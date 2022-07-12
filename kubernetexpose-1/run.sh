kubectl create deployment httpenv --image=bretfisher/httpenv
kubectl scale deployment/httpenv --replicas=5
kubectl expose deployment/httpenv --port 8888
kubectl get service
echo "Kubernetes NodePort"
kubectl expose deployment/httpenv --port 8888 --name httpenv-np --type NodePort
kubectl get services
curl localhost:portnumber
echo "Kubernetes Load Balancer"
kubectl expose deployment/httpenv --port 8888 --name httpenv-lb --type LoadBalancer
curl localhost:8888
echo "Clean up"
kubectl delete service/httpenv service/httpenv-np
kubectl delete service/httpenv-lb deployment/httpenv
echo "Namespaces"
kubectl get namespaces
