#Expose kubernets ports

1. ClusterIP(default): single, internet virtual ip, use only within cluster (nodes,pods)
2. NodePort: high port allocated, port is open on every node IP, anyone can connect
3. LoadBalancer: only available when infra provider gives you, creates PodePort+ClusterIP services
4. ExternalName: adds CNAME DNS record to CoreDNS only, give pods a DNS name for use outside Kubernetes