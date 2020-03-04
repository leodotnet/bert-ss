#!/bin/bash

idx=1
for idx in 1
do

echo "Run data $idx ..."

python3.5 run_ss.py --data_dir /home/lihao/workspace/transformers/data/ts3/en --model_type bert --output_dir /home/lihao/workspace/transformers/ts3/en --model_name_or_path bert-base-uncased --do_train --do_eval --do_predict --num_train_epochs 100 --eval_all_checkpoints --data_idx $idx --labels ss_bert_labels.txt --save_steps 500 --fix_weight > ts3_bert_en_$idx.train.log --overwrite_output_dir 2>&1


done
