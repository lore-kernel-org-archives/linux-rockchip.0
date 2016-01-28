From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v5 04/21] usb: dwc2: host: Set host_perio_tx_fifo_size to
 304 for rk3066
Date: Thu, 28 Jan 2016 10:16:22 -0800
Message-ID: <CAD=FV=Xtbmf2yOQx=cNTnrsV_35jTUhJCKbBNuHCRpr-qXrW0A@mail.gmail.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
	<1453486736-15358-5-git-send-email-dianders@chromium.org>
	<56A986B4.2050002@rock-chips.com>
	<CAD=FV=VAkY0ijkUBrgjY04+OfYq35u=MbqbbomeQxp_J179iHw@mail.gmail.com>
	<56A9B80A.2020506@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <56A9B80A.2020506-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Kever,


On Wed, Jan 27, 2016 at 10:41 PM, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> Hi Doug,
>
> We are in HOST mode, we only need to receive data from USB camera
> with RX FIFO, and no need to use TX FIFO for USB webcam, right? :)
>
> Any way, I think we need to NAK this patch after look into the design
> of dwc2 controller. Because all the dwc2 controller inside the Rockchip
> chips don't support the thresholding FIFO mode, in this case, there is
> no more transaction before a whole packet is send out and the dwc2 only
> care if the available FIFO is enough for next packet or not.
>
> So, the addition 48 words won't help to shorten the latency for data prepare
> in this case.

Ah ha!  I see where I messed up.  It wasn't lack of FIFO space that I
was running into, it was lack of queue space.  :-P  I had conflated
the two of them in my mind.  We still use the TX queue to transmit
small packets so that we can receive our data...

OK, so it's pretty sane to assume that exhausting the periodic TX FIFO
isn't terribly common, I think.  Audio won't do it by itself and you
probably won't have more than one audio device.  I guess if you had a
video _output_ device hooked over USB then it could possible exhaust
things.  ...but I think dwc2 still has a ways to do before I'd suggest
anyone hooking that up.  :-P  At some point in time you could imagine
the driver being more dynamic.

OK, so the non periodic FIFO it is, then.

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
