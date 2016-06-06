From: hl <hl@rock-chips.com>
Subject: Re: [RFC PATCH v1 1/6] rockchip: rockchip: add new clock-type for the
 ddrclk
Date: Mon, 6 Jun 2016 10:24:09 +0800
Message-ID: <5754DEC9.6030800@rock-chips.com>
References: <1464947719-6245-1-git-send-email-hl@rock-chips.com>
 <1464947719-6245-2-git-send-email-hl@rock-chips.com>
 <67c0c728-389c-668f-4966-39e9966e1b42@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <67c0c728-389c-668f-4966-39e9966e1b42@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>, heiko@sntech.de, mark.yao@rock-chips.com, myungjoo.ham@samsung.com
Cc: huangtao@rock-chips.com, dbasehore@chromium.org, linux-clk@vger.kernel.org, airlied@linux.ie, typ@rock-chips.com, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com, mturquette@baylibre.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn,

On 2016=E5=B9=B406=E6=9C=8803=E6=97=A5 20:29, Shawn Lin wrote:
> Hi Lin,
>
> It looks good with only a few minor comments.
>
> On 2016/6/3 17:55, Lin Huang wrote:
>> On new rockchip platform(rk3399 etc), there have dcf controller to
>> do ddr frequency scaling, and this controller will implement in
>> arm-trust-firmware. We add a special clock-type to handle that.
>>
>> Signed-off-by: Lin Huang <hl@rock-chips.com>
>> ---
>> Changes in v1:
>> - None
>>
>>  drivers/clk/rockchip/Makefile  |   1 +
>>  drivers/clk/rockchip/clk-ddr.c | 147=20
>> +++++++++++++++++++++++++++++++++++++++++
>>  drivers/clk/rockchip/clk.c     |   9 +++
>>  drivers/clk/rockchip/clk.h     |  27 ++++++++
>>  4 files changed, 184 insertions(+)
>>  create mode 100644 drivers/clk/rockchip/clk-ddr.c
>>
>> diff --git a/drivers/clk/rockchip/Makefile=20
>> b/drivers/clk/rockchip/Makefile
>> index f47a2fa..b5f2c8e 100644
>> --- a/drivers/clk/rockchip/Makefile
>> +++ b/drivers/clk/rockchip/Makefile
>> @@ -8,6 +8,7 @@ obj-y    +=3D clk-pll.o
>>  obj-y    +=3D clk-cpu.o
>>  obj-y    +=3D clk-inverter.o
>>  obj-y    +=3D clk-mmc-phase.o
>> +obj-y    +=3D clk-ddr.o
>>  obj-$(CONFIG_RESET_CONTROLLER)    +=3D softrst.o
>>
>>  obj-y    +=3D clk-rk3036.o
>> diff --git a/drivers/clk/rockchip/clk-ddr.c=20
>> b/drivers/clk/rockchip/clk-ddr.c
>> new file mode 100644
>> index 0000000..5b6630d
>> --- /dev/null
>> +++ b/drivers/clk/rockchip/clk-ddr.c
>> @@ -0,0 +1,147 @@
>> +/*
>> + * Copyright (c) 2016 Rockchip Electronics Co. Ltd.
>> + * Author: Lin Huang <hl@rock-chips.com>
>> + *
>> + * This program is free software; you can redistribute it and/or mo=
dify
>> + * it under the terms of the GNU General Public License as publishe=
d by
>> + * the Free Software Foundation; either version 2 of the License, o=
r
>> + * (at your option) any later version.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + */
>> +
>> +#include <linux/of.h>
>> +#include <linux/slab.h>
>> +#include <linux/io.h>
>> +#include <linux/clk.h>
>> +#include <linux/clk-provider.h>
>> +#include "clk.h"
>> +
>
> alphabetical order would be better.
     Okay, will fix next version, thank you.
