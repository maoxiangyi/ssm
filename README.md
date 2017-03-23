# ssm web project
 
ssm web project( Spring MVC、Spring、Ibatis)

使用maven整合三大框架的Web项目工程，克隆后直接使用。   


# 版本说明
> spring.version:4.2.4.RELEASE

> mybatis.version:3.2.8


# 项目运行步骤
> 1、克隆项目到本地的eclipse。由于项目是基于maven构建的，需要开发环境有Maven并且eclipse已经安装好Maven插件。

> 2、在已经安装好的Mysql数据库上，运行工程需要的建库建表语句。该语句存放在工程的resources目录下，名为：ssm.sql。如果数据库在远程服务器上，需要修改resouces/properties/db.properties)

> 3、导入项目到eclipse中。

> 4、选中项目的pom.xml文件，右键依次运行 Run As -> maven build 启动项目.

> 5、访问：http://localhost:8080/

> 6、拦截器生效跳转到登录界面，账户密码(root\root)

> 7、自动跳转到商品列表页

# 更新记录
> 2017年3月21日  搭建ssm基础框架、能够查询用户信息
> 2017年3月23日  增加商品管理模块(增删改查)、配合拦截器的登录功能
