# -------------------------------
# Devcontainer Dockerfile
# -------------------------------

# Base image
FROM ubuntu:22.04

# Avoid interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# -------------------------------
# 1️⃣ Install basic dev tools
# -------------------------------
RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    git \
    vim \
    wget \
    unzip \
    apt-transport-https \
    ca-certificates \
    gnupg \
    lsb-release \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# -------------------------------
# 2️⃣ Install OpenJDK 21
# -------------------------------
RUN apt-get update && apt-get install -y openjdk-21-jdk && rm -rf /var/lib/apt/lists/*

# -------------------------------
# 3️⃣ Install Maven
# -------------------------------
RUN apt-get update && apt-get install -y maven && rm -rf /var/lib/apt/lists/*

# -------------------------------
# 4️⃣ Install Node.js (default Ubuntu version)
# -------------------------------
RUN apt-get update && apt-get install -y nodejs npm && rm -rf /var/lib/apt/lists/*

# Optional: for latest Node.js LTS, you can use NodeSource
# RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
#     && apt-get install -y nodejs

# -------------------------------
# 5️⃣ Install Docker + Docker Compose plugin
# -------------------------------
RUN mkdir -p /etc/apt/keyrings \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
       | tee /etc/apt/sources.list.d/docker.list > /dev/null \
    && apt-get update \
    && apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin \
    && rm -rf /var/lib/apt/lists/*

# Add root to docker group to run Docker without sudo
RUN usermod -aG docker root

# -------------------------------
# 6️⃣ Install lsof for port checks
# -------------------------------
RUN apt-get update && apt-get install -y lsof && rm -rf /var/lib/apt/lists/*

# -------------------------------
# 7️⃣ Set workspace folder
# -------------------------------
WORKDIR /workspace

# -------------------------------
# 8️⃣ Verify installations (optional, for debugging)
# -------------------------------
# RUN java -version
# RUN mvn -version
# RUN node -v
# RUN npm -v
# RUN docker version
# RUN docker compose version
