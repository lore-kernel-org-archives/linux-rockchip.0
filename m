From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v2 2/2] phy: rockchip-emmc: use regmap_read_poll_timeout
 to poll dllrdy
Date: Thu, 11 Jan 2018 09:32:15 +0800
Message-ID: <d9061fdd-254b-81bf-c3e6-4bb60ca22b50@rock-chips.com>
References: <1515581362-181200-1-git-send-email-shawn.lin@rock-chips.com>
 <1515581362-181200-2-git-send-email-shawn.lin@rock-chips.com>
 <20180110174615.GA30753@google.com>
 <CAD=FV=V2Kb5rxf3daY9Vu_FzK4_5HRDgpSNDk5SbuOFHw1nC-g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=V2Kb5rxf3daY9Vu_FzK4_5HRDgpSNDk5SbuOFHw1nC-g@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>, Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Ziyuan Xu <xzy.xu@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

在 2018年01月11日 03:36, Doug Anderson 写道:
> Hi,
>
> On Wed, Jan 10, 2018 at 9:46 AM, Brian Norris <briannorris@chromium.org> wrote:
>>>         */
>>> -     timeout = jiffies + msecs_to_jiffies(50);
>>> -     do {
>>> -             udelay(1);
>>> -
>>> -             regmap_read(rk_phy->reg_base,
>>> -                     rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
>>> -                     &dllrdy);
>>> -             dllrdy = (dllrdy >> PHYCTRL_DLLRDY_SHIFT) & PHYCTRL_DLLRDY_MASK;
>>> -             if (dllrdy == PHYCTRL_DLLRDY_DONE)
>>> -                     break;
>>> -     } while (!time_after(jiffies, timeout));
>>> -
>>> -     if (dllrdy != PHYCTRL_DLLRDY_DONE) {
>>> -             pr_err("rockchip_emmc_phy_power: dllrdy timeout.\n");
>>> -             return -ETIMEDOUT;
>>> +     ret = regmap_read_poll_timeout(rk_phy->reg_base,
>>> +                                    rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
>>> +                                    dllrdy, PHYCTRL_IS_DLLRDY(dllrdy),
>>> +                                    1, 50 * USEC_PER_MSEC);
> It seems a bit schizophrenic that one of our delay loops sleeps 1 us
> between loops and the other sleeps 5 us between loops.
>
> ...and, in fact, both of these numbers seem a little on the silly side
> of things.  Assuming that the timer docs are up to date, usleep_range
> is intended for sleeping "10us - 20ms".  Both 1 us and 5 us below that
> range and "1 us" is an order of magnitude below that range.  ...your 1
> and 5 actually translate to usleep_range(1, 1) and usleep_range(3, 5).
>
> It seems like trying to do a sleep (the whole idea that some other
> process will get to run for some fraction of the 1 us) is just wasting
> cycles.
>
> So I'd say either:
>
> 1. Accept that we really expect this to be a long delay and change
> your delay to 10 us
>
> 2. Change the delay to 0 us and accept that you're busy waiting.
>
> I'd vote for #2 unless you have some evidence that we often need long
> delays and we've started calling this code all the time.

Agreed with #2


-Caesar
>
>
>>> +     if (ret) {
>>> +             pr_err("%s: dllrdy failed %d.\n", __func__, ret);
>>> +             return ret;
>>>        }
>>>
>>>        return 0;
>>> --
>>> 1.9.1
>>>
>>>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
