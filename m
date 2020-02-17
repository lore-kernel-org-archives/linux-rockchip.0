From: Otavio Salvador <otavio.salvador-fKevB0iiKLMBZ+LybsDmbA@public.gmane.org>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
Date: Mon, 17 Feb 2020 09:30:56 -0300
Message-ID: <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <41a7bfe7-54b1-84eb-091f-469d971ab968-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Johan Hovold <johan-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello Minas,

On Mon, Feb 17, 2020 at 5:58 AM Minas Harutyunyan
<Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
> On 2/14/2020 5:40 PM, Otavio Salvador wrote:
...
> >      [  312.967867] g_serial gadget: high-speed config #2: CDC ACM config
> >      [  314.828173] dwc2 30180000.usb: new device is high-speed
> >      [  314.866943] dwc2 30180000.usb: new address 16
> >      [  314.889550] g_serial gadget: high-speed config #2: CDC ACM config
> >
>
> I assume here you few time disconnected and then connected cable and
> after last connection even when g_serial seen in last line it stop work.
> Correct?

Yes. It stops responding.

> > The "[  314.889550] g_serial gadget: high-speed config #2: CDC ACM
> > config" message is the last time it is detected. As mentioned, to
> > restore the port to work, we need to reload the g_serial module.
> >
> > When we reload it, following exception happens:
> >
>
> Actually exception happen in g_serial not dwc2. Why you assume that it
> because of dwc2?

Indeed. After reporting this, it does sounds it is two decouple
issues. The tty seems to be not properly cleaned up and it seems to
have a resource not properly cleaned up.

...
> > So, I am a bit lost how to debug this so I'd like to know what kind of
> > information might be useful to find the root cause of it?
>
> And despite of above exception, g_serial enumerated it works fine?

If reloaded the USB is detected but tty seems to not work. It seems it
fails to free the ttyGS0 previously used and thus it cannot properly
create the new device.

> Please provide me dump of follow dwc2 debugfs's: regdump, hw_params, params.

Do you want this on working and failing state or just the failing one?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750
