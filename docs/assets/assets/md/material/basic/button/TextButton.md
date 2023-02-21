# TextButton 文本按钮

## 默认样式的文本
> 默认颜色为应用的主题色

```widgetsRow
textButton(默认),    textButtonDisabled(禁用)
```
```widgetsRow
textButtonWithStyle(修改颜色)  ,textButtonWithIcon(携带图标)
```

<!-- 
## 自定义样式的文本按钮
```widgetsRow
textButtonWithStyle
``` -->

## 渐变色
```widget
textButtonGradient
```


## 创建按钮的属性

属性 | 说明 | 类型 | 默认值 | 可选项
---|---|---|---|---
___child___ | 按钮内容 | Widget
___onPressed___ | 单击事件的回调函数 | void Function()?
onLongPress | 长按事件回调函数  | void Function()?
onHover | 鼠标浮入回调函数  | void Function()?
onFocusChange | 焦点改变回调函数  | void Function()?
style | 定义按钮样式  | ButtonStyle? 
focusNode | 焦点  | void Function()?
autofocus | 自动成为焦点  | void Function()?
clipBehavior | 剪切习惯  | Clip | Clip.none | Clip.hardEdge, Clip.antiAliasWithSaveLayer, Clip.antiAlias, Clip.none 
