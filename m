From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v5 0/21] usb: dwc2: host: Fix and speed up all the stuff, especially with splits
Date: Sat, 23 Jan 2016 18:52:20 +0100
Message-ID: <4616032.f74zstHVA0@phil>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1453486736-15358-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Freitag, 22. Januar 2016, 10:18:35 schrieb Douglas Anderson:
> This is a bit of catchall series for all the bug fix and performance
> patches I've been working on over the last few months.  Note that for
> dwc2 we need to do LOTS in software and need super low interrupt
> latency, so most performance improvements actually fix real bugs.
> 
> Patches are structured to start with no-brainer stuff that could be
> applied ASAP, especially things I've already gotten Acks for.  Things
> get slightly more RFC / RFT like as we get farther down the series.
> Anything that can be landed sooner rather than later (especially those
> Acked long ago) would help in re-posts (I'm not biased, of course).
> 
> It's been a few months since my last post of this series.  In the
> meantime I've added a bunch of small bugfixes to the start of it and
> also TOTALLY REWROTE the microframe scheduler.  I'll say up front: I
> know nothing about USB.  I haven't read the whole spec.  I'm not
> terribly familiar with the OHCI, EHCI, and XHCI drivers in the kernel.
> ...and I'm pretty clueless overall.  Nevertheless, I've attempted to
> write up a fancy scheduler based on the portion of the spec talking
> about microframe scheduling requirements.  This rewritten scheduler does
> seem to help when I start jamming lots of USB things into a hub, so
> presumably the code is a reasonably starting point.  Given my current
> understanding of USB the old code was fairly insane, so presumably even
> if my new patch isn't perfect it's better than what we had.

I've tested this series (+the low-speed fix from today) on the following
usb-tree on a rk3288-veyron-jerry:

/:  Bus 03.Port 1: Dev 1, Class=root_hub, Driver=ehci-platform/1p, 480M
    |__ Port 1: Dev 2, If 0, Class=Video, Driver=, 480M
    |__ Port 1: Dev 2, If 1, Class=Video, Driver=, 480M
/:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=dwc2/1p, 480M
    |__ Port 1: Dev 2, If 0, Class=Vendor Specific Class, Driver=zd1211rw, 480M
/:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=dwc2/1p, 480M
    |__ Port 1: Dev 2, If 0, Class=Hub, Driver=hub/5p, 480M
        |__ Port 1: Dev 3, If 0, Class=Vendor Specific Class, Driver=smsc95xx, 480M
        |__ Port 3: Dev 4, If 0, Class=Hub, Driver=hub/4p, 480M
            |__ Port 1: Dev 6, If 0, Class=Vendor Specific Class, Driver=, 12M
            |__ Port 3: Dev 8, If 0, Class=Hub, Driver=hub/4p, 480M
                |__ Port 1: Dev 10, If 0, Class=Human Interface Device, Driver=usbhid, 1.5M
                |__ Port 1: Dev 10, If 1, Class=Human Interface Device, Driver=usbhid, 1.5M
                |__ Port 2: Dev 11, If 0, Class=Human Interface Device, Driver=usbhid, 1.5M
                |__ Port 2: Dev 11, If 1, Class=Human Interface Device, Driver=usbhid, 1.5M
                |__ Port 3: Dev 12, If 0, Class=Human Interface Device, Driver=usbhid, 1.5M
                |__ Port 4: Dev 13, If 0, Class=Mass Storage, Driver=usb-storage, 480M
            |__ Port 4: Dev 9, If 0, Class=Human Interface Device, Driver=usbhid, 1.5M
        |__ Port 4: Dev 5, If 0, Class=Mass Storage, Driver=usb-storage, 480M
        |__ Port 5: Dev 7, If 0, Class=Mass Storage, Driver=usb-storage, 480M


At first we were maxing out the 9 channels of the otg port, which the
driver didn't seem to care about in 4.4-rc6, but after realizing that and
switching over to the 16ch host-port it ran really nicely, especially wrt
faster handling of all the keyboard input.

When looking over to the other desk and the person using that veyron-
jerry not cursing anymore, it seem to be running fine in a real-world use
for 2 hours now ;-)

So,
Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>


> The patches here will speed up the interrupt controller significantly.
> After this series, I have a hard time seeing the interrupt controller
> taking > 20 us and I don't ever see it taking > 30 us ever in my tests
> unless I bring the cpufreq back down.  With the cpufreq at 126 MHz I can
> still see the interrupt handler take > 50 us, so I'm sure we could
> improve this further.  ...but hey, it's a start.

In the configuration described above, we were still able to run the
interrupt handlers capabilities when the cpufreq is at 126MHz, but
once set to a sane minimum it is running really nice now.


Heiko
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
