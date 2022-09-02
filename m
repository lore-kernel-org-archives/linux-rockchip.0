Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7A93C6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 18:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v7j7CuENFRqjrqycgZTbtqGMfsqVKibAICfiuysR2B8=; b=obE2uICIto9LAK
	KAaWIbSGftBtFRC9zW4EUF1w6g6PRu1dgabJTLha+jTnG5zvFCihqxU1KuJGr1NWw+Gp3VjalrS0M
	yQ6heKPep5fADsH8qmpAU8Kw/zHxhT7YPLNWu1bzneoWcTFCMy7B8ZHp60S5Z452f0QR8AbX84d5A
	q8UEKpEOp05UCqKhbFTBtbdf4ddBKmgsrDdqRu02J3eWA5VIbdy7cHNSQW00RBvMxhl71Ls1LWkk2
	ROeS89YBKl1X5cA5CtC3GZXTfpdy6phd3KBwClNDH1cn5/qCwpKyKZad7Giw4xB3bqosoXHlZ7+ee
	3jpSPm85Xie5XSUwWhsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUBQI-009SbQ-IH; Fri, 02 Sep 2022 18:29:46 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUBQ5-009SSg-HI; Fri, 02 Sep 2022 18:29:34 +0000
Received: by mail-wm1-x32a.google.com with SMTP id s23so1699893wmj.4;
        Fri, 02 Sep 2022 11:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ru/sOMpY04FYeBztI8C2e/SBkJ3BPqiNet5T9iJERfg=;
        b=dCh61ZuMaf6p7k5dl/jPZPX6QhV/S1uPMNQ86Gu4lqEIpRPLzQzSiw8Bc2E7IOpzsq
         U5sFRNKK6cUwPjf3BYIMCOSg4LKoa/r1Q7buvOLSboCGyarp3+WzAJgz9GM0eClJYK/L
         336TuDTJLaMFnRTro/shcVjYh1mfJQcDWqJCT8oLtWCeX6ImjCKTP6X6VnVQiAqrfS8p
         eraBaC2B/zjhp1hQ9/zLMPLv/prUVTVQUMQt9V3gcC9NH35itfo3sspkYjUWN0M905Aq
         vAkDLUFv1k7fXlXzPnOCAh0SuTuHPpTLLjh4VQoZA/Uvi0fO41uAKAi490slwwgO1FlO
         49JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ru/sOMpY04FYeBztI8C2e/SBkJ3BPqiNet5T9iJERfg=;
        b=ZO/Ob1hcgjdOSBZSJCCiN40RPFuzpWXkJuXiZYKrwebmtb81lW+D2Ow9+1J+DBwaHg
         RetucUfJ1swSHcyTfNJ3YOTeW3Ryy5plhfbfxqSGybdZqFamjiTtqPxLgaF+2ouevtrG
         fiXpP4DOYN77WGog3m2wCjiyoANHqvIHMvEOHpi9MlNFZFlT3wJuu65C4kln6Gby9d7d
         0EFn56HEUOEK/4AIuP7D9W5V+py5tKGZDK0ouzsFk7bXJBHTL9jvgcOCNF6653Wkhbh8
         yyxDtRNtjgvr0GmE4OC2FODDTP776U+7Qzv45EUx7jozE1yS1ycCJNhYJGZ9+H7nU2qz
         HsKg==
X-Gm-Message-State: ACgBeo3pd2mCorVqMlkDVET+tPLuAH3Cdll3DEF/CF2joExiMiBnXkJ1
	hm7EtZ14g2pXmlsWP+Nz7zRi6wbuNqNZcyB3SMc=
X-Google-Smtp-Source: AA6agR5nnh+dSyoem/9Q5JklQjDjkcaPLSZgU85h1fyGIR+xfUgNS7odm+Z8mHAiW6Stc+pLtSUpqzOef6DAIzFSV10=
X-Received: by 2002:a05:600c:1e8d:b0:3a5:e37f:6fd2 with SMTP id
 be13-20020a05600c1e8d00b003a5e37f6fd2mr3771210wmb.33.1662143370997; Fri, 02
 Sep 2022 11:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220824122543.174730-1-pgwipeout@gmail.com> <YxI+4t3fecbIYC07@matsya>
In-Reply-To: <YxI+4t3fecbIYC07@matsya>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 2 Sep 2022 14:29:19 -0400
Message-ID: <CAMdYzYqKLKXm5b_GifOEq4COyd9CSWpWdwaeOxngwMcgw0gQWw@mail.gmail.com>
Subject: Re: [PATCH v3] phy: rockchip-inno-usb2: Return zero after otg sync
To: Vinod Koul <vkoul@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>, Samuel Holland <samuel@sholland.org>, 
	Markus Reichl <m.reichl@fivetechno.de>, Michael Riesch <michael.riesch@wolfvision.net>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_112933_609755_308F72FD 
X-CRM114-Status: GOOD (  24.60  )
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

On Fri, Sep 2, 2022 at 1:35 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 24-08-22, 08:25, Peter Geis wrote:
> > The otg sync state patch reuses the ret variable, but fails to set it to
> > zero after use. This leads to a situation when the otg port is in
> > peripheral mode where the otg phy aborts halfway through setup.  It also
> > fails to account for a failure to register the extcon notifier. Fix this
> > by using our own variable and skipping otg sync in case of failure.
> >
> > Fixes: 8dc60f8da22f ("phy: rockchip-inno-usb2: Sync initial otg state")
> >
>
> No blank here please
>
> > Reported-by: Markus Reichl <m.reichl@fivetechno.de>
> > Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Tested-by: Markus Reichl <m.reichl@fivetechno.de>
> > ---
> > Changelog:
> > v3
> > - add missing brackets around new goto
> > v2
> > - switch to using our own variable
> > - add missing goto to skip sync in case of registration failure
> > ---
> >  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > index 0b1e9337ee8e..27da5ba379c4 100644
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
> > @@ -1163,12 +1163,15 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
> >               ret = devm_extcon_register_notifier(rphy->dev, rphy->edev,
> >                                       EXTCON_USB_HOST, &rport->event_nb);
> >               if (ret)
> > +             {
>
> :-(
>
> this is _not_ linux kernel code style!
>
> Reminder: it always helps to run checkpatch

Ouch, yeah that's really embarrassing. Thank you for catching it.

>
> >                       dev_err(rphy->dev, "register USB HOST notifier failed\n");
> > +                     goto out;
> > +             }
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
> > --
> > 2.25.1
>
> --
> ~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
