FROM ubuntu:latest
RUN ["/bin/apt", "update"]
RUN ["/bin/apt", "--fix-missing", "update"]
RUN ["/bin/apt", "install", "-y", "nmap"]
RUN ["/bin/apt", "install", "-y", "ncat"]
RUN ["/bin/apt", "--fix-missing", "update"]
RUN ["/bin/apt", "-y", "upgrade"]
RUN ["/bin/apt", "install", "-y", "wireshark"]
RUN ["/bin/apt", "install", "-y", "ssh"]
RUN ["/bin/apt", "install", "-y", "netcat"]
RUN ["/bin/apt", "--fix-missing", "update"]
RUN ["/bin/apt", "-y", "upgrade"]
RUN ["/bin/apt", "install", "-y", "golang"]
RUN ["/bin/apt", "install", "-y", "fcrackzip"]
RUN ["/bin/apt", "install", "-y", "tmux"]
RUN ["/bin/apt", "install", "-y", "iputils-ping"]
RUN ["/bin/apt", "install", "-y", "iproute2"]
RUN ["/bin/mkdir", "/root/reverseshells"]
COPY php-reverse-shell.php /root/reverseshells
RUN ["/bin/mkdir", "/root/gostuff"]
WORKDIR "/root/gostuff"
RUN ["/bin/go", "mod", "init", "github.com/OJ/gobuster"]
RUN ["/bin/go", "get", "github.com/OJ/gobuster/v3@latest"]
ENV PATH="/root/go/bin:$PATH"
WORKDIR "/root"