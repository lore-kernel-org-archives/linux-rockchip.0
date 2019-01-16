From: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH v2] phy: phy-rockchip-inno-usb2: drop reading the
 utmi-avalid property
Date: Wed, 16 Jan 2019 11:04:28 +0100
Message-ID: <CAFqH_52gy8oUUAy61O+gMycd08Q22ZS1mqh6fm6TXzKfO1CgyQ@mail.gmail.com>
References: <20190109171415.9954-1-enric.balletbo@collabora.com>
 <5125335.cuvu72hbmo@phil> <8a0ea28a-961f-130b-bd76-9dbda42ea417@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <8a0ea28a-961f-130b-bd76-9dbda42ea417@ti.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Guenter Roeck <groeck@google.com>, linux-kernel <linux-kernel@vger.kernel.org>, kieran.bingham@ideasonboard.com, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, kernel@collabora.com, Benson Leung <bleung@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

Missatge de Kishon Vijay Abraham I <kishon@ti.com> del dia dc., 16 de
gen. 2019 a les 9:46:
>
> Hi,
>
> On 10/01/19 5:56 PM, Heiko Stuebner wrote:
> > Am Mittwoch, 9. Januar 2019, 18:14:15 CET schrieb Enric Balletbo i Serra:
> >> That property is no used in mainline and is not documented. The only
> >> board using that property is the rk33-99-evb-rev1 and -rev2 in the
> >> vendor kernel. The existence of a further -rev3 (which also looks way
> >> better cared for compared rev1+2) indicates that the older ones are
> >> probably some sort of preproduction models, where some wiring (on the soc
> >> or board) may have gone wrong.
> >>
> >> It is also not clear why this is a hardware-description or a DT
> >> property, so, as noboby seems to care of this just drop reading that
> >> property.
> >>
> >> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> >
> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>
> For some reason, I don't seem to have the original patch in the inbox. Can you
> resend it please?
>
Yes, seems that for some reason my script to add the maintainers
failed, sorry about that. I'll resend the last three patches.

> Thanks
> Kishon
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
