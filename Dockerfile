FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/TechTitan27/Queen_Trudy-Md /root/TechTitan27

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/TechTitan27/node_modules

# Install dependencies
WORKDIR /root/TechTitan27 
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
