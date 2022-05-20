#!/bin/bash
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
conda activate viser/
cp /media/aioz-thang/data3/aioz-thang/main_dev/lasr/DAVIS-2017-trainval-Full-Resolution/DAVIS/Annotations/Full-Resolution/horsejump-high/ -rf database/DAVIS/Annotations/Full-Resolution/
cp /media/aioz-thang/data3/aioz-thang/main_dev/lasr/DAVIS-2017-trainval-Full-Resolution/DAVIS/JPEGImages/Full-Resolution/horsejump-high/ -rf database/DAVIS/JPEGImages/Full-Resolution/

# mkdir -p ./lasr_vcn
# gdown "https://drive.google.com/uc?id=139S6pplPvMTB-_giI6V2dxpOHGqqAdHn" -O ./lasr_vcn/vcn_rob.pth

bash preprocess/auto_gen.sh horsejump-high
