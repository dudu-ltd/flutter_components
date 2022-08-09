# 布局示例


# Row属性：mainAxisAlignment
```widget
layoutDemoRow1
```

# Row属性：crossAxisAlignment
```widget
layoutDemoRow2
```

# Column属性：mainAxisAlignment
```widget
layoutDemoColumn1
```

# Column属性：crossAxisAlignment
```widget
layoutDemoColumn2
```

```widget
layoutDemo1
```

# 瀑布流
```widget
layoutDemoWaterfall
```

## API
### Row
属性 | 说明 | 类型 | 默认值 | 可选项
---|---|---|---|---
___children___ | 子节点集合 | List<Widget>
mainAxisAlignment | 主轴（即水平方向）对齐方式 | MainAxisAlignment | MainAxisAlignment.start | center,end,spaceAround,spaceBetween,spaceEvenly,start,values
mainAxisSize | 主轴（即水平方向）大小。 | MainAxisSize | MainAxisSize.max | max,min,values
crossAxisAlignment | 交叉轴（即垂直方向）对齐方向 | CrossAxisAlignment | CrossAxisAlignment.center | baseline,center,end,start,stretch