# FuleScaffold
![Pub Version](https://img.shields.io/pub/v/fule_scaffold?style=flat-square)
![GitHub](https://img.shields.io/github/license/NeedSSD/fule_scaffold?style=flat-square)

一个可以调整状态栏文字和背景颜色的组件。

#### 注意：使用该组件会与AppBar设置冲突导致失效，通常用于无AppBar界面。
该项目还在探索阶段，对外接口可能会存在较大变化，请选择好使用的版本。

## 开始

### 安装

#### 在pubspec.yaml中添加依赖包

``` yaml
fule_scaffold: '^0.1.0'
```

#### 获取依赖包

```shell
$ flutter pub get
```

### 引入

``` dart
import 'package:fule_scaffold/fule_scaffold.dart';
```

## 参数
| 属性 | 类型 | 默认值 | 必填 | 说明 | 组件版本 |
| --- | --- | --- | :---: | --- | :---: |
| statusBarStyle | StatusBarStyle | StatusBarStyle.black | 否 | 状态栏样式 | 0.1.0 |
| statusBarColor | Color | Colors.transparent | 否 | 状态栏颜色 | 0.1.0 |
| useSafeArea | bool | true | 否 | 是否使用安全区域 | 0.1.0 |
| backgroundColor | Color | - | 否 | 背景颜色 | 0.1.0 |
| body | Widget | - | 否 | 子组件 | 0.1.0 |

## 说明
1.  StatusBarStyle 为枚举类型，分别为 StatusBarStyle.black 和  StatusBarStyle.white 。
