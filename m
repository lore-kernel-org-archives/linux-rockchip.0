From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 2/2] phy: add a driver for the Rockchip SoC internal eMMC
 PHY
Date: Mon, 4 Jan 2016 16:36:30 +0800
Message-ID: <568A2F0E.8070608@rock-chips.com>
References: <1451353928-23973-1-git-send-email-shawn.lin@rock-chips.com>
 <568A230F.3000605@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <568A230F.3000605@ti.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon,
On 2016/1/4 15:45, Kishon Vijay Abraham I wrote:
> Hi,
>
> On Tuesday 29 December 2015 07:22 AM, Shawn Lin wrote:
>> This patch to add a generic PHY driver for ROCKCHIP eMMC PHY.

[...]

>> +
>> +struct rockchip_emmc_phy {
>> +	unsigned int	reg_offset;
>> +	struct regmap	*reg_base;
>> +	struct phy	*phy;
>
> The phy looks unnecessary.

right, got it.

>> +	bool		state;
>
> hmm.. I want to have some sort of state machine in phy core so that individual
> PHY drivers don't have to maintain the state. However I'm not sure if all the
> PHY's will require such mechanism.
>

In general, phy core is the best place to maintain it.
Presumably, phy driver maintainer is much likely to
maintain the corresponding caller driver at the same time, so he/she
should be in charge of maintaining the on/off, init/exit pairs. From
this point, it doesn't need the state machine. But, I'm not sure if the
caller driver will always keep the on/off pairs correct.


Anyway, I will remove it from this driver. And may we request a RFC
for all sub-phy drivers to discuss this issue if we want to add the
state machine into phy core. How about?


>> +};
>> +
>> +static int rockchip_emmc_phy_power(struct rockchip_emmc_phy *rk_phy,

[...]

>> +}
>> +
>> +static int rockchip_emmc_phy_init(struct phy *phy)
>> +{
>> +	rockchip_emmc_phy_power_on(phy);
>
> do only phy initialization here, power on can be done later.

yep.

>> +	return 0;
>> +}
>> +
>> +static int rockchip_emmc_phy_exit(struct phy *phy)
>> +{
>> +	rockchip_emmc_phy_power_off(phy);
>
> same here.
>
> Thanks
> Kishon
>
>
>


-- 
Best Regards
Shawn Lin
