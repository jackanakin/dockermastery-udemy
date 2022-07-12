# Docker security

- https://github.com/BretFisher/ama/issues/17

1. Using Docker: Running an app in a default-settings Docker Linux container greatly reduces your risk profile vs. just running that app on a full Linux VM OS.
2. Scan the hosts for proper Docker config: https://github.com/docker/docker-bench-security
3. Don't Expose the Docker TCP Socket to the Internet
4. Don't run apps in containers as root
- ../_EXAMPLES_DOCKERFILE/noroot/.Dockerfile
5. App and OS dependency scanning: Scan for CVE's in both your app dependencies (npm, pip, composer, etc.) and OS dependency's (apt, apk, yum)
6. Use minimal size images possible like alpine, debian and etc.
7. Enable "user namespaces" so even the root user in a container isn't really root on the host.
8. Watch containers for unusual behavior, like an exec command

## Namespaces
1. Namespaces provide the first and most straightforward form of isolation: processes running within a container cannot see, and even less affect, processes running in another container, or in the host system.
2. Each container also gets its own network stack, meaning that a container doesn’t get privileged access to the sockets or interfaces of another container. Of course, if the host system is setup accordingly, containers can interact with each other through their respective network interfaces — just like they can interact with external hosts. When you specify public ports for your containers or use links then IP traffic is allowed between containers. They can ping each other, send/receive UDP packets, and establish TCP connections, but that can be restricted if necessary.

## Control groups (Cgroups)
1. They implement resource accounting and limiting. They provide many useful metrics, but they also help ensure that each container gets its fair share of memory, CPU, disk I/O; and, more importantly, that a single container cannot bring the system down by exhausting one of those resources.