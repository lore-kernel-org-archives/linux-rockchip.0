From: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH 1/4] phy: rockchip-inno-usb2: fix misspelling and
 kernel-doc documentation.
Date: Tue, 8 Jan 2019 18:35:38 +0100
Message-ID: <CAFqH_50tz1Toi6L1Ju5imyMRPzN1bDg7mxzcLrJWvdxOwknfdw@mail.gmail.com>
References: <20180815095934.11205-1-enric.balletbo@collabora.com>
 <20180815095934.11205-2-enric.balletbo@collabora.com> <2908229.jFki8unlfB@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2908229.jFki8unlfB@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>, Kishon Vijay Abraham I <kishon@ti.com>, Alexandru Stan <amstan@chromium.org>, Guenter Roeck <groeck@google.com>, kieran.bingham@ideasonboard.com, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, kernel@collabora.com, Benson Leung <bleung@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko and all,

Missatge de Heiko Stuebner <heiko@sntech.de> del dia dc., 15 d=E2=80=99ag.
2018 a les 12:31:
>
> Am Mittwoch, 15. August 2018, 11:59:31 CEST schrieb Enric Balletbo i Serr=
a:
> > Fix the typo flase -> false and clean up the kernel-doc documentation i=
n
> > phy-rockchip-inno.usb2.c and fix the following warnings when documentat=
ion
> > is built.
> >
> >   :58: warning: missing initial short description
> >   :69: warning: cannot understand function prototype: 'enum usb_chg_sta=
te '
> >   :97: warning: missing initial short description
> >   :136: warning: cannot understand function prototype: 'struct rockchip=
_usb2phy_port_cfg '
> >   :157: warning: cannot understand function prototype: 'struct rockchip=
_usb2phy_cfg '
> >   :163: warning: Function parameter or member 'port_cfgs' not described=
 in 'rockchip_usb2phy_cfg'
> >   :187: warning: cannot understand function prototype: 'struct rockchip=
_usb2phy_port '
> >   :204: warning: Function parameter or member 'port_cfg' not described =
in 'rockchip_usb2phy_port'
> >   :207: warning: missing initial short description
> >   :234: warning: Function parameter or member 'dev' not described in 'r=
ockchip_usb2phy'
> >   :234: warning: Function parameter or member 'clk480m_hw' not describe=
d in 'rockchip_usb2phy'
> >
> > Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>

I included this patch in these series because I found the errors when
I was working on this. But this patch doesn't really depend on the
other patches and probably I should have had to send independently. I
am planning to send a new version of these series excluding this
patch. I think that the patch can be already picked (still applies
cleanly and is fine to pick?) or do you prefer I resend?

Thanks,
 Enric

>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
