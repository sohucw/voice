
## 技术栈
- java springMvc 
- hibernate
- 数据库 mysql
- server tomcat
 
###版本管理：
- git
- 地址  https://github.com/sohucw/voice.git


###：问题

- web.xml  拦截器的配置
 <servlet-mapping>
         <servlet-name>mvc-dispatcher</servlet-name>
         <url-pattern>*.do</url-pattern>
          <url-pattern>/</url-pattern>  // 导致jsp中 js css html访问不到
     </servlet-mapping>

### 项目启动

``` sh
 配置好tomcat
 默认端口 8080

 
```