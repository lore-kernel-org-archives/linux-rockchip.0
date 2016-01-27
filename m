From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v5 03/21] usb: dwc2: host: Set host_rx_fifo_size to 528
 for rk3066
Date: Wed, 27 Jan 2016 11:44:26 -0800
Message-ID: <CAD=FV=XKAzVOLCkFBH1nXeiaKeU4FoFN2CuRNMankA4xsgPsuw@mail.gmail.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
 <1453486736-15358-4-git-send-email-dianders@chromium.org>
 <56A89838.3040202@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <56A89838.3040202-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "Herrero,
 Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab,
 Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Kever,

On Wed, Jan 27, 2016 at 2:13 AM, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> Hi Doug,
>
> On 01/23/2016 02:18 AM, Douglas Anderson wrote:
>>
>> As documented in dwc2_calculate_dynamic_fifo(), host_rx_fifo_size should
>> really be:
>>   2 * ((Largest Packet size / 4) + 1 + 1) + n
>>   with n = number of host channel.
>>
>> We have 9 host channels, so
>>   2 * ((1024/4) + 2) + 9 = 516 + 9 = 525
>>
>> We've got 960 / 972 total_fifo_size on rk3288 (and presumably on
>> rk3066) and 525 + 128 + 256 = 909 so we're still under on both ports
>> even when we increment by 5.
>>
>> Since we have space, Kever Yang suggests bumping by 8.  He says this
>> will meet INCR16 access and next fifo type can start with a aligned
>> address.
>
> I have double check this feature, the INCR16 is actually a burst 16
> on to the bus, the aligned problem only happen on the DRAM
> access, and it's OK for internal RAM access via internal DMA.
>
> Bump to 8 looks much better when we check the FIFO setting if we
> have enough memory, right? :)
>
> rk3066/rk3188/rk3288 have the same hw config for dwc2 controller,
> so this patch should works on those files.
>
> Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Thanks for double-checking and thanks for the review!

If it's all the same to you, I'll probably change it back to 525 and
then increase the periodic FIFO size by 3 DWORDS in the next patch.
12 bytes may not be much, but might as well make use of them to
improve performance / compatibility?

Presumably you're also OK with the next patch in the series: ("usb:
dwc2: host: Set host_perio_tx_fifo_size to 304 for rk3066")?


Note to anyone who may be thinking of applying patches in this series:

* You can skip both this and the next patch if you wish and any other
patches in the series are unaffected.

* You can request that I spin just these two patches and I will do it
ASAP.  Otherwise I'll add that fix to the next spin of the whole
series.

* You can make the changes yourself to this patch and the next one
(this patch should be 525 and the next should increase
host_perio_tx_fifo_size to 307).

I'm OK with any of those 3 things.  ;)


-Doug
