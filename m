From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 2/2] phy: add a driver for the Rockchip SoC internal
 eMMC PHY
Date: Wed, 3 Feb 2016 15:24:23 +0800
Message-ID: <56B1AB27.3020906@rock-chips.com>
References: <1451956034-24421-1-git-send-email-shawn.lin@rock-chips.com>
 <1451956081-24501-1-git-send-email-shawn.lin@rock-chips.com>
 <56B1A0A7.7060109@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <56B1A0A7.7060109@ti.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon,

On 2016/2/3 14:39, Kishon Vijay Abraham I wrote:
> Hi,
>
> On Tuesday 05 January 2016 06:38 AM, Shawn Lin wrote:
>> This patch to add a generic PHY driver for ROCKCHIP eMMC PHY.
>> Access the PHY via registers provided by GRF (general register

[...]

>> + *
>> + * Copyright (C) 2015 Shawn Lin <shawn.lin@rock-chips.com>
>> + * Copyright (C) 2015 ROCKCHIP, Inc.
>
> 2016?

:) I will update it.

>> + *
>> + * This program is free software; you can redistribute it and/or modify
>> + * it under the terms of the GNU General Public License as published by

[...]

>> +	}
>> +
>> +	/*
>> +	 * Enable analog DLL circuits, and we need extra 10.2us
>> +	 * for dll to be ready for work.
>> +	 */
>> +	regmap_write(rk_phy->reg_base,
>> +		     rk_phy->reg_offset + GRF_EMMCPHY_CON6,
>> +		     HIWORD_UPDATE(PHYCTRL_ENDLL_ENABLE,
>> +				   PHYCTRL_ENDLL_MASK,
>> +				   PHYCTRL_ENDLL_SHIFT));
>> +	udelay(11);
>
> add a comment for this delay too.

Got it.

>> +	regmap_read(rk_phy->reg_base,
>> +		    rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
>> +		    &dllrdy);
>> +	dllrdy = (dllrdy >> PHYCTRL_DLLRDY_SHIFT) & PHYCTRL_DLLRDY_MASK;
>> +	if (dllrdy != PHYCTRL_DLLRDY_DONE) {
>> +		pr_err("rockchip_emmc_phy_power: dllrdy timeout.\n");
>> +		return -ETIMEDOUT;
>> +	}
>> +
>> +	return 0;
>> +}
>> +

[...]

>> +static int rockchip_emmc_phy_init(struct phy *phy)
>> +{
>> +	return 0;
>> +}
>> +
>> +static int rockchip_emmc_phy_exit(struct phy *phy)
>> +{
>> +	return 0;
>> +}
>
> empty init/exit functions are not required.
>

yep.

> Thanks
> Kishon
>
>
>


-- 
Best Regards
Shawn Lin
