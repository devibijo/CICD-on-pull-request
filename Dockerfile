# Use official Playwright base image
FROM mcr.microsoft.com/playwright:v1.56.1-noble

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy test files
COPY . .

CMD ["./ci/playwright_job.sh"]
