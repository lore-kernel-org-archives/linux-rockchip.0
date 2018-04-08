From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 1/2] clk: divider: Add CLK_DIVIDER_EVEN flag support
Date: Sun, 8 Apr 2018 09:58:06 +0800
Message-ID: <3048958b-1e4e-dee4-44b5-75b478cb7c3c@rock-chips.com>
References: <1522906699-127765-1-git-send-email-shawn.lin@rock-chips.com>
 <3456608.qSAPWuSAs9@phil>
 <1a1b583f-6ffb-a9a3-3798-98f1f282cc26@rock-chips.com>
 <152304921142.94378.4450890873269654042@swboyd.mtv.corp.google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <152304921142.94378.4450890873269654042-n1Xw8LXHxjTHt/MElyovVYaSKrA+ACpX0E9HWUfgJXw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Stephen Boyd <sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Finley Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Xing Zheng <xing.zheng-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Ziyuan Xu <xzy.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Stephen,

On 2018/4/7 5:13, Stephen Boyd wrote:
> Quoting Shawn Lin (2018-04-05 07:47:41)
>> Hi Heiko,
>>
>> On 2018/4/5 21:30, Heiko Stuebner wrote:
>>> Hi Shawn,
>>>
>>> Am Donnerstag, 5. April 2018, 07:38:18 CEST schrieb Shawn Lin:
>>>> CLK_DIVIDER_EVEN is used for clock divders that should only
>>>> use even number in the div field.
>>>>
>>>> Two clock divder should consider to use this flag
>>>> (1) The divder is physically only support even div number to
>>>> generate 50% duty cycle clock rate.
>>>> (2) The divder's clock consumer request it to use even div number
>>>> to generate the most closest requested rate for whatever reason.
>>>>
>>>> In some platforms, for instance Rockchip, the eMMC/SDIO/SDMMC should
>>>> request divder to use even number when working at a high throughput
>>>> speed mode reliably. However, that wasn't guaranteed by clock framework.
>>>> So the previous tricky is to carefully assign magic clock rate to their
>>>> parents as well as consumer's clock rate when requesting. That works
>>>> bad in practice if folks change the parents clock rate or the clock
>>>> hierarchy randomly. That also work bad if the consumer's clock rate
>>>> came from the DT, which is changed so fraquent for different boards.
>>>>
>>>> To make it's less prone to make mistake and to make it really respect
>>>> the fact that the divder should use even number to the div field, we
>>>> need the clock framework's help. Now we have CLK_DIVIDER_POWER_OF_TWO,
>>>> which could guarantee the div field is even number, however, obviously
>>>> it skips the even numbers which is the power of 2, but maybe which is
>>>> the best div to generate closest clock rate for consumer.
>>>
>>> I think there is a slight misunderstanding here, CLK_DIVIDER_POWER_OF_TWO
>>> means "2 raised to the value read from the hardware register", so describes
>>> a hardware property, while your CLK_DIVIDER_EVEN describes needed special
>>> handling due to some hardware necessity >
>>> That is not meant to nack your change, but just to point out that you can
>>> also have CLK_DIVIDER_POWER_OF_TWO | CLK_DIVIDER_EVEN, which is
>>> relevant for the uneven 2^0 = 1 case and should be taken in to account.
>>
>> Ahh, really good catch, and I always forgot 1 is the power of 2.
>>
>> More or less, it's a hardware property for Rockchip as these divders
>> only hardwired to specific controllers which always request even div
>> field, even if the div field could be odd number physcially. But yes,
>> the common case wouldn't be that, and another combination would be
>> CLK_DIVIDER_EVEN | CLK_DIVIDER_ONE_BASED?
>>
> 
> Maybe you can use a table of divider values? That is a simple escape
> hatch for this sort of thing and doesn't require adding another flag to
> the divider code to handle this.

The very first thought of adding clk_div_table is to support irregular
div calculation/limitation, but even number is rather common, regular
and symmetrical one. So I'm inclined to add it support.

> 
> Otherwise it would be good to handle these combinations of flags as
> well. We're only up to 7 flags so it isn't too bad yet.

Yep. After thinking more, I think we only need to handle div of 1
to avoid combination of CLK_DIVIDER_POWER_OF_TWO | CLK_DIVIDER_EVEN
suggested by Heiko. The others are just fine and not need to bother
with CLK_DIVIDER_EVEN, even with combination.

> 
> 
> 
