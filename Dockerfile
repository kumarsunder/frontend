# Use the base Image Node js Image
FROM node:14.17.0

#Set Workin Directory
WORKDIR /app

#Copy the package json and package-lock.json files and install dependencies
COPY package*.json ./
RUN npm install

#copy source code into the container
COPY . .

#Build the React JS application
RUN npm run build

#Expose thr port on which the frontend server listen
EXPOSE 3000
#Start the frontend server
CMD ["npm", "start"]
