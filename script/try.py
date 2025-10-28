from beet import Context, Function

def beet_default(ctx: Context):
    # 创建新函数
    ctx.data["mypack:myfunction"] = Function([
        "say 第一行",
        "say 第二行", 
        "say 第三行"
    ])
    function = ctx.data.functions["mypack:myfunction"]
    function.lines.insert(1, "say 插入的行")
    function.prepend()
