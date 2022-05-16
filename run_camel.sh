#!/bin/bash
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
conda activate viser/
bash scripts/camel.sh
# bash scripts/render_result.sh camel log/camel-1003-ft2/pred_net_1.pth 36
