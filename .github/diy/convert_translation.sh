#!/bin/bash

for e in $(ls -d luci-*/po); do
	if [[ -d $e/zh-cn && ! -d $e/zh_Hans ]]; then
		ln -s zh-cn $e/zh_Hans
	elif [[ -d $e/zh_Hans && ! -d $e/zh-cn ]]; then
		ln -s zh_Hans $e/zh-cn
	fi
done
