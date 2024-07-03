![moruiris github stats](https://github-readme-stats.vercel.app/api?username=moruiris&show_icons=true&theme=merko)
<div align="center">
<h1 align="center">同步上游分支代码</h1>
</div>

#自用
## openwrt官方自用：
```bash
 git clone -b openwrt https://github.com/moruiris/openwrt-packages
```
```bash
 src-git openwrt-packages https://github.com/moruiris/openwrt-packages;openwrt
```
## lede自用：
```bash
 git clone -b lede https://github.com/moruiris/openwrt-packages
```
```bash
 src-git openwrt-packages https://github.com/moruiris/openwrt-packages;lede
```
## immortalwrt自用：
```bash
 git clone -b immortalwrt https://github.com/moruiris/openwrt-packages
```
```bash
 src-git openwrt-packages https://github.com/moruiris/openwrt-packages;immortalwrt
```

#插件源码
## packages分支
*  常用OpenWrt软件包源码合集，每天自动同步上游更新！
*  通用版luci适合18.06与19.07及以上
*  感谢以上github仓库所有者！
## 使用方式（三选一）：
`还是建议按需取用，不然碰到依赖问题不太好解决`
1. 先cd进package目录，然后执行
```bash
 git clone -b packages https://github.com/moruiris/openwrt-packages
```
2. 或者添加下面代码到feeds.conf.default文件
```bash
 src-git openwrt-packages https://github.com/moruiris/openwrt-packages;packages
```
3. lede/下运行 或者openwrt/下运行
```bash
git clone -b packages https://github.com/moruiris/openwrt-packages ./package/
```




##### 关于Secrets、TOKEN的小知识

1. 首先需要获取 **Github Token**: [点击这里](https://github.com/settings/tokens/new) 获取,

 `Note`项填写一个名称,`Select scopes`不理解就**全部打勾**,操作完成后点击下方`Generate token`

2. 复制页面中生成的 **Token**,并保存到本地,**Token 只会显示一次!**

3. **Fork** 我的`small-package`仓库,然后进入你的`small-package`仓库进行之后的设置

4. 点击上方菜单中的`Settings`,依次点击`Secrets`-`New repository secret`

其中`Name`项填写`ACCESS_TOKEN`,然后将你的 **Token** 粘贴到`Value`项,完成后点击`Add secert`

* 对应`.github/workflows`目录下的`yml`工作流文件里的`ACCESS_TOKEN`名称（依据自己yml文件修改）



### 感谢名单（向他们学习才有这个项目）
- [kenzok8](https://github.com/kenzok8/small-package)
- [kiddin9](https://github.com/kiddin9/openwrt-packages)
