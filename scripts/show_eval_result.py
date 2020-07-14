# -*- coding:utf-8 -*-
# Author : DaYong
# Data : 2020/7/13 下午8:47

import glob
import numpy as np
import os.path as osp

ENV = 'CartPole'
# SOURCE_PATH = './ckpt_tmp'
# SOURCE_PATH = './ckpt_origin'
SOURCE_PATH = './ckpt_rank'
FILE_NAME = ENV + '/result.txt'

dir_path = sorted(glob.glob(osp.join(SOURCE_PATH, ENV) + '/*'))

tmp_sum = 0
tmp_index = 0
for i in range(len(dir_path)):
    if tmp_index == 6:
        print(tmp_sum / 6)
        tmp_sum = 0
        tmp_index = 0

    tmp_index += 1
    print(dir_path[i])
    tmp_sum += np.loadtxt(osp.join(dir_path[i], FILE_NAME))

print(tmp_sum / 6)