# Use official Playwright base image
FROM mcr.microsoft.com/playwright:v1.43.1

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy test files
COPY . .

RUN chmod +x playwright-job.sh

CMD ["./playwright-job.sh"]
