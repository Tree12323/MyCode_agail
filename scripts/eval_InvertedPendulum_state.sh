for seed in $(seq 0 4); 
    do 
        OPENAI_LOG_FORMAT=csv 
        python3 agail_trpo_eval.py --task evaluate --stochastic --seed=$seed --env_id InvertedPendulum-v2 --load_model_path ./ckpt_origin/InvertedPendulum/state_0.00-$seed/InvertedPendulum &
    done
python3 agail_trpo_eval.py --task evaluate --stochastic --seed=5 --env_id InvertedPendulum-v2 --load_model_path ./ckpt_origin/InvertedPendulum/state_0.00-5/InvertedPendulum