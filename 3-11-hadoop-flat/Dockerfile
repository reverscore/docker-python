# Use the official AWS EMR Serverless Spark base image
FROM public.ecr.aws/emr-serverless/spark/emr-7.12.0:latest AS install

# Switch to root to install dependencies
USER root

# All filesystem changes happen in a single RUN so the final image ships as a
# single layer. Fewer layers = much faster extraction in the Docker-in-Docker
# CI builders, where every layer costs a full filesystem walk (~3min each).
RUN dnf install -y python3.11 python3.11-pip python3.11-devel \
  && dnf clean all \
  && rm -rf /var/cache/dnf /tmp/* /var/tmp/* \
  && alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1 \
  && curl -o /usr/lib/spark/jars/postgresql-42.7.3.jar https://jdbc.postgresql.org/download/postgresql-42.7.3.jar \
  && python3.11 -m pip install nltk \
  && python3.11 -m nltk.downloader -d /usr/share/nltk_data punkt stopwords wordnet punkt_tab \
  && chmod -R 755 /usr/share/nltk_data \
  && mkdir -p /home/hadoop/pipelines \
  && chown -R hadoop:hadoop /home/hadoop/pipelines \
  && chmod -R 755 /home/hadoop/pipelines

# Rebuild the image as a single layer on scratch. The EMR base image metadata
# (env vars, entrypoint, user) is re-declared explicitly below because config
# from the install stage does not carry over a COPY.
FROM scratch

COPY --from=install / /

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
    SPARK_HOME=/usr/lib/spark \
    JAVA_HOME=/etc/alternatives/jre \
    LIVY_HOME=/usr/lib/livy \
    HUDI_CONF_DIR=/etc/hudi/conf \
    PYSPARK_PYTHON=/usr/bin/python3.11 \
    PYSPARK_DRIVER_PYTHON=/usr/bin/python3.11 \
    PYTHONPATH="/home/hadoop/pipelines:/usr/local/lib/python3.11/site-packages:/usr/lib/python3.11/site-packages"

# EMR Serverless entrypoint and expected 'hadoop' user (UID 1000)
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
USER hadoop:hadoop
WORKDIR /home/hadoop/pipelines
