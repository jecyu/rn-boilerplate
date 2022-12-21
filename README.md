# RN 项目模版

Simple to-do list app build on React Native 0.59.10 + Redux。

## 1. 技术栈

1. React Native 0.59.10
2. react 16.8.3
3. NativeBase 适配 web、android、iOS 的组件库
4. redux 状态管理

## 2. 环境要求

- Xcode 14
- 部署目标环境配置 iOS12
- iPhone 6Plus

## 3. 快速开始

1. 安装 npm 包依赖
```sh
npm i
```

2. 编译 RN 模块
```sh
npm run start
```

如果出现 8081 端被占用，需要把原进程杀掉，再重新编译 RN 模块
```sh
# 查看 8081 端口进程 id
$ sudo lsof -n -i4TCP:8081
Password:

COMMAND  PID USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
macmnsvc 103  mfe   20u  IPv6 0xbf7b1e2f162efb47      0t0  TCP *:sunproxyadmin (LISTEN)

# 根据进程 id 查看进程名称
$ sudo launchctl list | grep 103

103	0	com.mcafee.agent.macmn

# 杀掉进程
sudo launchctl remove com.mcafee.agent.macmn

# 重新查看 8081 端口
sudo lsof -n -i4TCP:8081
```

3. 进入 ios 文件，双击 `boilerplateredux.xcodeproj`，打开 Xcode。

4. 通过 usb 连接 iPhone，点击构建。

5. 构建完成后，即可在手机中打开应用。摇一摇可以弹出调试菜单。

## 4. 问题

### 4.1 如何加载其他 RN 模块

加载 RN 模块依赖的 React Native 版本必须跟壳子的版本一致，否则会出现这样的错误 
`React Native version mismatch. JavaScript version: 0.xxx.xx Native version: 0.59.10`

在确认 React Native 版本一致的情况下，此时直接 Reload 加载话，会出现 `Application NextDelivery has not been
registered`。

需要进入 ios 文件夹，找到 `AppDelegate.m` 文件，更改 moduleName 为对应的 RN 模块注册APP 标识，重新构建 iOS 应用即可。

## 5. Todo

- [x] iOS 构建
- [ ] Android
- [ ] iOS 引入包管理器
- [ ] 支持最新 RN 版本模版，以新分支形式
- [ ] iOS 壳子支持多 RN 模块