>
>> +struct rockchip_ddrclk {
>> +    struct clk_hw    hw;
>> +    void __iomem    *reg_base;
>> +    int        mux_offset;
>> +    int        mux_shift;
>> +    int        mux_width;
>> +    int        mux_flag;
>> +    int        div_shift;
>> +    int        div_width;
>> +    int        div_flag;
>> +    spinlock_t    *lock;
>> +};
>> +
>> +#define to_rockchip_ddrclk_hw(hw) container_of(hw, struct=20
>> rockchip_ddrclk, hw)
>> +#define val_mask(width)    ((1 << (width)) - 1)
>> +
>> +static int rockchip_ddrclk_set_rate(struct clk_hw *hw, unsigned lon=
g=20
>> drate,
>> +                    unsigned long prate)
>> +{
>> +    struct rockchip_ddrclk *ddrclk =3D to_rockchip_ddrclk_hw(hw);
>> +    unsigned long flags;
>> +
>> +    spin_lock_irqsave(ddrclk->lock, flags);
>> +
>> +    /* TODO: set ddr rate in bl31 */
>> +
>> +    spin_unlock_irqrestore(ddrclk->lock, flags);
>> +
>
> What do you wanna protect here?
     I am not sure for now, when i finish this function,
     if there nothing need protect i will remove it. Thank you.
>
>> +    return 0;
>> +}
>> +
>> +static unsigned long
>> +rockchip_ddrclk_recalc_rate(struct clk_hw *hw,
>> +                unsigned long parent_rate)
>> +{
>> +    struct rockchip_ddrclk *ddrclk =3D to_rockchip_ddrclk_hw(hw);
>> +    int val;
>> +
>> +    val =3D clk_readl(ddrclk->reg_base +
>> +            ddrclk->mux_offset) >> ddrclk->div_shift;
>> +    val &=3D val_mask(ddrclk->div_width);
>> +
>> +    return DIV_ROUND_UP_ULL((u64)parent_rate, val + 1);
>> +}
>> +
>> +static long clk_ddrclk_round_rate(struct clk_hw *hw, unsigned long=20
>> rate,
>> +                  unsigned long *prate)
>> +{
>> +    return rate;
>> +}
>> +
>> +static u8 rockchip_ddrclk_get_parent(struct clk_hw *hw)
>> +{
>> +    struct rockchip_ddrclk *ddrclk =3D to_rockchip_ddrclk_hw(hw);
>> +    int num_parents =3D clk_hw_get_num_parents(hw);
>> +    u32 val;
>> +
>> +    val =3D clk_readl(ddrclk->reg_base +
>> +            ddrclk->mux_offset) >> ddrclk->mux_shift;
>> +    val &=3D val_mask(ddrclk->mux_width);
>> +
>> +    if (val >=3D num_parents)
>> +        return -EINVAL;
>> +
>> +    return val;
>> +}
>> +
>> +static const struct clk_ops rockchip_ddrclk_ops =3D {
>> +    .recalc_rate =3D rockchip_ddrclk_recalc_rate,
>> +    .set_rate =3D rockchip_ddrclk_set_rate,
>> +    .round_rate =3D clk_ddrclk_round_rate,
>> +    .get_parent =3D rockchip_ddrclk_get_parent,
>> +};
>> +
>> +struct clk *rockchip_clk_register_ddrclk(const char *name, int flag=
s,
>> +                     const char *const *parent_names,
>> +                     u8 num_parents, int mux_offset,
>> +                     int mux_shift, int mux_width,
>> +                     int mux_flag, int div_shift,
>> +                     int div_width, int div_flag,
>> +                     void __iomem *reg_base,
>> +                     spinlock_t *lock)
>> +{
>> +    struct rockchip_ddrclk *ddrclk;
>> +    struct clk_init_data init;
>> +    struct clk *clk;
>> +    int ret;
>> +
>> +    ddrclk =3D kzalloc(sizeof(*ddrclk), GFP_KERNEL);
>> +    if (!ddrclk)
>> +        return ERR_PTR(-ENOMEM);
>> +
>> +    init.name =3D name;
>> +    init.parent_names =3D parent_names;
>> +    init.num_parents =3D num_parents;
>> +    init.ops =3D &rockchip_ddrclk_ops;
>> +
>> +    init.flags =3D flags;
>> +    init.flags |=3D CLK_SET_RATE_NO_REPARENT;
>> +    init.flags |=3D CLK_GET_RATE_NOCACHE;
>
> can we combine these two?
>
>> +
>> +    ddrclk->reg_base =3D reg_base;
>> +    ddrclk->lock =3D lock;
>> +    ddrclk->hw.init =3D &init;
>> +    ddrclk->mux_offset =3D mux_offset;
>> +    ddrclk->mux_shift =3D mux_shift;
>> +    ddrclk->mux_width =3D mux_width;
>> +    ddrclk->mux_flag =3D mux_flag;
>> +    ddrclk->div_shift =3D div_shift;
>> +    ddrclk->div_width =3D div_width;
>> +    ddrclk->div_flag =3D div_flag;
>> +
>> +    clk =3D clk_register(NULL, &ddrclk->hw);
>> +    if (IS_ERR(clk)) {
>> +        pr_err("%s: could not register ddrclk %s\n", __func__,   =20
>> name);
>> +        ret =3D PTR_ERR(clk);
>
> Why do you need PTR_ERR and then convert back again.
     Yes, there is only one error for ret value, so i can return "NULL"=
=20
directly, thank you.
>
>> +        goto free_ddrclk;
>> +    }
>> +
>> +    return clk;
>> +
>> +free_ddrclk:
>> +    kfree(ddrclk);
>> +    return ERR_PTR(ret);
>> +}
>> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
>> index 7ffd134..6ac1aa5 100644
>> --- a/drivers/clk/rockchip/clk.c
>> +++ b/drivers/clk/rockchip/clk.c
>> @@ -484,6 +484,15 @@ void __init rockchip_clk_register_branches(
>>                  list->gate_offset, list->gate_shift,
>>                  list->gate_flags, flags, &ctx->lock);
>>              break;
>> +        case branch_ddrc:
>> +            clk =3D rockchip_clk_register_ddrclk(
>> +                list->name, list->flags,
>> +                list->parent_names, list->num_parents,
>> +                list->muxdiv_offset, list->mux_shift,
>> +                list->mux_width, list->mux_flags,
>> +                list->div_shift, list->div_width,
>> +                list->div_flags, ctx->reg_base, &ctx->lock);
>> +            break;
>>          }
>>
>>          /* none of the cases above matched */
>> diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
>> index 2194ffa..4033fe4 100644
>> --- a/drivers/clk/rockchip/clk.h
>> +++ b/drivers/clk/rockchip/clk.h
>> @@ -281,6 +281,13 @@ struct clk *rockchip_clk_register_mmc(const cha=
r=20
>> *name,
>>                  const char *const *parent_names, u8 num_parents,
>>                  void __iomem *reg, int shift);
>>
>> +struct clk *rockchip_clk_register_ddrclk(const char *name, int flag=
s,
>> +            const char *const *parent_names, u8 num_parents,
>> +            int mux_offset, int mux_shift, int mux_width,
>> +            int mux_flag, int div_shift, int div_width,
>> +            int div_flag, void __iomem *reg_base,
>> +            spinlock_t *lock);
>> +
>>  #define ROCKCHIP_INVERTER_HIWORD_MASK    BIT(0)
>>
>>  struct clk *rockchip_clk_register_inverter(const char *name,
>> @@ -299,6 +306,7 @@ enum rockchip_clk_branch_type {
>>      branch_mmc,
>>      branch_inverter,
>>      branch_factor,
>> +    branch_ddrc,
>>  };
>>
>>  struct rockchip_clk_branch {
>> @@ -488,6 +496,25 @@ struct rockchip_clk_branch {
>>          .child        =3D ch,                \
>>      }
>>
>> +#define COMPOSITE_DDRC(_id, cname, pnames, f, mo, ms, mw, mf,    \
>> +             ds, dw, df)                \
>
> it seems a duplication exept for branch_type.
     We just need this different branch_type, so we can add case in
     rockchip_clk_register_branches() and call=20
rockchip_clk_register_ddrclk().
>
>> +    {                            \
>> +        .id        =3D _id,                \
>> +        .branch_type    =3D branch_ddrc,            \
>> +        .name        =3D cname,            \
>> +        .parent_names    =3D pnames,            \
>> +        .num_parents    =3D ARRAY_SIZE(pnames),        \
>> +        .flags        =3D f,                \
>> +        .muxdiv_offset    =3D mo,                \
>> +        .mux_shift    =3D ms,                \
>> +        .mux_width    =3D mw,                \
>> +        .mux_flags    =3D mf,                \
>> +        .div_shift    =3D ds,                \
>> +        .div_width    =3D dw,                \
>> +        .div_flags    =3D df,                \
>> +        .gate_offset    =3D -1,                \
>> +    }
>> +
>>  #define MUX(_id, cname, pnames, f, o, s, w, mf)            \
>>      {                            \
>>          .id        =3D _id,                \
>>
>
>

--=20
Lin Huang


