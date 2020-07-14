for seed in $(seq 0 4); 
    do 
        OPENAI_LOG_FORMAT=csv 
        python3 agail_trpo_eval.py --task evaluate --stochastic --seed=$seed --env_id Humanoid-v2 --load_model_path ./ckpt_origin/Humanoid/AGAIL_0.00-$seed/Humanoid &
    done
python3 agail_trpo_eval.py --task evaluate --stochastic --seed=5 --env_id Humanoid-v2 --load_model_path ./ckpt_origin/Humanoid/AGAIL_0.00-5/Humanoid