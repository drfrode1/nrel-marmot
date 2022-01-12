#!/bin/sh

/opt/conda/bin/conda activate marmot-env
python ./marmot/marmot_h5_formatter.py
python ./marmot/marmot_plot_main.py 