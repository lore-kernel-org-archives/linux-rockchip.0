From: hl <hl@rock-chips.com>
Subject: Re: [PATCH v3 6/7] PM / devfreq: rockchip: add devfreq driver for
 rk3399 dmc
Date: Sun, 24 Jul 2016 15:54:09 +0800
Message-ID: <57947421.7050006@rock-chips.com>
References: <1469178440-4668-1-git-send-email-hl@rock-chips.com>
 <1469178440-4668-7-git-send-email-hl@rock-chips.com>
 <CAP=VYLpBBXhMLdNyuYvtJ6XWn-yTof_-oEL7saB87KGY-84c9A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAP=VYLpBBXhMLdNyuYvtJ6XWn-yTof_-oEL7saB87KGY-84c9A@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Paul Gortmaker <paul.gortmaker@windriver.com>
Cc: tixy@linaro.org, typ@rock-chips.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, airlied@linux.ie, mturquette@baylibre.com, dbasehore@chromium.org, sboyd@codeaurora.org, LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, dianders@chromium.org, xsf@rock-chips.com, Chanwoo Choi <cw00.choi@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, myungjoo.ham@samsung.com, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Paul,

On 2016=E5=B9=B407=E6=9C=8823=E6=97=A5 04:24, Paul Gortmaker wrote:
> On Fri, Jul 22, 2016 at 5:07 AM, Lin Huang <hl@rock-chips.com> wrote:
>> base on dfi result, we do ddr frequency scaling, register
>> dmc driver to devfreq framework, and use simple-ondemand
>> policy.
>>
>> Signed-off-by: Lin Huang <hl@rock-chips.com>
>> ---
>> Changes in v3:
>> - operate dram setting through sip call
>> - imporve set rate flow
>>
>> Changes in v2:
>> - None
>>
>> Changes in v1:
>> - move dfi controller to event
>> - fix set voltage sequence when set rate fail
>> - change Kconfig type from tristate to bool
>> - move unuse EXPORT_SYMBOL_GPL()
>>
>>   drivers/devfreq/Kconfig                 |   1 +
>>   drivers/devfreq/Makefile                |   1 +
>>   drivers/devfreq/rockchip/Kconfig        |  15 +
>>   drivers/devfreq/rockchip/Makefile       |   2 +
>>   drivers/devfreq/rockchip/rk3399_dmc.c   | 482 ++++++++++++++++++++=
++++++++++++
>>   drivers/devfreq/rockchip/rockchip_dmc.c | 143 ++++++++++
>>   include/soc/rockchip/rockchip_dmc.h     |  45 +++
>>   7 files changed, 689 insertions(+)
>>   create mode 100644 drivers/devfreq/rockchip/Kconfig
>>   create mode 100644 drivers/devfreq/rockchip/Makefile
>>   create mode 100644 drivers/devfreq/rockchip/rk3399_dmc.c
>>   create mode 100644 drivers/devfreq/rockchip/rockchip_dmc.c
>>   create mode 100644 include/soc/rockchip/rockchip_dmc.h
>>
>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>> index a5be56e..cb67246 100644
>> --- a/drivers/devfreq/Kconfig
>> +++ b/drivers/devfreq/Kconfig
>> @@ -101,5 +101,6 @@ config ARM_TEGRA_DEVFREQ
>>            operating frequencies and voltages with OPP support.
>>
>>   source "drivers/devfreq/event/Kconfig"
>> +source "drivers/devfreq/rockchip/Kconfig"
>>
>>   endif # PM_DEVFREQ
>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>> index 09f11d9..48e2ae6 100644
>> --- a/drivers/devfreq/Makefile
>> +++ b/drivers/devfreq/Makefile
>> @@ -9,6 +9,7 @@ obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)       +=3D governo=
r_passive.o
>>   # DEVFREQ Drivers
>>   obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)   +=3D exynos-bus.o
>>   obj-$(CONFIG_ARM_TEGRA_DEVFREQ)                +=3D tegra-devfreq.=
o
>> +obj-$(CONFIG_ARCH_ROCKCHIP)            +=3D rockchip/
>>
>>   # DEVFREQ Event Drivers
>>   obj-$(CONFIG_PM_DEVFREQ_EVENT)         +=3D event/
>> diff --git a/drivers/devfreq/rockchip/Kconfig b/drivers/devfreq/rock=
chip/Kconfig
>> new file mode 100644
>> index 0000000..7fb1cff
>> --- /dev/null
>> +++ b/drivers/devfreq/rockchip/Kconfig
>> @@ -0,0 +1,15 @@
>> +config ARM_ROCKCHIP_DMC_DEVFREQ
>> +       bool "ARM ROCKCHIP DMC DEVFREQ Driver"
>> +       depends on ARCH_ROCKCHIP
>> +       help
>> +         This adds the DEVFREQ driver framework for the rockchip dm=
c.
>> +
>> +config ARM_RK3399_DMC_DEVFREQ
>> +       bool "ARM RK3399 DMC DEVFREQ Driver"
> Since you are using bool Kconfigs for your driver, please do not use
> module.h or MODULE_<xyz> tags in your driver, and use the builtin
> register function.
>
> Alternatively if there really is  a use case for it to be a modular d=
river
> then use a tristate Kconfig.
Thanks for pointing it, will fix it next version.
> THanks,
> Paul.
> --
>
>> +       depends on ARM_ROCKCHIP_DMC_DEVFREQ
>> +       select PM_OPP
>> +       select DEVFREQ_GOV_SIMPLE_ONDEMAND
>> +       help
>> +          This adds the DEVFREQ driver for the RK3399 dmc. It sets =
the frequency
>> +          for the memory controller and reads the usage counts from=
 hardware.
>> +
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>
>

--=20
Lin Huang
