#!/bin/bash

# 下载 apoolminer
wget https://github.com/apool-io/apoolminer/releases/download/v1.6.10/apoolminer_linux_v1.6.10.tar

# 解压文件
tar -xvf apoolminer_linux_v1.6.10.tar

# 修改权限
chmod +x run_aleo_apool_gpu.sh
chmod +x apoolminer

# 修改脚本内容
sudo sed -i 's/CP_32hb86nvxc/CP_rl3ar3pajs/g' run_aleo_apool_gpu.sh
sudo sed -i 's/worker_01/yun4090/g' run_aleo_apool_gpu.sh

# 运行脚本
./run_aleo_apool_gpu.sh

# 查看日志
tail -f aleo.log
