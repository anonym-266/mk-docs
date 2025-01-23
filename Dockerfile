# # Use the official Nginx image as the base
# FROM nginx:alpine

# # Install necessary packages
# RUN apk update && \
#     apk add --no-cache python3 py3-pip

# # Create a virtual environment
# RUN python3 -m venv /app/venv

# # Activate the virtual environment and install MkDocs, MkDocs Material, and regex
# RUN /app/venv/bin/pip install --upgrade pip
# RUN /app/venv/bin/pip install mkdocs mkdocs-material regex

# # Set the working directory
# WORKDIR /app

# # Copy the current directory contents into the container
# COPY . .

# # Build the MkDocs site
# RUN /app/venv/bin/mkdocs build

# # Copy the built site to the Nginx document root
# RUN mv site /usr/share/nginx/html

# # Set the correct permissions for the Nginx document root
# RUN chown -R nginx:nginx /usr/share/nginx/html

# # Expose the port for the Nginx server
# EXPOSE 80

# # Set the default command to start the Nginx server
# CMD ["nginx", "-g", "daemon off;"]

#-------------------------------------------------------
FROM nginx AS builder

WORKDIR /app

RUN apt update 

RUN apt install mkdocs -y && \
    apt install mkdocs-bootstrap -y

COPY . .

RUN mkdocs build

FROM nginx:alpine

COPY --from=builder /app/site /usr/share/nginx/html

#----------------------------------------------------


# FROM python:3.9-slim AS builder

# WORKDIR /app

# COPY requirements.txt .

# RUN pip install  --no-cache-dir -r requirements.txt

# COPY . .

# RUN mkdocs build

# FROM nginx:latest

# COPY --from=builder /app/site /usr/share/nginx/html

 # CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]

 # ----------------------------------------------
# FROM nginx AS builder

# WORKDIR /app

# RUN apt update 

# RUN apt install mkdocs -y && \
#     apt install mkdocs-bootstrap -y

# COPY . .

# RUN mkdocs build

# FROM nginx:alpine

# COPY --from=builder /app/site /usr/share/nginx/html
