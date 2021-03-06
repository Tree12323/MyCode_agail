for seed in $(seq 0 4); 
    do 
        OPENAI_LOG_FORMAT=csv 
        python3 agail_trpo_eval.py --task evaluate --stochastic --seed=$seed --env_id InvertedDoublePendulum-v2 --load_model_path ./ckpt_origin/InvertedDoublePendulum/AGAIL_0.75-$seed/InvertedDoublePendulum &
    done
python3 agail_trpo_eval.py --task evaluate --stochastic --seed=5 --env_id InvertedDoublePendulum-v2 --load_model_path ./ckpt_origin/InvertedDoublePendulum/AGAIL_0.75-5/InvertedDoublePendulum