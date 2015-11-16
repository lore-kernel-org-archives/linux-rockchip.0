From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Mon, 16 Nov 2015 15:38:29 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1511161534000.1938-100000@iolanthe.rowland.org>
References: <CAODwPW-O=ezdEWck1n4358ErK_6O5ksCeGY=KZi==f33_i3B9Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAODwPW-O=ezdEWck1n4358ErK_6O5ksCeGY=KZi==f33_i3B9Q-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 16 Nov 2015, Julius Werner wrote:

> Another point to note, which I think is what prevents the flow Alan
> suggested from working, is this little snippet in DWC2's hub_control
> GetPortStatus callback:
> 
>                 if (!hsotg->flags.b.port_connect_status) {
>                         /*
>                          * The port is disconnected, which means the core is
>                          * either in device mode or it soon will be.
> Just
>                          * return 0's for the remainder of the port status
>                          * since the port register can't be read if the core
>                          * is in device mode.
>                          */
>                         *(__le32 *)buf = cpu_to_le32(port_status);
>                         break;
>                 }
> 
> This is before it actually checks the register state of the port. So
> it relies on dwc2_hcd_connect() and dwc2_hcd_disconnect() to be called
> in the right order to give the correct answer for
> USB_PORT_STAT_CONNECTION. This could maybe be improved but I don't
> know what kind of weird interactions with device mode operation made
> that snippet necessary in the first place.

Why does this test hsotg->flags.b.port_connect_status?  What it really 
needs to know is whether the core is in device mode.  It should test 
for that instead.  Then it could accurately report the true connection 
state whenever the core is in host mode, regardless of the order in 
which dwc2_hcd_connect() and dwc2_hcd_disconnect() get called.  No?

My guess would be that using the wrong test was simply a misguided 
attempt at optimization.

Alan Stern

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
