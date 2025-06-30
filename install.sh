#!/bin/bash

# <<<init conda>>>
source /workspace/misc/miniconda3/etc/profile.d/conda.sh

# create conda env
conda create -n internvl python=3.9 -y
conda activate internvl

# install requirements
wget https://github.com/Dao-AILab/flash-attention/releases/download/v2.8.0.post2/flash_attn-2.8.0.post2+cu12torch2.5cxx11abiFALSE-cp39-cp39-linux_x86_64.whl
pip install -r requirements.txt
pip uninstall -y torch torchvision 
pip install torch==2.5.1 torchvision==0.20.1 torchaudio==2.5.1 --index-url https://download.pytorch.org/whl/cu121
pip install ./flash_attn-2.8.0.post2+cu12torch2.5cxx11abiFALSE-cp39-cp39-linux_x86_64.whl
