From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v2 2/2] phy: rockchip-emmc: use regmap_read_poll_timeout
 to poll dllrdy
Date: Thu, 11 Jan 2018 09:25:39 +0800
Message-ID: <094b3d34-1823-80f2-ee58-9b5501854c59@rock-chips.com>
References: <1515581362-181200-1-git-send-email-shawn.lin@rock-chips.com>
 <1515581362-181200-2-git-send-email-shawn.lin@rock-chips.com>
 <20180110174615.GA30753@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180110174615.GA30753@google.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>, Doug Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Ziyuan Xu <xzy.xu@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

As we communicate through QQ, Shawn had been on vacation util next week.

在 2018年01月11日 01:46, Brian Norris 写道:
> + Caesar
>
> IIUC, you didn't CC him? Also, he already sent a v2 of this patchset,
> withi some minor difference.
>
> On Wed, Jan 10, 2018 at 06:49:22PM +0800, Shawn Lin wrote:
>> Just use the API instead of open-coding it, no functional change
>> intended.
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> Reviewed-by: Brian Norris <briannorris@chromium.org>
>> Tested-by: Caesar Wang <wxt@rock-chips.com>
>> Tested-by: Ziyuan Xu <xzy.xu@rock-chips.com>
>> ---
>>
>> Changes in v2:
>> - propagate the error and print it
>> - avoid using busy wait
>>
>>   drivers/phy/rockchip/phy-rockchip-emmc.c | 32 +++++++++++++-------------------
>>   1 file changed, 13 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
>> index 547b746..e54e78f 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
>> @@ -79,6 +79,9 @@
>>   #define PHYCTRL_IS_CALDONE(x) \
>>   	((((x) >> PHYCTRL_CALDONE_SHIFT) & \
>>   	  PHYCTRL_CALDONE_MASK) == PHYCTRL_CALDONE_DONE)
>> +#define PHYCTRL_IS_DLLRDY(x) \
>> +	((((x) >> PHYCTRL_DLLRDY_SHIFT) & \
>> +	  PHYCTRL_DLLRDY_MASK) == PHYCTRL_DLLRDY_DONE)
>>   
>>   struct rockchip_emmc_phy {
>>   	unsigned int	reg_offset;
>> @@ -93,7 +96,6 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
>>   	unsigned int dllrdy;
>>   	unsigned int freqsel = PHYCTRL_FREQSEL_200M;
>>   	unsigned long rate;
>> -	unsigned long timeout;
>>   	int ret;
>>   
>>   	/*
>> @@ -217,28 +219,20 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
> I'd probably like Doug's comment on the comment rewording (and
> functional change) since he wrote them in the first place, but this is
> also where you and Caesar differed. Caesar just deleted most of the last
> paragraph, because it really applied just to the busy wait loop, not
> really to the sleep-based loop that you're putting in here.
>
>>   	 * NOTE: There appear to be corner cases where the DLL seems to take
>>   	 * extra long to lock for reasons that aren't understood.  In some
>>   	 * extreme cases we've seen it take up to over 10ms (!).  We'll be
>> -	 * generous and give it 50ms.  We still busy wait here because:
>> +	 * generous and give it 50ms.  We still wait here because:
>>   	 * - In most cases it should be super fast.
>>   	 * - This is not called lots during normal operation so it shouldn't
>> -	 *   be a power or performance problem to busy wait.  We expect it
>> +	 *   be a power or performance problem to wait.  We expect it
> Why would it be a power problem to just "wait"? (Hint: it was only a
> potential power problem to *busy* wait, where we're spinning in a tight
> loop.)
>
>>   	 *   only at boot / resume.  In both cases, eMMC is probably on the
>> -	 *   critical path so busy waiting a little extra time should be OK.
>> +	 *   critical path so waiting a little extra time should be OK.
> If we all agree that the above *performance* reasoning is not important,
> then it should be fine to do the conversion to the sleep/polling macro,
> and I think the best comment is just to delete all the above about power
> and performance of this wait loop. It was only necessary to justify the
> udelay() loop.

Just confirmed with Shawn, we can delete the above isn't important reason.

>
> So IOW, I think Caesar's version was better :)
>
> Otherwise, my 'Reviewed-by' for both series stands.
>
> Doug, do you have any thoughts? Or at least Caesar and Shawn: please
> choose one of your patch series, not both!
>
> Brian
>
>>   	 */
>> -	timeout = jiffies + msecs_to_jiffies(50);
>> -	do {
>> -		udelay(1);
>> -
>> -		regmap_read(rk_phy->reg_base,
>> -			rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
>> -			&dllrdy);
>> -		dllrdy = (dllrdy >> PHYCTRL_DLLRDY_SHIFT) & PHYCTRL_DLLRDY_MASK;
>> -		if (dllrdy == PHYCTRL_DLLRDY_DONE)
>> -			break;
>> -	} while (!time_after(jiffies, timeout));
>> -
>> -	if (dllrdy != PHYCTRL_DLLRDY_DONE) {
>> -		pr_err("rockchip_emmc_phy_power: dllrdy timeout.\n");
>> -		return -ETIMEDOUT;
>> +	ret = regmap_read_poll_timeout(rk_phy->reg_base,
>> +				       rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
>> +				       dllrdy, PHYCTRL_IS_DLLRDY(dllrdy),
>> +				       1, 50 * USEC_PER_MSEC);
>> +	if (ret) {
>> +		pr_err("%s: dllrdy failed %d.\n", __func__, ret);
>> +		return ret;
>>   	}
>>   
>>   	return 0;
>> -- 
>> 1.9.1
>>
>>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
