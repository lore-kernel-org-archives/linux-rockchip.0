From: Caesar Wang <caesar.upstream@gmail.com>
Subject: Re: [PATCH v2] ARM: rockchip: add reboot notifier
Date: Fri, 11 Sep 2015 14:22:20 +0800
Message-ID: <55F2731C.40006@gmail.com>
References: <1441883089-26567-1-git-send-email-andy.yan@rock-chips.com> <CANCyOWb4ih1Dt8MoAKZD-eYtH-xuhgo1b6o7-oh3eCsfZnncRQ@mail.gmail.com> <55F24D1B.6050609@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55F24D1B.6050609@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Eddie Cai <eddie.cai.kernel@gmail.com>, khilman@linaro.org, Russell King <linux@arm.linux.org.uk>, =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, arnd@arndb.de, sjg@chromium.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, olof@lixom.net, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


=E5=9C=A8 2015=E5=B9=B409=E6=9C=8811=E6=97=A5 11:40, Andy Yan =E5=86=99=
=E9=81=93:
> Hi Eddie:
>
> On 2015=E5=B9=B409=E6=9C=8811=E6=97=A5 10:01, Eddie Cai wrote:
>> Hi Andy
>>
>> 2015-09-10 19:04 GMT+08:00 Andy Yan <andy.yan@rock-chips.com>:
>>> rockchip platform have a protocol to pass the kernel reboot
>>> mode to bootloader by some special registers when system reboot.
>>> By this way the bootloader can take different action according
>>> to the different kernel reboot mode, for example, command
>>> "reboot loader" will reboot the board to rockusb mode, this is
>>> a very convenient way to get the board enter download mode.
>>>
>>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>>> ---
>>>
>>> Changes in v2:
>>>    - check cpu dt node
>>>    - remove a unnecessary of_put_node in function=20
>>> rockchip_get_pmu_regmap
>>>    - fix a align issue
>>>    - use reboot_notifier instead of restart_handler
>>>
>>>   arch/arm/mach-rockchip/Makefile |   2 +-
>>>   arch/arm/mach-rockchip/loader.h |  22 ++++++++
>>>   arch/arm/mach-rockchip/reboot.c | 111=20
>>> ++++++++++++++++++++++++++++++++++++++++
>>>   3 files changed, 134 insertions(+), 1 deletion(-)
>>>   create mode 100644 arch/arm/mach-rockchip/loader.h
>>>   create mode 100644 arch/arm/mach-rockchip/reboot.c
>>>
>>> diff --git a/arch/arm/mach-rockchip/Makefile=20
>>> b/arch/arm/mach-rockchip/Makefile
>>> index 5c3a9b2..cd291e3 100644
>>> --- a/arch/arm/mach-rockchip/Makefile
>>> +++ b/arch/arm/mach-rockchip/Makefile
>>> @@ -1,5 +1,5 @@
>>>   CFLAGS_platsmp.o :=3D -march=3Darmv7-a
>>>
>>> -obj-$(CONFIG_ARCH_ROCKCHIP) +=3D rockchip.o
>>> +obj-$(CONFIG_ARCH_ROCKCHIP) +=3D rockchip.o reboot.o
>>>   obj-$(CONFIG_PM_SLEEP) +=3D pm.o sleep.o
>>>   obj-$(CONFIG_SMP) +=3D headsmp.o platsmp.o
>>> diff --git a/arch/arm/mach-rockchip/loader.h=20
>>> b/arch/arm/mach-rockchip/loader.h
>>> new file mode 100644
>>> index 0000000..bf51baa
>>> --- /dev/null
>>> +++ b/arch/arm/mach-rockchip/loader.h
>>> @@ -0,0 +1,22 @@
>>> +#ifndef __MACH_ROCKCHIP_LOADER_H
>>> +#define __MACH_ROCKCHIP_LOADER_H
>>> +
>>> +/*high 24 bits is tag, low 8 bits is type*/
>>> +#define SYS_LOADER_REBOOT_FLAG   0x5242C300
>>> +
>>> +enum {
>>> +       BOOT_NORMAL =3D 0, /* normal boot */
>>> +       BOOT_LOADER,     /* enter loader rockusb mode */
>>> +       BOOT_MASKROM,    /* enter maskrom rockusb mode (not support=
=20
>>> now) */
>>> +       BOOT_RECOVER,    /* enter recover */
>>> +       BOOT_NORECOVER,  /* do not enter recover */
>>> +       BOOT_SECONDOS,   /* boot second OS (not support now)*/
>>> +       BOOT_WIPEDATA,   /* enter recover and wipe data. */
>>> +       BOOT_WIPEALL,    /* enter recover and wipe all data. */
>>> +       BOOT_CHECKIMG,   /* check firmware img with backup part*/
>>> +       BOOT_FASTBOOT,   /* enter fast boot mode */
>>> +       BOOT_SECUREBOOT_DISABLE,
>>> +       BOOT_CHARGING,   /* enter charge mode */
>>> +       BOOT_MAX         /* MAX VALID BOOT TYPE.*/
>>> +};
>>> +#endif
>>> diff --git a/arch/arm/mach-rockchip/reboot.c=20
>>> b/arch/arm/mach-rockchip/reboot.c
>>> new file mode 100644
>>> index 0000000..c29f031e
>>> --- /dev/null
>>> +++ b/arch/arm/mach-rockchip/reboot.c
>>> @@ -0,0 +1,111 @@
>>> +/*
>>> + * Copyright (c) 2015, Fuzhou Rockchip Electronics Co., Ltd
>>> + *
>>> + * This program is free software; you can redistribute it and/or=20
>>> modify
>>> + * it under the terms of the GNU General Public License as=20
>>> published by
>>> + * the Free Software Foundation; either version 2 of the License, =
or
>>> + * (at your option) any later version.
>>> + */
>>> +#include <linux/init.h>
>>> +#include <linux/module.h>
>>> +#include <linux/kernel.h>
>>> +#include <linux/of.h>
>>> +#include <linux/of_address.h>
>>> +#include <linux/reboot.h>
>>> +#include <linux/regmap.h>
>>> +#include <linux/mfd/syscon.h>
>>> +#include "loader.h"
>>> +
>>> +#define RK3188_PMU_SYS_REG0             0x40
>>> +#define RK3288_PMU_SYS_REG0             0x94
>> I think RK3066 and RK3368 also supported in upstream kernel. And the
>> protocol is the same. So it would be better to support it here.
>    RK3066 is supported, please see function=20
> rockchip_get_reboot_flag_regmap bellow
>    it uses the same register offset as rk3188
>
>    RK3368 related code is under arm64, I don't know how to handle it.

