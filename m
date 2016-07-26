From: hl <hl@rock-chips.com>
Subject: Re: [PATCH v3 1/7] firmware: rockchip: sip: Add rockchip SIP runtime
 service
Date: Tue, 26 Jul 2016 09:13:31 +0800
Message-ID: <5796B93B.9070109@rock-chips.com>
References: <1469178440-4668-1-git-send-email-hl@rock-chips.com>
 <1469178440-4668-2-git-send-email-hl@rock-chips.com>
 <1497407.KruMAzy5tb@diego> <6d3827c1-976c-ba96-600d-a405da2f645c@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <6d3827c1-976c-ba96-600d-a405da2f645c@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sudeep Holla <sudeep.holla@arm.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: mark.yao@rock-chips.com, myungjoo.ham@samsung.com, cw00.choi@samsung.com, airlied@linux.ie, mturquette@baylibre.com, dbasehore@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com, linux-arm-kernel@lists.infradead.org, tixy@linaro.org, xsf@rock-chips.com, typ@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Sudeep Holla,

On 2016=E5=B9=B407=E6=9C=8826=E6=97=A5 01:36, Sudeep Holla wrote:
>
>
> On 22/07/16 21:50, Heiko St=C3=BCbner wrote:
>> Hi again,
>>
>> one bigger thing I noticed only now.
>>
>> Am Freitag, 22. Juli 2016, 17:07:14 schrieben Sie:
>>> diff --git a/drivers/firmware/rockchip_sip.c
>>> b/drivers/firmware/rockchip_sip.c new file mode 100644
>>> index 0000000..7756af9
>>> --- /dev/null
>>> +++ b/drivers/firmware/rockchip_sip.c
>>> @@ -0,0 +1,64 @@
>>> +/*
>>> + * This program is free software; you can redistribute it and/or=20
>>> modify
>>> + * it under the terms of the GNU General Public License version 2 =
as
>>> + * published by the Free Software Foundation.
>>> + *
>>> + * This program is distributed in the hope that it will be useful,
>>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>>> + * GNU General Public License for more details.
>>> + *
>>> + * Copyright (C) 2016 ARM Limited
>>> + */
>>> +#include <linux/errno.h>
>>> +#include <linux/linkage.h>
>>> +#include <linux/of.h>
>>> +#include <linux/pm.h>
>>> +#include <linux/printk.h>
>>> +#include "rockchip_sip.h"
>>> +
>>> +typedef unsigned long (psci_fn)(unsigned long, unsigned long,
>>> +                unsigned long, unsigned long);
>>> +asmlinkage psci_fn __invoke_psci_fn_smc;
>>> +
>>> +#define CONFIG_DRAM_INIT    0x00
>>> +#define CONFIG_DRAM_SET_RATE    0x01
>>> +#define CONFIG_DRAM_ROUND_RATE    0x02
>>> +#define CONFIG_DRAM_SET_AT_SR    0x03
>>> +#define CONFIG_DRAM_GET_BW    0x04
>>> +#define CONFIG_DRAM_GET_RATE    0x05
>>> +#define CONFIG_DRAM_CLR_IRQ    0x06
>>> +#define CONFIG_DRAM_SET_PARAM   0x07
>>> +
>>> +uint64_t sip_smc_ddr_init(void)
>>> +{
>>> +    return __invoke_psci_fn_smc(SIP_DDR_FREQ, 0,
>>> +                    0, CONFIG_DRAM_INIT);
>>
>> I don't think that is legal to use. For one this function itself is=20
>> declared
>> static in the psci code - most likely for a specific reason.
>>
>> And also if anything invoke_psci_fn would hold the correct pointer=20
>> depending
>> on the calling method.
>>
>> But as said above, accessing psci static stuff is most likely wrong.=
=20
>> Maybe the
>> two psci people I've included can tell us how this is to be accessed=
=2E
>>
>
> Thanks Heiko for looping us in this thread.
>
> The feature being added in this series is completely out of scope of
> PSCI specification and hence PSCI can't be used. Firstly we need to
> audit if these are need in Linux and why they can't be handled within
> the existing PSCI APIs. But yes, this series is misuse of PSCI.
>
> I also see to know that ARM Trusted Firmware community has not accept=
ed
> this PSCI approach, so this patches are useless without that.
>
> If they are still needed they need to make use of SMC Calling Convent=
ion
> (arm_smccc_smc). Either make these smc function identifiers standard =
on
> their platforms and use them directly in the driver. If they tend to
> change too much across their platforms, use the DT approach with
> appropriate bindings.
Thanks for your suggestion, i will update the code in next version.

--=20
Lin Huang
