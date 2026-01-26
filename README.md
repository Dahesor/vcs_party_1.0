# vcs_party_1.0使用文档

&gt; 适用版本：(?) \~ 1.21.10 \~ (?)  
&gt; 前置依赖：iframe_1.2  
&gt; 命名空间：vp_core, module_control

---

## 1.基本介绍

### 什么是vcs_party？

vcs_party是一款适用于原版mc数据包开发的派对小游戏框架，包括框架协议与框架核心两部分。

其中，框架协议规定了一个派对小游戏模块应遵循的形式，包括游戏实例的构造、主程序格式、奖励与交易设计。

框架核心则用于组织每一场派对小游戏的选择、运行、结算，并管理游戏玩家的加入、退出。

### 可以用vcs_party来做什么？

* 模板化创作派对小游戏
* 分享不同作者的派对小游戏
* 组织游玩派对小游戏

---

## 2.框架协议

框架协议支持mot_2.0推送，请下载并运行mot_2.0: https://github.com/xiaodou8593/mot_2.0  
将memory_storage文件夹中的记忆模板(vp_mem_1.0, vp_constructor_1.0)复制到mot_2.0本体的memory_storage文件夹即可。

请寻找一个目录作为小游戏模块，它必须位于data/命名空间/function或更下层。

如果您想要创建新的数据包以及模块，在datapacks文件夹下按ctrl+p，输入数据包名称和命名空间即可，模块目录会自动打开。(如果使用已有数据包请忽略)

打开您的模块目录后，按ctrl+m运行mot_2.0记忆栈

### 基本信息与载入

在模块目录下按ctrl+o创建对象格式文档，一个派对小游戏(vp_game)必须包含以下字段：

```
_this:{
	game_namespace:[storage vp_core:io game_namespace,String],
	game_prefix:[storage vp_core:io game_prefix,String],
	game_name:[storage vp_core:io game_name,Compound],
	game_desc:[storage vp_core:io game_desc,ListCompound],
	game_display:[storage vp_core:io game_display,Compound],
	version_range:[storage vp_core:io version_range,ListInt,2],
	game_state:[storage vp_core:io game_state,String],
	field_size:[storage vp_core:io field_size,Int],
	field_height:[storage vp_core:io field_height,Int],
	field_center:[storage vp_core:io field_center,ListDouble,3]
}
```

编辑模块目录下的_reg接口完成信息载入。

* game_namespace用于设置小游戏命名空间，mot_2.0已经自动设置完成。
* game_prefix用于设置小游戏模块前缀，mot_2.0已经自动设置完成。
* game_name用于设置小游戏的名称
* game_desc用于设置小游戏的介绍
* game_display用于设置小游戏图标资源的数据模板，vp_core提供了两种图标展示方式：item_icon和head_pic
* version_range用于设置小游戏适用的mc最低版本和最高版本，使用数据版本格式 (在聊天栏中使用命令/data get entity @s DataVersion可以获取对应mc数据版本)
* game_state用于设置小游戏进行状态，在此处应填写"preparing"
* field_size用于设置小游戏场地大小，单位是48×48的结构方块区域。
* field_height用于设置小游戏场地高度，单位是48格。
* field_center用于设置小游戏场地中心，定义为场地最底层的中心坐标。该项置零即可，游戏加载时由vp_core来分配。

field_size, field_height, field_center示意图如下：

![alt text](image.png)

关于game_display的文档请参考[图标资源](./docs/game_display.md)

### 游戏实例的构造

vp_game的游戏实例是由多个不同的构造器，在异步过程中建造出来的。

关于构造器的文档请参考[构造器](./docs/constructor.md)

### 主程序格式

### 奖励与交易设计

---

## 3.框架核心

### 内置构造器

### 内置工具函数

---

## 4.案例实战