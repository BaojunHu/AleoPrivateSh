#!/bin/bash

# 查找并杀死与 apoolminer 相关的进程
pkill -f apoolminer

# 停止查看日志
pkill -f "tail -f aleo.log"

echo "Apoolminer 及相关进程已停止。"
