From: Emil Velikov <emil.l.velikov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Linux-stm32] [PATCH v8 08/10] drm: stm: dw-mipi-dsi: let the
 bridge handle the HW version check
Date: Tue, 2 Jun 2020 13:53:40 +0100
Message-ID: <CACvgo51QyzEa8LFpGq5zjYV-0TifQRtNh4WhMYy8jNtaswxd7Q@mail.gmail.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
 <20200427081952.3536741-9-adrian.ratiu@collabora.com> <4acc09e8-0610-01f6-b18d-3ffc390c45a3@st.com>
 <87blm387vt.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87blm387vt.fsf-Hx0R3YBcjnrrDJPETb4MAhUsoSCIEsfjNWc2n73sL8y+gHQt+EBHu/rpjleITZ0KWu6Lckefmi4@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, Yannick FERTRE <yannick.fertre-qxv4g6HH51o@public.gmane.org>, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, "linux-imx-3arQi8VN3Tc@public.gmane.org" <linux-imx-3arQi8VN3Tc@public.gmane.org>, "kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Adrian,

On Mon, 1 Jun 2020 at 10:14, Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> On Fri, 29 May 2020, Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org> wrote:
> > Hi Adrian, and thank you very much for the patchset.  Thank you
> > also for having tested it on STM32F769 and STM32MP1.  Sorry for
> > the late response, Yannick and I will review it as soon as
> > possible and we will keep you posted.  Note: Do not hesitate to
> > put us in copy for the next version  (philippe.cornu-qxv4g6HH51o@public.gmane.org,
> > yannick.fertre-qxv4g6HH51o@public.gmane.org) Regards, Philippe :-)
>
> Hi Philippe,
>
> Thank you very much for your previous and future STM testing,
> really appreciate it! I've CC'd Yannick until now but I'll also CC
> you sure :)
>
> It's been over a month since I posted v8 and I was just gearing up
> to address all feedback, rebase & retest to prepare v9 but I'll
> wait a little longer, no problem, it's no rush.
>
Small idea, pardon for joining so late:

Might be a good idea to add inline comment, why the clocks are disabled so late.
Effectively a 2 line version of the commit summary.

Feel free to make that a separate/follow-up patch.

-Emil
