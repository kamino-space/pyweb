# pyweb in docker
## 介绍
在docker中运行django等web程序，并争取实现一个uwsgi可以供多个django站点使用。
## 使用方法
```
git clone https://github.com/kamino-space/pyweb.git
cd pyweb
docker build -t pyweb:test .
docker run -d --name pyweb pyweb:test
```
## 待解决问题
- 使用conda为每个站点创建单独的环境，但不能只用一个uwsgi
- kamino太菜了怎么办