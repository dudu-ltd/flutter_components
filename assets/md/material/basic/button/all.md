
# Button按钮  
常用的操作按钮


## 基本使用
```widgetsRow
textButton,elevatedButton,outlinedButton
```
```widgetsRow
iconButton,materialButton,rawMaterialButton
```
```widgetsRow
floatingActionButton,,
```
```widgetsRow
toggleButtons
```

## 禁用状态
```widgetsRow
textButtonDisabled,elevatedButtonDisabled,outlinedButtonDisabled
```

```widgetsRow
iconButtonDisabled,materialButtonDisabled,rawMaterialButtonDisabled
```

```widgetsRow
floatingActionButtonDisabled,,
```
```widgetsRow
toggleButtonsDisabled
```



## 创建方式与属性
### 构造函数创建
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
