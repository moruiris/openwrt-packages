![moruiris github stats](https://github-readme-stats.vercel.app/api?username=moruiris&show_icons=true&theme=merko)
<div align="center">
<h1 align="center">同步上游分支代码</h1>
</div>

# 自用
## openwrt官方自用：
```bash
git clone -b openwrt https://github.com/moruiris/openwrt-packages ./package/moruiris
```
```bash
src-git moruiris https://github.com/moruiris/openwrt-packages.git;openwrt
```
## lede自用：
```bash
git clone -b lede https://github.com/moruiris/openwrt-packages ./package/moruiris
```
```bash
src-git moruiris https://github.com/moruiris/openwrt-packages.git;lede
```
## immortalwrt自用：
```bash
git clone -b immortalwrt https://github.com/moruiris/openwrt-packages ./package/moruiris
```
```bash
src-git moruiris https://github.com/moruiris/openwrt-packages.git;immortalwrt
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
