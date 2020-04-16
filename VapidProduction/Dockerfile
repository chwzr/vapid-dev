FROM registry.access.redhat.com/ubi8/nodejs-12 as build-stage
RUN npm install -g @vapid/cli
WORKDIR /opt/app-root/src/vapid
COPY . .
USER root
RUN chown -R default /opt/app-root/src/vapid
USER default
RUN vapid build .

FROM nginx:alpine as production-stage
COPY --from=build-stage /opt/app-root/src/vapid/dist /usr/share/nginx/html