#Samples from Udemy course Docker Mastery: with Kubernetes +Swarm from a Docker Captain

- Notes:
-  Dockerfile: https://12factor.net
-   * Make it secure: dockersecurity-1
-   * Dont't use :latest versions
-   * Dont't leave default config.
-   * Make it start
-   * Make it log all stdout/stderr
-   * Make documentation
-   * Make it work in linux env.
-   * Make it lean/smallest possible
-   * Make it scalable
-   * https://cve.mitre.org
-   * CMD vs ENTRYPOINT:
-   * Use ENTRYPOINT if you don't want developers to change the executable that is run when the container starts. You can think of your container as an "executable wrapper"
-   * Use only CMD (with no ENTRYPOINT) if you want developers the ability to easily override the executable that is being run.

-   Kubernets:
    * Deployment auto creates ReplicaSet
    * kubectl run -> single node, to delete kubectl delete pod my-pod
    * kubectl create deployment --image=httpd my-apache -> similar to docker service