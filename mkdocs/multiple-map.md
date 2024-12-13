# Multiple Map

### Load Multiple MAPS

```
Find: KSwordOnLineSever::GatewaySmallPackProcess
- in `case s2c_querymapinfo` => change `char	sMapID[300]`
- sMapID[300] mean load 300 maps
- Change MAX_NPC, MAX_SUBWORK
```


### Xuong dong text item
- void KItem::operator = (const KBASICPROP_EQUIPMENT& sData)

### Item hoang kim
- KItemChangeRes::Init()

### Vòng sáng item hoàng kim
void KWndObjectBox::PaintWindow()
