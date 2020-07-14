for seed in $(seq 0 4); 
    do 
        OPENAI_LOG_FORMAT=csv 
        python3 agail_trpo_cartpole_eval.py --task evaluate --load_model_path ./ckpt_origin/CartPole/AGAIL_0.75-$seed/CartPole/ --seed=$seed &
    done
python3 agail_trpo_cartpole_eval.py --task evaluate --load_model_path ./ckpt_origin/CartPole/AGAIL_0.75-5/CartPole/ --seed=5
echo 'done'
