BASEDIR=/media/julian/PILEDRIVE/stableDiffusion/stable-diffusion-webui
echo $BASEDIR
docker run --gpus all -v $BASEDIR:/app -v $BASEDIR/home:/home/julian  --network host --runtime nvidia -it stable-diffusion-webui_webui:latest /bin/bash
