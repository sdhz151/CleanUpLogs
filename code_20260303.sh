#!/bin/bash
PATH=/bin:/usr/bin:/sbin:/usr/sbin:$PATH
DAYS=7
LOG_PATHS=("/var/log")

echo "===== AnolisOS-${DAYS} 日志清理开始 - $(date '+%Y-%m-%d %H:%M:%S') ====="
for PATH in "${LOG_PATHS[@]}"; do
  if [ -d "$PATH" ]; then
    echo "→ 清理目录：$PATH"
    /bin/find "$PATH" -type f \( -name "*.log" -o -name "*.log.*" \) -mtime +$DAYS -print -delete
  else
    echo "→ 目录不存在，跳过：$PATH"
  fi
done
echo "===== 清理完成 - $(date '+%Y-%m-%d %H:%M:%S') ====="