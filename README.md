# 360Walle
集成360加固,apk签名,美团walle打包工具实现自动化构建

## 1   config/config.ini 说明

	[jiagu]
	##360加固助手根目录
	jiagurootpath=C:\studio\auto360channel\jiagu\   
	##360开发平台账号
	jiagulogin=********  
	360开发平台密码    
	jiagupass=********  
	##加固apk文件全路径      
	jiaguapppath=C:\studio\auto360channel\channel\jiagu\app.apk   
	
	[keystore]
	##设置APK签名路径，使用25之上
	apksignerpath=C:\studio\Android\sdk\build-tools\25.0.2\     
	##签名文件    
	STORE_FILE=C:\studio\auto360channel\channel\sign\shop.keystore   
	##签名文件密码
	STORE_PASSWORD=********            
	##签名别名      
	KEY_ALIAS=********    
	##签名密码                 
	KEY_PASSWORD=******** 
	                  
	[channel]
	##渠道文件 格式txt文本空格隔开，参考美团打包说明	
	apkChannelpath=C:\studio\auto360channel\channel\sign\channel.txt 
	##加固和渠道输出路径  
	apkOutPutPath=C:\studio\auto360channel\channel\apk\
	##加固输出文件名（渠道名称前缀:app_v2.1.0_360）
	apkOutPutName=app_v2.1.0.apk

## 2  V2签名需要修改inputpassward.vbs文件

	Wshell.SendKeys "password"  自动发送输入密码  
	注意：在中文输入法下，会发送一个alt加空格切换 不需要修改此文件

## 3  V1签名需要修改startV1.bat设置手动设置下密码和confg.ini保持一致

	   SET STORE_PASSWORD=******
	   SET KEY_PASSWORD=******

## 4  V1打包双击startV1.bat  V2签名使用startV2

	也可以和和jenkins配合使用

## 5 参考资料

 [美团打包神器](http://tech.meituan.com/android-apk-v2-signature-scheme.html) 
 [获取签名信息](https://github.com/bihe0832/Android-GetAPKInfo) 
 [命令行加固](http://dev.360.cn)  
