## V5验证-iOS客户端SDK使用说明
### 第一步，导入

把Verify5Client 导入进iOS 工程
![alt 导入](./md-assess/1.jpg "导入")

### 第二步，使用

1. 导入头文件

![alt 导入头文件](./md-assess/2.jpg "导入头文件")

2. 设置参数并弹出验证

![alt 设置参数并弹出验证](./md-assess/3.jpg "设置参数并弹出验证")

3. 监听SDK返回结果(verifyId)

![alt 监听SDK返回结果](./md-assess/4.jpg "监听SDK返回结果")

4. 处理返回结果

接收到verifyId后，应随随需受保护的接口传入，并在服务端进行二次验证。

![alt 处理返回结果](./md-assess/5.jpg "处理返回结果")

