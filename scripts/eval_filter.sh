#!/bin/zsh
CUDA_VISIBLE_DEVICES=0 CUDA_CACHE_PATH='~/cudacache' python3 -u main.py filter_eval -enhanced_mention -data_setup joint -add_crowd -multitask -mention_lstm -add_headword_emb -model_type filter -mode test_labeler -reload_model_name  filter_best -eval_data crowd/dev_tree.json -load  -eval_batch_size 50 | tee log/eval_filter.log
