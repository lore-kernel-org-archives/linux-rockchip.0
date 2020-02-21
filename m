From: Otavio Salvador <otavio.salvador-fKevB0iiKLMBZ+LybsDmbA@public.gmane.org>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
Date: Fri, 21 Feb 2020 11:06:06 -0300
Message-ID: <CAP9ODKoS5KQrhTrUvahHEhQG-WA+bfLnP4tTFxzrQaGh1nTcZw@mail.gmail.com>
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com> <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
 <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com> <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
 <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com> <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
 <beddbc55-fd22-96b7-c980-e4ea207a42f5@synopsys.com> <CAP9ODKq2nEHz_rbwwCv-94LSBOq0it2Kc4yhCqrLT-XxoXommg@mail.gmail.com>
 <1d2ee918-57e4-53b2-6953-0107d7720c59@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1d2ee918-57e4-53b2-6953-0107d7720c59-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Johan Hovold <johan-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello Minas,

On Fri, Feb 21, 2020 at 3:52 AM Minas Harutyunyan
<Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
> On 2/20/2020 5:16 PM, Otavio Salvador wrote:
> > Hello Minas,
> >
> > Thanks for all your help on this, ...
> >
> > On Thu, Feb 20, 2020 at 3:59 AM Minas Harutyunyan
> > <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
> >>
> >> On 2/19/2020 7:10 PM, Otavio Salvador wrote:
> > ...
> >>> What sequence do you want us to do?
> >>
> Please provide dwc2 debug log when stop working with g_serial exception
> dump inside.
> Also provide dwc2 log when it's work without issue.

Attached.

> >> Yes. Can you provide also USB trace >
> > I can, however, it is not clear to me what you want us to do.
> >
> > Should we use, on host side, usbmon? or do you want something different?
> >
> Do you have any USB tracer equipment to record trace between host and
> device?

I don't. Can we instrument the kernel somehow to gather the info we need?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750
