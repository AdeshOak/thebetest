# Use the official Jupyter base image
FROM jupyter/base-notebook:latest

# Set the working directory to the default home for the jovyan user
WORKDIR /home/jovyan

# Copy environment.yml and requirements.txt to the container
COPY environment.yml requirements.txt /home/jovyan/

# Install Conda dependencies from environment.yml
RUN conda env update -f environment.yml && \
    conda clean -afy

# Install additional pip dependencies from requirements.txt
RUN pip install -r requirements.txt

# Expose the Jupyter Notebook port
EXPOSE 8888

# Set the default command to launch Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
