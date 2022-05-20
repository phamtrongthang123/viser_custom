#!/bin/bash
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
conda activate viser/
bash scripts/horse.sh

bash scripts/render_result.sh horsejump-high log/horsejump-high-1003-0/pred_net_20.pth 21 --catemodel --cnnpp 
bash scripts/render_result.sh horsejump-high log/horsejump-high-1003-1/pred_net_10.pth 36 --catemodel --cnnpp 
bash scripts/render_result.sh horsejump-high log/horsejump-high-1003-4/pred_net_20.pth 36 --catemodel --cnnpp 
