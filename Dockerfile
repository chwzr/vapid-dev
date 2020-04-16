FROM registry.access.redhat.com/ubi8/nodejs-12
LABEL maintainer felix@koppe.design
RUN npm install -g @vapid/cli
RUN vapid new /opt/app-root/src/vapid
WORKDIR /opt/app-root/src/vapid
COPY ./VapidProduction/Dockerfile /opt/app-root/src/vapid/Dockerfile
EXPOSE 3000
CMD ["vapid", "start", "."]