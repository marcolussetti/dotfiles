#!/bin/bash
sudo docker run --gpus all  -it --rm -v "./data:/data" -v "./data/hf_cache:/home/app/.cache/huggingface" -p 5000:5000 -e MODEL_NAME=TabbyML/J-350M -e MODEL_BACKEND=triton --name=tabby tabbyml/tabby
