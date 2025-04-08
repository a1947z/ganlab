FROM node:8.17.0

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 直接复制本地的 node_modules
COPY node_modules ./node_modules

# 复制项目文件
COPY . .

# 设置执行权限（确保脚本可执行）
RUN chmod +x scripts/watch-demo

# 运行脚本
CMD ["sh", "-c", "./scripts/watch-demo --no-browser"]