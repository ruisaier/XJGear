# XJGear
##### 1. 添加Pod

```ruby
platform :ios, '9.0'


pod 'wap1.0.0', :git => 'https://github.com/ruisaier/XJGear.git'

# swift
pod 'waps1.0.0', :git => 'https://github.com/ruisaier/XJGear.git'

```

`AppDelegate.m`文件中引库的入头文件并添加如下代码
```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
// limit为开启日期, 一般设置为7天后的时间. yyMMdd
[XJGearSDK becomeDate:@"190221" completion:^{
self.window.rootViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
}];
return YES;
}
```

Swift工程需要手动添加推送回调：
在桥接文件 **`项目名-Brdging-Header.h`** 中引入极光推送头文件：**`#import "JPUSHService.h"`**
`AppDelegate.swift 文件中添加如下代码`
```object
func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
JPUSHService.registerDeviceToken(deviceToken)
}

func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any]) {
JPUSHService.handleRemoteNotification(userInfo)
}
```


##### 2. 添加 info.plist

```html
<key>LSApplicationQueriesSchemes</key>
<array>
<string>weibosdk2.5</string>
<string>mqqbrowser</string>
<string>mttbrowser</string>
<string>tim</string>
<string>sinaweibosso</string>
<string>weibosdk</string>
<string>mqzonev2</string>
<string>mqzoneopensdkapi</string>
<string>timopensdkgrouptribeshare</string>
<string>timopensdkapiV4</string>
<string>timapi</string>
<string>timopensdkfriend</string>
<string>timwpa</string>
<string>timgamebindinggroup</string>
<string>mqqopensdkapi</string>
<string>mqqopensdkapiV2</string>
<string>mqqwpa</string>
<string>mqzone</string>
<string>wechat</string>
<string>weixin</string>
<string>mqqopensdkapiV3</string>
<string>mqqopensdkapiV4</string>
<string>mqzoneopensdk</string>
<string>wtloginmqq</string>
<string>wtloginmqq2</string>
<string>sinaweibohd</string>
<string>sinaweibo</string>
<string>timgamebindinggroup</string>
<string>timopensdkdataline</string>
<string>wtlogintimV1</string>
<string>timapiV1</string>
<string>mqzoneshare</string>
<string>wtloginqzone</string>
<string>mqzonewx</string>
<string>mqzoneopensdkapiV2</string>
<string>mqzoneopensdkapi19</string>
<string>timapiwallet</string>
<string>timOpensdkSSoLogin</string>
<string>wtlogintim</string>
<string>mqqapi</string>
<string>mqq</string>
<string>mqqOpensdkSSoLogin</string>
<string>mqqconnect</string>
<string>mqqopensdkdataline</string>
<string>mqqopensdkgrouptribeshare</string>
<string>mqqopensdkfriend</string>
</array>
<key>NSAppTransportSecurity</key>
<dict>
<key>NSAllowsArbitraryLoads</key>
<true/>
</dict>
```

