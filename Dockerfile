FROM quay.io/jupyter/base-notebook:latest

# Install system packages as root during image build
USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        curl \
        wget \
        unzip \
        nano \
        ca-certificates \
        zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Return to the normal Jupyter user
USER ${NB_UID}

# Set working directory
WORKDIR /home/jovyan

# Vercel container port
ENV PORT=80
EXPOSE 80

# Start Jupyter Notebook listening on Vercel's $PORT
CMD ["sh", "-c", "start-notebook.py --ServerApp.ip=0.0.0.0 --ServerApp.port=${PORT:-80} --ServerApp.token='' --ServerApp.password='' --ServerApp.allow_origin='*' --ServerApp.allow_remote_access=True --ServerApp.disable_check_xsrf=True --ServerApp.root_dir=/home/jovyan"]
