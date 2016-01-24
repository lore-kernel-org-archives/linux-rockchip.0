From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v5 0/21] usb: dwc2: host: Fix and speed up all the stuff,
 especially with splits
Date: Sat, 23 Jan 2016 21:36:15 -0800
Message-ID: <CAD=FV=WX+f6rYfdvPZ4Nz0j6-vJnORnb1vF0eRsrjY1QB3KveQ@mail.gmail.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
 <4616032.f74zstHVA0@phil>
 <CAD=FV=W29_nxn3Ga0ND-LzLGFiybhEni7aUFpfQMgp=AME=a=A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=W29_nxn3Ga0ND-LzLGFiybhEni7aUFpfQMgp=AME=a=A@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "Herrero,
 Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab,
 Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Sat, Jan 23, 2016 at 3:09 PM, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> Heiko,
>
> On Sat, Jan 23, 2016 at 9:52 AM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
>> Hi,
>>
>> Am Freitag, 22. Januar 2016, 10:18:35 schrieb Douglas Anderson:
>>> This is a bit of catchall series for all the bug fix and performance
>>> patches I've been working on over the last few months.  Note that for
>>> dwc2 we need to do LOTS in software and need super low interrupt
>>> latency, so most performance improvements actually fix real bugs.
>>>
>>> Patches are structured to start with no-brainer stuff that could be
>>> applied ASAP, especially things I've already gotten Acks for.  Things
>>> get slightly more RFC / RFT like as we get farther down the series.
>>> Anything that can be landed sooner rather than later (especially those
>>> Acked long ago) would help in re-posts (I'm not biased, of course).
>>>
>>> It's been a few months since my last post of this series.  In the
>>> meantime I've added a bunch of small bugfixes to the start of it and
>>> also TOTALLY REWROTE the microframe scheduler.  I'll say up front: I
>>> know nothing about USB.  I haven't read the whole spec.  I'm not
>>> terribly familiar with the OHCI, EHCI, and XHCI drivers in the kernel.
>>> ...and I'm pretty clueless overall.  Nevertheless, I've attempted to
>>> write up a fancy scheduler based on the portion of the spec talking
>>> about microframe scheduling requirements.  This rewritten scheduler does
>>> seem to help when I start jamming lots of USB things into a hub, so
>>> presumably the code is a reasonably starting point.  Given my current
>>> understanding of USB the old code was fairly insane, so presumably even
>>> if my new patch isn't perfect it's better than what we had.
>>
>> I've tested this series (+the low-speed fix from today) on the following
>> usb-tree on a rk3288-veyron-jerry:
>>
>> /:  Bus 03.Port 1: Dev 1, Class=root_hub, Driver=ehci-platform/1p, 480M
>>     |__ Port 1: Dev 2, If 0, Class=Video, Driver=, 480M
>>     |__ Port 1: Dev 2, If 1, Class=Video, Driver=, 480M
>> /:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=dwc2/1p, 480M
>>     |__ Port 1: Dev 2, If 0, Class=Vendor Specific Class, Driver=zd1211rw, 480M
>> /:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=dwc2/1p, 480M
>>     |__ Port 1: Dev 2, If 0, Class=Hub, Driver=hub/5p, 480M
>>         |__ Port 1: Dev 3, If 0, Class=Vendor Specific Class, Driver=smsc95xx, 480M
>>         |__ Port 3: Dev 4, If 0, Class=Hub, Driver=hub/4p, 480M
>>             |__ Port 1: Dev 6, If 0, Class=Vendor Specific Class, Driver=, 12M
>>             |__ Port 3: Dev 8, If 0, Class=Hub, Driver=hub/4p, 480M
>>                 |__ Port 1: Dev 10, If 0, Class=Human Interface Device, Driver=usbhid, 1.5M
>>                 |__ Port 1: Dev 10, If 1, Class=Human Interface Device, Driver=usbhid, 1.5M
>>                 |__ Port 2: Dev 11, If 0, Class=Human Interface Device, Driver=usbhid, 1.5M
>>                 |__ Port 2: Dev 11, If 1, Class=Human Interface Device, Driver=usbhid, 1.5M
>>                 |__ Port 3: Dev 12, If 0, Class=Human Interface Device, Driver=usbhid, 1.5M
>>                 |__ Port 4: Dev 13, If 0, Class=Mass Storage, Driver=usb-storage, 480M
>>             |__ Port 4: Dev 9, If 0, Class=Human Interface Device, Driver=usbhid, 1.5M
>>         |__ Port 4: Dev 5, If 0, Class=Mass Storage, Driver=usb-storage, 480M
>>         |__ Port 5: Dev 7, If 0, Class=Mass Storage, Driver=usb-storage, 480M
>>
>>
>> At first we were maxing out the 9 channels of the otg port, which the
>> driver didn't seem to care about in 4.4-rc6, but after realizing that and
>> switching over to the 16ch host-port it ran really nicely, especially wrt
>> faster handling of all the keyboard input.
>
> Actually, I should probably fix this in the patch ("usb: dwc2: host:
> Totally redo the microframe scheduler").  While trying to make things
> work originally I had moved the "dwc2_periodic_channel_available()" to
> always happen even with the microframe scheduler, but I don't think
> there's any strong reason for that.  I think we could just undo it and
> everything would work just as well or better.
>
> I'll try to do some testing with that fix next week and then try to
> send up a spun series.  Note that the reason why ("usb: dwc2: host:
> Totally redo the microframe scheduler") was near the end of the series
> was that I'd expected that things earlier than it were in a pretty
> good shape to land while I was expecting that the microframe rewrite
> might need a spin or two.

I can't do more than cursory testing without being at work and able to
plug / unplug peripherals, but I'd expect that this should fix the
problem:

https://chromium-review.googlesource.com/#/c/323326/

I won't plan on spinning the series with that patch until at least a
week has passed.  I believe that John is out right now and I don't
want to spam a 21-part series too many times.

-Doug
