for seed in $(seq 0 4); 
    do 
        OPENAI_LOG_FORMAT=csv 
        python3 agail_trpo_eval.py --task evaluate --stochastic --seed=$seed --env_id Hopper-v2 --load_model_path ./ckpt_rank/Hopper/AGAIL_0.50-$seed/Hopper &
    done
python3 agail_trpo_eval.py --task evaluate --stochastic --seed=5 --env_id Hopper-v2 --load_model_path ./ckpt_rank/Hopper/AGAIL_0.50-5/Hopper