## Todo

~~| 20 饥饿陷阱 | 饥饿值和饱食度清零 |~~
~~| 21 极速冲刺 | 获得速跑V效果，持续30秒 |~~
~~| 22 黑暗迷雾 | 获得盲目III效果，持续20秒 |~~
| 28 僵尸大军 | 生成15只武装僵尸 |
| 36 迷你化 | 玩家体型缩小50%，持续2分钟 |
| 37 巨人模式 | 玩家体型放大200%，持续1分钟 |

## tag&team
游戏中
- tag: ready ingame (out)
- team: InGame/Out

旁观
- tag: spectator
- team: Spectator

准备
- tag: ready
- team: Ready

## 地图
 
- [定义](./src/data/yw-pillar/modules/main.bolt)  
- [设置-函数](./src/data/yw-pillar/function/settings/map.mcfunction)  [设置-对话框](./src/data/yw-pillar/dialog/settings/map.json)  
- [游戏中](./src/data/yw-pillar/function/schedule/1s.mcfunction)  <map_id>/ingame.mcfunction 
- [传送到地图](./src/data/yw-pillar/function/game/pillars/)  <map_id>/tp.mcfunction 
- [掉虚空](./src/data/yw-pillar/function/game/pillars/location.mcfunction)

| 地图 | 描述 |
|---------|----------|
| 101 羊毛 | 经典 |
| 102 地狱 | 经典 维度：下界 |
| 103 玻璃 | 经典 |
| 104 虚空 | 经典 |
| 201 海洋 | 特殊 通过钓鱼获得物品，水有剧毒 | 
 
## 随机事件

每 s 触发 `yw-pillar:game/event/duration_sec`  
每 tick 触发 `yw-pillar:game/event/duartion_tick`

- [定义](./src/data/yw-pillar/modules/main.bolt)  
- [调用](./src/data/yw-pillar/function/game/event/main.mcfunction)

|  事件  |  描述  |
|  ----  | ----  |
| 1 夜晚降临 | 变成黑夜，生成两只幻翼 |
| 2 铁砧下落 | 生成一个铁砧在头顶 |
| 3 龙袭 | 生成一只末影龙 |
| 4 凋灵 | 生成一只凋灵 |
| 5 FLY | 鞘翅x1、烟花火箭x3 |
| 6 箭雨 | 箭雨 |
| 7 踏空 | 漂浮 |
| 8 自转 | oiiaioooooiai |
| 9 雷击 | 劈一你发 |
| 10 你好世界 | 变成白天，回满生命值 |
| 11 「不死」 | 获得一个不死图腾 |
| 12 断腿 | 无法跳跃 |
| 13 一击必杀 | 玩家攻击伤害变为 40 | 
| 14 CREEPER | 召唤一只苦力怕，有10%的概率出现闪电苦力怕 | 
| 15 摸摸 | 玩家实体交互距离变为 10 | 
| 16 背包交换 | 玩家背包物品随机交换 | 
| 17 国王游戏 | 成王败寇 | 
| 18 幸运玩偶 | 获得一个加强版不死图腾 | 
| 19 饿啊饿啊 | 获得饥饿(40)30s | 
| 20 黑 | 黑(10s) | 
| 21 Speed | 🦽冲刺冲刺🦽 | 

## 特殊规则

- [定义](./src/data/yw-pillar/modules/main.bolt)  
- [调用](./src/data/yw-pillar/function/game/rule/main.mcfunction)  
- [设置-函数](./src/data/yw-pillar/function/settings/rule.mcfunction)  [设置-对话框](./src/data/yw-pillar/dialog/settings/rule.json)  

|  规则  |  描述  |
|  ----  | ----  |
| 1 小小的也很可爱 | 玩家尺寸缩小为原来的 1/3 |
| 2 大！大！大！ | 玩家尺寸增大为原来的 3/2 |
| 3 我的伙伴 | 获得一只狐狸 狐狸存活时,给玩家提供力量和生命回复 |
| 4 一击必杀 | 玩家攻击伤害变成 §l40 |
| 5 背包交换 | 随机事件固定为 §背包交换 |
