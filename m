From: Emmanuel Grumbach <egrumbach-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: iwlwifi firmware loading problems, rk3399
Date: Wed, 20 May 2020 16:01:43 +0300
Message-ID: <CANUX_P3kqY9wMBmAZoKsdzQv0TdW1pY7d=yqp5925Ryhkyq=Xg@mail.gmail.com>
References: <9122588d-683a-936e-1305-c34124e6702c@nextfour.com>
 <CANUX_P1q22J6ONRqTCDwwEMtmbGbCmS=C1WK6Zz0OqG_v2qcSA@mail.gmail.com> <f27e0e85-6e45-15bd-1460-4140671ee4cd@nextfour.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <f27e0e85-6e45-15bd-1460-4140671ee4cd-MRsr7dthA9VWk0Htik3J/w@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: =?UTF-8?Q?Mika_Penttil=C3=A4?= <mika.penttila-MRsr7dthA9VWk0Htik3J/w@public.gmane.org>
Cc: Johannes Berg <johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Emmanuel Grumbach <emmanuel.grumbach-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, linux-wireless <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

> > I guess you need to debug your board :)
> > The interrupt is not coming, then.. there isn't much the driver can do.
>
> Well it does get interrupts, but stops getting them during fw loading at
> some point which causes it to fail. I have seen similar posts while
> googling and they are happening on x86/ubuntu and popular platforms. So
> I'm afraid it is something with iwlwifi or its usage of MSIX or such.
> The kernel version is 5.4.

You can try to disable msix.
In iwl_pcie_set_interrupt_capa, just goto enable_msi.
