From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] clk: rockchip: assign correct id for pclk_ddr and hclk_sd
 in rk3399
Date: Fri, 16 Mar 2018 09:22:00 +0800
Message-ID: <3f8a539d-9b1b-f0b6-1bf8-60be102f9bda@rock-chips.com>
References: <1521104071-19595-1-git-send-email-hl@rock-chips.com>
 <18794d71-ec37-7af4-3de6-7a43a5c66010@rock-chips.com>
 <df78009d-924f-6b9c-6bf6-f1f69d162708@rock-chips.com>
 <b0b083c6-3a99-c0ed-9f1b-bba203eaa6bc@rock-chips.com>
 <CAD=FV=UaGaE0FX7ofQgSqsyir08psc0-EkHq9_WTW7EQvTZPog@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=UaGaE0FX7ofQgSqsyir08psc0-EkHq9_WTW7EQvTZPog-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Derek Basehore <dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, hl <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, diander-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-clk <linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

On 2018/3/16 0:20, Doug Anderson wrote:
> Hi,
> 
> On Thu, Mar 15, 2018 at 6:40 AM, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>> [Correct Doug's email address]
>>
>> On 2018/3/15 17:12, hl wrote:
>>>
>>> Hi Shawn,
>>>
>>>
>>> On Thursday, March 15, 2018 05:01 PM, Shawn Lin wrote:
>>>>
>>>> Hi Huang,
>>>>
>>>> On 2018/3/15 16:54, Lin Huang wrote:
>>>>>
>>>>> Assign id PCLK_DDR to pclk_ddr, id HCLK_SD to hclk_sd, so we can
>>>>> assign frequency for them in dts.
>>>>
>>>>
>>>> I'm curious under which condition that we need assign frequency for
>>>> hclk_sd?
>>>
>>> We may set CPLL frequency higher than 800MHz, with that we need assign
>>> clock
>>> to hclk_sd, otherwise it will exceed 200MHz, since we use the default cru
>>> register value to get hclk_sd for now.
>>> you can check
>>>
>>> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/956678/5
>>
>>
>> Okay, thanks for pointing me to the actual user case.
>> I'm fine with that, however, what I am thinking now is:
>>
>> (1) It's worth elaborating more in the commit msg.
> 
> Seems like a nice idea to me.
> 
> 
>> (2) The reason you need set hclk_sd is that it depends on the
>> defualt settings but lack real owner to explicitly set it to <=200MHz.
> 
> Actually, in the case of hclk_sd there _is_ an owner to set it to <=
> 200 MHz.  I'll comment on the gerrit review, but the assigned clock
> for hclk_sd probably belongs in the node "sdmmc: dwmmc@fe320000".

Agreed. hclk_sd is the parent for hclk_sdmmc and hclk_sdmmc_noc, so
it makes more sense to me for sdmmc node to pick it up in rk3399.dtsi

> 
> ...but in any case, you still need the clock ID to do that.
> 

yep.

> 
>> So my another question is if that is more about aspect of power
>> consumption, then it looks okay to me. But if that is a SoC limitation,
>> then we are under risk for that. Either we should never rely on the
>> default settings, or we should set its rate range after registering this
>> clock provider.
> 
> I have always wondered about perhaps encoding the min/max clock rate
> for each clock somewhere in the source code.  Then whenever we change
> clock rates we could enforce that we don't ever go past this min/max. > In think, in theory, this is possible by registering for all the right
> callbacks / notifications.  ...but I suspect that doing in a generic /
> performant way might be very difficult.  Specifically, whenever a
> clock changes you may need to make all sorts of decisions about
> re-parenting and also checking whether all your children are out fo
> spec.

Agreed.

> 
> So without encoding the min/max and having it magically auto-resolve,
> the best we can do is just to assign a sane clock rate.  If there's no
> subsystem owning this clock then doing so at clock init time is sane
> (and that's what we do with many clocks).  If a subsystem owns it,
> doing it when the subsystem is probed is sane.
> 

I'm not convinced it was invented to abuse encoding the rate range for
each clock, but just enclose the the hardware limitation within the
clock framework and per-SoC clock providers. That being said, the author
of per-SoC clock providers is more fimilar with the hardware limitation
than BSP guys, so it's less prone to make fatal mistake by encoding this
kinda limitation somewhere in clk provider drivers.

But yes, I didn't see any hardware limitation here for hclk_sd, so my
best guess is 200MHz is a tradeoff for perf and power. This looks sane
to me by doing it at clock init time, so FWIW for this patch,

Reviewed-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

However, I'm incline to assigne hclk_sd by sdmmc node in Huang's CL.
Then we may never warry about leaving it along again when we randomly
adjust clk hierarchy again. It applies to all this kinda clk providers.

> 
> So, to summarize, I'm happy with this change.  I wouldn't mind a
> little more justification in the CL description but personally I won't
> make a big deal about it.
> 
> Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> 
> 
> -Doug
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
> 
> 
