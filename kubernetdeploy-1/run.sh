echo "Deploy Apache Server for onde replica/pod"
kubectl create deployment --image=httpd my-apache
echo "Scale it up with another pod"
kubectl scale deployment/my-apache --replicas 2
kubectl get all
echo "Inspect logs"
kubectl logs deploy/my-apache
kubectl logs deploy/my-apache --follow --tail 10
echo "Get all pods summary"
kubectl get pods
kubectl describe pod/my-apache-7b68fdd849-5hkz4
