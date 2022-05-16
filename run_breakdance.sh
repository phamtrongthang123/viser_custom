#!/bin/bash
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
conda activate viser/
# bash scripts/breakdance-flare.sh
# bash scripts/render_result.sh breakdance-flare log/breakdance-flare-1003-ft2/pred_net_20.pth 36
bash scripts/render_result.sh breakdance-flare log/breakdance-flare-1003-1/pred_net_10.pth 36

