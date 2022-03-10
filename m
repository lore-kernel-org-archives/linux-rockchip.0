Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC616C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Mar 2022 16:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hC6sbfhoYCO3Pkei6XQ8Y99bDD7+BygG0509KDKOB1s=; b=vi19DHYiYsfpxI
	3RA7fd6eAsFETiySnlEKy9lrNqgSmow4GOEHfsOZy4MQLCVTNcm9sAi9qzruegvFoaWCdvMfZXEpd
	yrQlKJk9U7QnoBaAPjyzQpor9AMC0bdhwCDYfp0u2j4vUGoDwTMm12aHyIcloyEoKpzoMYYyeUE0l
	c3d0XXJwCPYa4Udov79VlT6KyEX5LQdu3YZ/JUdvGR3CakwrM6JGyYLQHdZVSPcLMZP83Cfo7JSlW
	ItrbxFI3/qCInYg9CzWsvEBgXrI0+ymgzVJNkrpxCyI7X3FcXw7Is0ZX1+nbJUyEhsO15qHurX7Td
	B968DhlX411g5w3EepZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSLYe-00DUyB-S0; Thu, 10 Mar 2022 16:22:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSLYS-00DUub-Hy; Thu, 10 Mar 2022 16:22:21 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nSLYO-00055v-2B; Thu, 10 Mar 2022 17:22:16 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: cgel.zte@gmail.com, mturquette@baylibre.com,
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Minghao Chi <chi.minghao@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH] clk/rockchip: Use of_device_get_match_data()
Date: Thu, 10 Mar 2022 17:22:15 +0100
Message-ID: <2697395.DCgNgQjydf@diego>
In-Reply-To: <20220309185738.2192EC340EC@smtp.kernel.org>
References: <20220304011703.2061466-1-chi.minghao@zte.com.cn>
 <20220309185738.2192EC340EC@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_082220_619300_64B313F3 
X-CRM114-Status: GOOD (  23.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 9. M=E4rz 2022, 19:57:36 CET schrieb Stephen Boyd:
> Quoting cgel.zte@gmail.com (2022-03-03 17:17:03)
> > From: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
> > =

> > Use of_device_get_match_data() to simplify the code.
> > =

> > Reported-by: Zeal Robot <zealci@zte.com.cn>
> > Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
> > ---
> >  drivers/clk/rockchip/clk-rk3399.c | 8 +-------
> >  1 file changed, 1 insertion(+), 7 deletions(-)
> > =

> > diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/c=
lk-rk3399.c
> > index 306910a3a0d3..b1b67bfb63b8 100644
> > --- a/drivers/clk/rockchip/clk-rk3399.c
> > +++ b/drivers/clk/rockchip/clk-rk3399.c
> > @@ -1634,14 +1634,8 @@ static const struct of_device_id clk_rk3399_matc=
h_table[] =3D {
> >  static int __init clk_rk3399_probe(struct platform_device *pdev)
> >  {
> >         struct device_node *np =3D pdev->dev.of_node;
> > -       const struct of_device_id *match;
> >         const struct clk_rk3399_inits *init_data;
> > -
> > -       match =3D of_match_device(clk_rk3399_match_table, &pdev->dev);
> > -       if (!match || !match->data)
> > -               return -EINVAL;
> > -
> > -       init_data =3D match->data;
> > +       init_data =3D of_device_get_match_data(&pdev->dev);
> =

> The translation doesn't look equivalent. Before we would bail out of
> probe if match data isn't there with an error. That isn't possible of
> course with further investigation but please make a note of this in the
> commit text to aid review.

We _do have_ Rockchip clock drivers serving multiple socs already
(rk3188+rk3066 for example) and as patterns are duplicated often from
one existing driver to a new one, I think it makes sense to have the
error handling done correctly.

So doing
	init_data =3D of_device_get_match_data(&pdev->dev);
	if (init_data)
		return -EINVAL;
as before.

If due to some strange coincidence the condition is triggered
this would cause a null-ptr-dereference with the direct call to
	init_data->scripts
below, which might or might not be hidden due to the (early-)console
being up yet, where with correct error handling a system might at
least come up to a point to complain about a missing clock driver.



> Also, please don't send new versions of
> patches in reply to previous versions of patches. It breaks my patch
> workflow. Thanks in advance.
> =

> >         if (init_data->inits)
> >                 init_data->inits(np);
> >
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
