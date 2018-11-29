#Step1
FROM node:alpine

#Step2
WORKDIR '/app'

#Step3
COPY package.json .
RUN npm install
COPY . .

#Step4
CMD ["npm", "start"]