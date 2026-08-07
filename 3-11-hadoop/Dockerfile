# Use the official AWS EMR Serverless Spark base image
FROM public.ecr.aws/emr-serverless/spark/emr-7.12.0:latest

# Switch to root to install dependencies
USER root

# Install Python 3.11 and development headers
RUN dnf install -y python3.11 python3.11-pip python3.11-devel

# Update the default 'python3' alias (Optional but helpful)
RUN alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1

# Download the Postgres JDBC driver into the Spark library folder
RUN curl -o /usr/lib/spark/jars/postgresql-42.7.3.jar https://jdbc.postgresql.org/download/postgresql-42.7.3.jar

# Install NLTK, then download its data
RUN python3.11 -m pip install nltk
RUN python3.11 -m nltk.downloader -d /usr/share/nltk_data punkt stopwords wordnet punkt_tab
RUN chmod -R 755 /usr/share/nltk_data

# Tell Spark to use the new Python binary
ENV PYSPARK_PYTHON=/usr/bin/python3.11
ENV PYSPARK_DRIVER_PYTHON=/usr/bin/python3.11

# We point to the common site-packages locations AND your custom folder
ENV PYTHONPATH="/home/hadoop/pipelines:/usr/local/lib/python3.11/site-packages:/usr/lib/python3.11/site-packages"

# Set the working directory (AWS uses /home/hadoop or /app usually)
WORKDIR /home/hadoop/pipelines
RUN chown -R hadoop:hadoop /home/hadoop/pipelines
RUN chmod -R 755 /home/hadoop/pipelines

# EMR Serverless expects the 'hadoop' user (UID 1000) for security
USER hadoop:hadoop