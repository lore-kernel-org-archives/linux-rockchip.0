Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A46BAC00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 10:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3aEP65T8DUQybcerpdy1Wib330QJJsZKVT1OQt9p6c=; b=CvuNHaOyntmF+h
	J6OEpEvFr4w4u+hqZ+m29ETf/1subF7AQnf0loTVmZ9x0pnfL46jqQogC+6CiFcpre/L5gIaY3o81
	wQhVBzAO7GKXCNMJ500flZY7OSNSZpOe0j5piHultTpnpNJJ7cCXp1LbHMB7NzFLX6btmb0Xg1HaV
	an8iZKFVh6Lp9DGYjFRCz4PT5c4oYJepxpXK6oyoimL5afliFKJCROVK+IN3CBVWzUcN6GYBKiU2x
	ygFe54Q11NnSsZoyMew/dyWDrP2kE/vK1HOb+5xyKk34mZPZo8iEp2AuKroVSEnKGUHOiJiYSZuUf
	ODxU0akpA3GZR4EUQ2BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQnSZ-00C0C2-Jg; Wed, 24 Aug 2022 10:18:07 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQnSO-00C07i-Na; Wed, 24 Aug 2022 10:17:58 +0000
Received: by mail-wr1-x42b.google.com with SMTP id z16so1365378wrh.10;
        Wed, 24 Aug 2022 03:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=2rEDI8nneWR8uBhC0k6la2EvHD4yLzs+a+6fUoYoKU4=;
        b=VFeU530PAmK3n65fcXn1z65tSUzwYLn85+ojxSycSOPVQcheykt616CE28AJr0U3SN
         WEwvG4O8Wn+wPOXom3oZdoxlCbYU0rvZSTXRgr8Xn9jVyIc4dbpJrVE9sn2c0xkg9yE4
         m72FqQyOrhyqyoY4JiFaZOhyOJH095QKXbX/jwHZzpMMGl23vDec+NOLToJ5lkCCTcbQ
         bxnb/saWP3f2H5q2mDOY6tovIJc4bFcZ/u4UvTf4DiCXiun4CiMT1fB5sEI1EJA/tHxQ
         ZONjdcHmDa3AnyGz3zLzKDdBmv85QfIdlr9xdYrPKcWJs4/KcjrejIuyx+1R33YoBCYm
         vAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=2rEDI8nneWR8uBhC0k6la2EvHD4yLzs+a+6fUoYoKU4=;
        b=wEiShzAEfaRos//VUea+KvL/uOsYV1wftGjLt757pDnOvbMDkLVH03a5wxnIH7Qy98
         eCTSElv6CanLEAE2ENvV9YFGoffVhFBfaEELWErrW/DPtxjEFjL2zxk2SE2fuzmZ/ycZ
         BYmJLcKYt1SHuRo2CnYFGhHYM9B3fMm3cCicv6orOPFpFw0YOHJ3GRNu95O+gAP2jDuj
         CZVKhxnJrh2o09pH3dI0JAEGtI/yNhGlM1Ta9ek9yxaC5nPprvi8a4lSfTQDJsvrjPy8
         I66TQbelarvTHxu3KX2ZoW4NeVh+gz+8xMFuW9x5XjTEhOUlRw0by5gj8U+5BgDv7tOJ
         h4fQ==
X-Gm-Message-State: ACgBeo1H901NcAMkIX06Thd/6t0DC+JqYDf4k9YYoADu+Ts1+LZsb2sG
	HNwSofaWlgip2XzqkiSzeBixrmBIYMi94M25bbc=
X-Google-Smtp-Source: AA6agR7sQ+Joxq+aq8uIl+CNG/GIrqr+nGL3cJhEBxurQU45bDdJBx8cY5FhIPu5261Cv1lHhcYULOg7B0jFQMr9xIA=
X-Received: by 2002:a5d:45c1:0:b0:225:2803:e791 with SMTP id
 b1-20020a5d45c1000000b002252803e791mr15643183wrs.539.1661336270818; Wed, 24
 Aug 2022 03:17:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220823144728.47068-1-pgwipeout@gmail.com> <86198a8a-96d4-5856-bc2d-44bf352c82fe@wolfvision.net>
In-Reply-To: <86198a8a-96d4-5856-bc2d-44bf352c82fe@wolfvision.net>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 24 Aug 2022 12:17:39 +0200
Message-ID: <CAMdYzYopzOJ2RtWtYgP3G4ESVMFhCqU3fOQq_kCc1g51ZDZ=bA@mail.gmail.com>
Subject: Re: [PATCH v2] phy: rockchip-inno-usb2: Return zero after otg sync
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, Markus Reichl <m.reichl@fivetechno.de>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_031756_790638_8EFE37FD 
X-CRM114-Status: GOOD (  23.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Aug 24, 2022 at 7:33 AM Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> Hi Peter,
>
> On 8/23/22 16:47, Peter Geis wrote:
> > The otg sync state patch reuses the ret variable, but fails to set it to
> > zero after use. This leads to a situation when the otg port is in
> > peripheral mode where the otg phy aborts halfway through setup.  It also
> > fails to account for a failure to register the extcon notifier. Fix this
> > by using our own variable and skipping otg sync in case of failure.
> >
> > Fixes: 8dc60f8da22f ("phy: rockchip-inno-usb2: Sync initial otg state")
> >
> > Reported-by: Markus Reichl <m.reichl@fivetechno.de>
> > Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Tested-by: Markus Reichl <m.reichl@fivetechno.de>
> > ---
> >  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > index 0b1e9337ee8e..d579a22c61df 100644
> > --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > @@ -1124,7 +1124,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
> >                                         struct rockchip_usb2phy_port *rport,
> >                                         struct device_node *child_np)
> >  {
> > -     int ret;
> > +     int ret, id;
> >
> >       rport->port_id = USB2PHY_PORT_OTG;
> >       rport->port_cfg = &rphy->phy_cfg->port_cfgs[USB2PHY_PORT_OTG];
> > @@ -1164,11 +1164,12 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
> >                                       EXTCON_USB_HOST, &rport->event_nb);
> >               if (ret)
>
> This needs braces, right?
>
>         if (ret) {
> >                       dev_err(rphy->dev, "register USB HOST notifier failed\n");
> > +                     goto out;
>
>         }
>
> With the braces the patch works as expected.

Yup, thanks for that. I hate working without access to my hardware.

>
> Thanks and best regards,
> Michael
>
> >
> >               if (!of_property_read_bool(rphy->dev->of_node, "extcon")) {
> >                       /* do initial sync of usb state */
> > -                     ret = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
> > -                     extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !ret);
> > +                     id = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
> > +                     extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !id);
> >               }
> >       }
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
