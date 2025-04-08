# 使用 node:20 作为基础镜像
FROM nginx:alpine

# 将构建的前端文件复制到 Nginx 的默认目录
COPY build /usr/share/nginx/html

# 将自定义的 nginx 配置文件复制到容器中
COPY nginx.conf /etc/nginx/conf.d/default.conf


# 暴露端口
EXPOSE 80 30018

# 启动 nginx
CMD ["nginx", "-g", "daemon off;"]

