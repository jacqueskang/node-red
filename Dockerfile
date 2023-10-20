FROM nodered/node-red:3.1.0-16

COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --omit=dev
RUN rm -rf /var/lib/apt/lists/*

COPY settings.js /

CMD ["--settings", "/settings.js"]
