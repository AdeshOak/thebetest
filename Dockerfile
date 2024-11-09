# Use an official Jupyter base image
FROM jupyter/base-notebook:latest

# Install additional packages (if needed)
RUN pip install torch torchvision pytorch-lightning pytorch-lightning-bolts

# Set the working directory
WORKDIR /home/jovyan

# Set the default command to launch Jupyter
CMD ["start-notebook.sh"]
