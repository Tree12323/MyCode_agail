for seed in $(seq 0 4); 
    do 
        OPENAI_LOG_FORMAT=csv 
        python3 agail_trpo_eval.py --task evaluate --stochastic --seed=$seed --env_id Humanoid-v2 --load_model_path ./ckpt_rank/Humanoid/AGAIL_0.25-$seed/Humanoid &
    done
python3 agail_trpo_eval.py --task evaluate --stochastic --seed=5 --env_id Humanoid-v2 --load_model_path ./ckpt_rank/Humanoid/AGAIL_0.25-5/Humanoid