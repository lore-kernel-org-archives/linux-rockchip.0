From: Otavio Salvador <otavio.salvador-fKevB0iiKLMBZ+LybsDmbA@public.gmane.org>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
Date: Wed, 19 Feb 2020 12:10:31 -0300
Message-ID: <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com> <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
 <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com> <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
 <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <380d765b-8867-a899-b67a-c016c09fa27b-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Johan Hovold <johan-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello Minas,

On Wed, Feb 19, 2020 at 9:26 AM Minas Harutyunyan
<Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
> On 2/17/2020 11:53 PM, Otavio Salvador wrote:
> > On Mon, Feb 17, 2020 at 10:26 AM Minas Harutyunyan
> > <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
> >> Enable debug prints to get full dwc2 debug prints to see what happen
> >> with dwc2.
>
> > [ 1054.529774] dwc2 30180000.usb: ep0 state:0
> > [ 1054.529785] dwc2 30180000.usb: dwc2_hsotg_start_req: DxEPCTL=0x84088200
> > [ 1054.529801] dwc2 30180000.usb: dwc2_hsotg_start_req: DXEPCTL=0x80088200
> > [ 1054.529928] dwc2 30180000.usb: ep2out: req 26bd9b9f: 512@06b7dbca,
> > noi=0, zero=0, snok=0
> > [ 1054.537095] dwc2 30180000.usb: dwc2_hsotg_irq: 04008428 00000400
> > (d88c3cc4) retry 8
> > [ 1054.537119] dwc2 30180000.usb: GINTSTS_ErlySusp
> > [ 1054.540147] dwc2 30180000.usb: gintsts=04008828  gintmsk=d88c3cc4
> > [ 1054.540172] dwc2 30180000.usb: USB SUSPEND
> > [ 1054.540191] dwc2 30180000.usb: dwc2_handle_usb_suspend_intr: DSTS=0x5ad801
> > [ 1054.540211] dwc2 30180000.usb: DSTS.Suspend Status=1 HWCFG4.Power
> > Optimize=1 HWCFG4.Hibernation=0
> > [ 1054.540242] dwc2 30180000.usb: dwc2_hsotg_irq: 04008028 00000000
> > (d88c3cc4) retry 8
> > [ 1054.585402] dwc2 30180000.usb: ep1in: req 01eff31b: 353@bf8d62d8,
> > noi=0, zero=1, snok=0
> > [ 1054.585422] dwc2 30180000.usb: dwc2_hsotg_ep_queue: submit request
> > only in active state
> > [ 1054.661667] dwc2 30180000.usb: dwc2_hsotg_irq: 04008428 00000400
> > (d88c3cc4) retry 8
> > [ 1054.661694] dwc2 30180000.usb: GINTSTS_ErlySusp
> > [ 1054.664715] dwc2 30180000.usb: gintsts=04008828  gintmsk=d88c3cc4
> > [ 1054.664741] dwc2 30180000.usb: USB SUSPEND
> > [ 1054.664760] dwc2 30180000.usb: dwc2_handle_usb_suspend_intr: DSTS=0x5ad801
> > [ 1054.664781] dwc2 30180000.usb: DSTS.Suspend Status=1 HWCFG4.Power
> >
>
> Actually, I don't see any issue with dwc2 from the log. Only not clear
> why SUSPEND happen hear. Is it because of disconnect/connect or
> reloading g_serial?
> Is this log recorded when issue seen?

Yes, the log was recorded however we did not reload the g_serial
module. So when we gathered the logs, it was stuck.

> Anyway, before SUSPEND and after dwc2 successfully perform transfers on
> all EP's - ep1in bulk, ep2out bulk and ep3in interrupt.
> Can you provide dmesg with dwc2 debug prints with exception case inside.

The log I sent was taken with:

1) boot device
2) ran 'dmesg -c' so we cleaned the old messages
3) cause the lock up to happen
4) gather dmesg output

What sequence do you want us to do?
--
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750