Maybe, can we put the driver into  drivers/soc/rockchip/?

> Heiko, do you have any suggestion?
>>> +
>>> +struct regmap *regmap;
>>> +int flag_reg;
>>> +
>>> +static int rockchip_get_pmu_regmap(void)
>>> +{
>>> +       struct device_node *node;
>>> +
>>> +       node =3D of_find_node_by_path("/cpus");
>>> +       if (!node)
>>> +               return -ENODEV;
>>> +
>>> +       regmap =3D syscon_regmap_lookup_by_phandle(node, "rockchip,=
pmu");
>>> +       of_node_put(node);
>>> +       if (!IS_ERR(regmap))
>>> +               return 0;
>>> +
>>> +       regmap =3D=20
>>> syscon_regmap_lookup_by_compatible("rockchip,rk3066-pmu");
>>> +       if (!IS_ERR(regmap))
>>> +               return 0;
>>> +
>>> +       return -ENODEV;
>>> +}
>>> +
>>> +static int rockchip_get_reboot_flag_regmap(void)
>>> +{
>>> +       int ret =3D rockchip_get_pmu_regmap();
>>> +
>>> +       if (ret < 0)
>>> +               return ret;
>>> +
>>> +       if (of_machine_is_compatible("rockchip,rk3288")) {
>>> +               flag_reg =3D RK3288_PMU_SYS_REG0;
>>> +               return 0;
>>> +       } else if (of_machine_is_compatible("rockchip,rk3066a") ||
>>> + of_machine_is_compatible("rockchip,rk3066b") ||
>>> + of_machine_is_compatible("rockchip,rk3188")) {
>>> +               flag_reg =3D RK3188_PMU_SYS_REG0;
>>> +               return 0;
>>> +       }
>>> +
>>> +       return -ENODEV;
>>> +}
>>> +
>>> +static void rockchip_get_reboot_flag(const char *cmd, u32 *flag)
>>> +{
>>> +       *flag =3D SYS_LOADER_REBOOT_FLAG + BOOT_NORMAL;
>>> +
>>> +       if (cmd) {
>>> +               if (!strcmp(cmd, "loader") || !strcmp(cmd,=20
>>> "bootloader"))
>>> +                       *flag =3D SYS_LOADER_REBOOT_FLAG + BOOT_LOA=
DER;
>>> +               else if (!strcmp(cmd, "recovery"))
>>> +                       *flag =3D SYS_LOADER_REBOOT_FLAG + BOOT_REC=
OVER;
>>> +               else if (!strcmp(cmd, "charge"))
>>> +                       *flag =3D SYS_LOADER_REBOOT_FLAG + BOOT_CHA=
RGING;
>>> +       }
>>> +}
>>> +
>>> +static int rockchip_reboot_notify(struct notifier_block *this,
>>> +                                 unsigned long mode, void *cmd)
>>> +{
>>> +       u32 flag;
>>> +
>>> +       rockchip_get_reboot_flag(cmd, &flag);
>>> +       regmap_write(regmap, flag_reg, flag);
>>> +
>>> +       return NOTIFY_DONE;
>>> +}
>>> +
>>> +static struct notifier_block rockchip_reboot_handler =3D {
>>> +       .notifier_call =3D rockchip_reboot_notify,
>>> +};
>>> +
>>> +static int __init rockchip_reboot_init(void)
>>> +{
>>> +       int ret =3D 0;
>>> +
>>> +       if (!rockchip_get_reboot_flag_regmap()) {
>>> +               ret =3D=20
>>> register_reboot_notifier(&rockchip_reboot_handler);
>>> +               if (ret)
>>> +                       pr_err("%s: cannot register reboot handler,=
=20
>>> %d\n",
>>> +                              __func__, ret);
>>> +       }
>>> +
>>> +       return ret;
>>> +}
>>> +
>>> +module_init(rockchip_reboot_init);
>>> +MODULE_AUTHOR("Andy Yan <andy.yan@rock-chips.com");
>>> +MODULE_DESCRIPTION("Rockchip platform reboot notifier driver");
>>> +MODULE_LICENSE("GPL");
>>> --=20
>>> 1.9.1
>>>
>>>
>>> _______________________________________________
>>> Linux-rockchip mailing list
>>> Linux-rockchip@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>
>>
>>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
