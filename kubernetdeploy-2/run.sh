echo "Simulate deployment"
kubectl create deployment test --image nginx --dry-run -o yaml
kubectl create job test --image nginx --dry-run -o yaml
kubectl expose deployment/test --port 80 --dry-run=client -o yaml

