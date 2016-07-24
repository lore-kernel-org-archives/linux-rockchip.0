From: hl <hl@rock-chips.com>
Subject: Re: [PATCH v3 1/7] firmware: rockchip: sip: Add rockchip SIP runtime
 service
Date: Sun, 24 Jul 2016 16:00:35 +0800
Message-ID: <579475A3.2040506@rock-chips.com>
References: <1469178440-4668-1-git-send-email-hl@rock-chips.com>
 <1469178440-4668-2-git-send-email-hl@rock-chips.com>
 <1497407.KruMAzy5tb@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1497407.KruMAzy5tb@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: tixy@linaro.org, typ@rock-chips.com, linux-rockchip@lists.infradead.org, airlied@linux.ie, mturquette@baylibre.com, dbasehore@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, xsf@rock-chips.com, cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com, linux-arm-kernel@lists.infradead.org, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 2016=E5=B9=B407=E6=9C=8823=E6=97=A5 04:50, Heiko St=C3=BCbner wrote:
> Hi again,
>
> one bigger thing I noticed only now.
>
> Am Freitag, 22. Juli 2016, 17:07:14 schrieben Sie:
>> diff --git a/drivers/firmware/rockchip_sip.c
>> b/drivers/firmware/rockchip_sip.c new file mode 100644
>> index 0000000..7756af9
>> --- /dev/null
>> +++ b/drivers/firmware/rockchip_sip.c
>> @@ -0,0 +1,64 @@
>> +/*
>> + * This program is free software; you can redistribute it and/or mo=
dify
>> + * it under the terms of the GNU General Public License version 2 a=
s
>> + * published by the Free Software Foundation.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + *
>> + * Copyright (C) 2016 ARM Limited
>> + */
>> +#include <linux/errno.h>
>> +#include <linux/linkage.h>
>> +#include <linux/of.h>
>> +#include <linux/pm.h>
>> +#include <linux/printk.h>
>> +#include "rockchip_sip.h"
>> +
>> +typedef unsigned long (psci_fn)(unsigned long, unsigned long,
>> +				unsigned long, unsigned long);
>> +asmlinkage psci_fn __invoke_psci_fn_smc;
>> +
>> +#define CONFIG_DRAM_INIT	0x00
>> +#define CONFIG_DRAM_SET_RATE	0x01
>> +#define CONFIG_DRAM_ROUND_RATE	0x02
>> +#define CONFIG_DRAM_SET_AT_SR	0x03
>> +#define CONFIG_DRAM_GET_BW	0x04
>> +#define CONFIG_DRAM_GET_RATE	0x05
>> +#define CONFIG_DRAM_CLR_IRQ	0x06
>> +#define CONFIG_DRAM_SET_PARAM   0x07
>> +
>> +uint64_t sip_smc_ddr_init(void)
>> +{
>> +	return __invoke_psci_fn_smc(SIP_DDR_FREQ, 0,
>> +				    0, CONFIG_DRAM_INIT);
> I don't think that is legal to use. For one this function itself is d=
eclared
> static in the psci code - most likely for a specific reason.
>
> And also if anything invoke_psci_fn would hold the correct pointer de=
pending
> on the calling method.
>
> But as said above, accessing psci static stuff is most likely wrong. =
Maybe the
> two psci people I've included can tell us how this is to be accessed.
>
   Thanks Heiko. Hope Sudeep Holla and Lorenzo Pieralisi can give me ad=
vice.
> Heiko
>
>> +}
>> +
>> +uint64_t sip_smc_set_ddr_param(uint64_t param)
>> +{
>> +	return __invoke_psci_fn_smc(SIP_DDR_FREQ, param,
>> +				    0, CONFIG_DRAM_SET_PARAM);
>> +}
>> +
>> +uint64_t sip_smc_set_ddr_rate(uint64_t rate)
>> +{
>> +	return __invoke_psci_fn_smc(SIP_DDR_FREQ, rate, 0,
>> +				    CONFIG_DRAM_SET_RATE);
>> +}
>> +
>> +uint64_t sip_smc_get_ddr_rate(void)
>> +{
>> +	return __invoke_psci_fn_smc(SIP_DDR_FREQ, 0, 0, CONFIG_DRAM_GET_RA=
TE);
>> +}
>> +
>> +uint64_t sip_smc_clr_ddr_irq(void)
>> +{
>> +	return __invoke_psci_fn_smc(SIP_DDR_FREQ, 0, 0, CONFIG_DRAM_CLR_IR=
Q);
>> +}
>> +
>> +uint64_t sip_smc_get_call_count(void)
>> +{
>> +	return __invoke_psci_fn_smc(SIP_SVC_CALL_COUNT, 0, 0, 0);
>> +}
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>
>

--=20
Lin Huang
