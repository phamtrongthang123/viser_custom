#!/bin/bash
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
conda activate viser/
bash scripts/camel.sh
mkdir -p tmp; mkdir -p log;
# bash scripts/render_result.sh camel log/camel-1003-ft2/pred_net_20.pth 36
# bash scripts/render_result.sh camel log/camel-1003-1/pred_net_10.pth 36
bash scripts/render_result.sh camel log/camel-1003-0/pred_net_20.pth 21 --catemodel --cnnpp 
bash scripts/render_result.sh camel log/camel-1003-1/pred_net_10.pth 36 --catemodel --cnnpp 
bash scripts/render_result.sh camel log/camel-1003-3/pred_net_10.pth 36 --catemodel --cnnpp 
