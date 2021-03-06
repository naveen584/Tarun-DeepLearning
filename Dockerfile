FROM tensorflow/tensorflow:latest-gpu-py3

#Naveen Kumar Meena
# Install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
      bzip2 \
      g++ \
      git \
      graphviz \
      libgl1-mesa-glx \
      libhdf5-dev \
      openmpi-bin \
      wget && \
    rm -rf /var/lib/apt/lists/*

COPY src /src

WORKDIR /src

RUN pip install -r requirements.txt

ENV PYTHONPATH='/src/:$PYTHONPATH'

CMD ["python", "plantvillage.py"]
