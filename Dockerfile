FROM node:16



# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json /
# Bundle app source
COPY index.js /

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

CMD npm run start
