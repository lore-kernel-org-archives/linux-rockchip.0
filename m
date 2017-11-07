From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [PATCH] usb: dwc2: host: fix isoc urb actual length
Date: Tue, 7 Nov 2017 10:18:41 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1711071014130.1395-100000@iolanthe.rowland.org>
References: <f2b7e952-8d0f-25dd-4777-efc1e2b9be8a@rock-chips.com>
Mime-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <f2b7e952-8d0f-25dd-4777-efc1e2b9be8a-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: wlf <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org" <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org" <dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, "daniel.meng-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <daniel.meng-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "fml-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <fml-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 7 Nov 2017, wlf wrote:

> > That sounds like a good idea.  Minas, does the following patch fix your
> > problem?
> > 
> > In theory we could do this calculation for every isochronous URB, not
> > just those coming from usbfs.  But I don't think there's any point,
> > since the USB class drivers don't use it.
> >
> > Alan Stern
> >
> >
> >
> > Index: usb-4.x/drivers/usb/core/devio.c
> > ===================================================================
> > --- usb-4.x.orig/drivers/usb/core/devio.c
> > +++ usb-4.x/drivers/usb/core/devio.c
> > @@ -1828,6 +1828,18 @@ static int proc_unlinkurb(struct usb_dev
> >   	return 0;
> >   }
> >   
> > +static void compute_isochronous_actual_length(struct urb *urb)
> > +{
> > +	unsigned i;
> > +
> > +	if (urb->number_of_packets > 0) {
> > +		urb->actual_length = 0;
> > +		for (i = 0; i < urb->number_of_packets; i++)
> > +			urb->actual_length +=
> > +					urb->iso_frame_desc[i].actual_length;
> > +	}
> > +}
> > +
> >   static int processcompl(struct async *as, void __user * __user *arg)
> >   {
> >   	struct urb *urb = as->urb;
> > @@ -1835,6 +1847,8 @@ static int processcompl(struct async *as
> >   	void __user *addr = as->userurb;
> >   	unsigned int i;
> >   
> > +	compute_isochronous_actual_length(urb);
> > +
> >   	if (as->userbuffer && urb->actual_length) {
> >   		if (copy_urb_data_to_user(as->userbuffer, urb))
> >   			goto err_out;
> > @@ -2003,6 +2017,8 @@ static int processcompl_compat(struct as
> >   	void __user *addr = as->userurb;
> >   	unsigned int i;
> >   
> > +	compute_isochronous_actual_length(urb);
> > +
> >   	if (as->userbuffer && urb->actual_length) {
> >   		if (copy_urb_data_to_user(as->userbuffer, urb))
> >   			return -EFAULT;
> >
> >
> Yeah,  it's a good idea to calculate the urb actual length in the devio 
> driver.
> Your patch seems good,  and I think we can do a small optimization base 
> your patch,
> like the following patch:
> 
> diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
> index bd94192..a2e7b97 100644
> --- a/drivers/usb/core/devio.c
> +++ b/drivers/usb/core/devio.c
> @@ -1664,6 +1664,9 @@ static int processcompl(struct async *as, void 
> __user * __user *arg)
>          void __user *addr = as->userurb;
>          unsigned int i;
> 
> +       if (usb_endpoint_xfer_isoc(&urb->ep->desc))
> +               compute_isochronous_actual_length(urb);
> +
>          if (as->userbuffer && urb->actual_length) {
>                  if (copy_urb_data_to_user(as->userbuffer, urb))
>                          goto err_out;
> @@ -1833,6 +1836,9 @@ static int processcompl_compat(struct async *as, 
> void __user * __user *arg)
>          void __user *addr = as->userurb;
>          unsigned int i;
> 
> +       if (usb_endpoint_xfer_isoc(&urb->ep->desc))
> +               compute_isochronous_actual_length(urb);
> +

Well, this depends on whether you want to optimize for space or for 
speed.  I've been going for space.  And since usbfs is inherently 
rather slow, I don't think this will make any significant speed 
difference.  So I don't think adding the extra tests is worthwhile.

(Besides, if you really wanted to do it this way, you should have moved 
the test for "urb->number_of_packets > 0" into the callers instead of 
adding an additional test of the endpoint type.)

However, nobody has answered my original question: Does the patch 
actually fix the problem?

Alan Stern

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
