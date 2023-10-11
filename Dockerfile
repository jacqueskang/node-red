FROM nodered/node-red:3.1.0-16

COPY settings.js /

CMD ["--settings", "/settings.js"]
