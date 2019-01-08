From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/4] phy: rockchip-inno-usb2: fix misspelling and kernel-doc documentation.
Date: Tue, 08 Jan 2019 18:38:26 +0100
Message-ID: <35160832.xjWYcIOf1W@diego>
References: <20180815095934.11205-1-enric.balletbo@collabora.com> <2908229.jFki8unlfB@phil> <CAFqH_50tz1Toi6L1Ju5imyMRPzN1bDg7mxzcLrJWvdxOwknfdw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFqH_50tz1Toi6L1Ju5imyMRPzN1bDg7mxzcLrJWvdxOwknfdw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Enric Balletbo Serra <eballetbo@gmail.com>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>, Kishon Vijay Abraham I <kishon@ti.com>, Alexandru Stan <amstan@chromium.org>, Guenter Roeck <groeck@google.com>, kieran.bingham@ideasonboard.com, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, kernel@collabora.com, Benson Leung <bleung@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Enric,

Am Dienstag, 8. Januar 2019, 18:35:38 CET schrieb Enric Balletbo Serra:
> Hi Heiko and all,
> 
> Missatge de Heiko Stuebner <heiko@sntech.de> del dia dc., 15 d’ag.
> 
> 2018 a les 12:31:
> > Am Mittwoch, 15. August 2018, 11:59:31 CEST schrieb Enric Balletbo i 
Serra:
> > > Fix the typo flase -> false and clean up the kernel-doc documentation in
> > > phy-rockchip-inno.usb2.c and fix the following warnings when
> > > documentation
> > > is built.
> > > 
> > >   :58: warning: missing initial short description
> > >   :69: warning: cannot understand function prototype: 'enum
> > >   :usb_chg_state '
> > >   :97: warning: missing initial short description
> > >   :136: warning: cannot understand function prototype: 'struct
> > >   :rockchip_usb2phy_port_cfg ' 157: warning: cannot understand function
> > >   :prototype: 'struct rockchip_usb2phy_cfg ' 163: warning: Function
> > >   :parameter or member 'port_cfgs' not described in
> > >   :'rockchip_usb2phy_cfg' 187: warning: cannot understand function
> > >   :prototype: 'struct rockchip_usb2phy_port ' 204: warning: Function
> > >   :parameter or member 'port_cfg' not described in
> > >   :'rockchip_usb2phy_port' 207: warning: missing initial short
> > >   :description
> > >   :234: warning: Function parameter or member 'dev' not described in
> > >   :'rockchip_usb2phy' 234: warning: Function parameter or member
> > >   :'clk480m_hw' not described in 'rockchip_usb2phy'> > 
> > > Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> > 
> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> 
> I included this patch in these series because I found the errors when
> I was working on this. But this patch doesn't really depend on the
> other patches and probably I should have had to send independently. I
> am planning to send a new version of these series excluding this
> patch. I think that the patch can be already picked (still applies
> cleanly and is fine to pick?) or do you prefer I resend?

I would resend it.

The patch is from august 2018, so I'd guess Kishon won't have it in his
inbox anymore, so a resend may be easier for everyone.


Heiko
