# kubernetes based  container orchestration to  classify    diseased plant leaf image based on deep Learning Approach.

Workflow that shows how to train neural networks with GPU support. The goal is to present a simple and stable setup to train on GPU instances by using **Docker** and the NVIDIA Container Runtime **nvidia-docker**. A minimal example is given to train a small CNN built in Keras to  classify diseased plant leaf image. We achieve a 30-fold speedup in training time when training on GPU versus CPU.


## Getting started

1. Install [Docker](https://docs.docker.com/install/)

2. Install [Docker Machine](https://docs.docker.com/machine/install-machine/)

3. Download [Data Source](https://github.com/spMohanty/PlantVillage-Dataset/tree/master/raw)


## Train locally on CPU

Run training container (**NB:** you might have to increase the container resources [[link](https://docs.docker.com/config/containers/resource_constraints/)])
```
$ docker run -it -v $PWD:$PWD -w $PWD lynngroup/tarun:plantvillage-gpu python plantvillage.py  
```

## Train locally  on GPU
$ docker run -it -v $PWD:$PWD -w $PWD --gpus all lynngroup/tarun:plantvillage-gpu python plantvillage.py  

```
# update NVIDIA drivers
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt-get update
sudo apt-get install -y nvidia-375 nvidia-settings nvidia-modprobe

# install nvidia-docker
wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb
sudo dpkg -i /tmp/nvidia-docker_1.0.1-1_amd64.deb && rm /tmp/nvidia-docker_1.0.1-1_amd64.deb
```
## Setting UP Kubernetess 

I will update it once kubernetess script written

## Training time comparison

We trained plant leaf image for 35 epochs (~98.84% accuracy on validation set):



## Copyright

See [LICENSE](LICENSE) for details.
