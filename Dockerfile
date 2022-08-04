FROM node:lts-slim

ARG VERSION=1.0.20
ADD https://forum.netonix.com/netonix-manager/netonix-manager_1.0.20_all.deb /
RUN dpkg -i --ignore-depends=nodejs /netonix-manager_1.0.20_all.deb && rm /netonix-manager_1.0.20_all.deb

EXPOSE 3443

WORKDIR /opt/netonix-manager
ENV NODE_ENV=production
#CMD ["node", "bootstrap.js"]
CMD ["node", "app.js"]

