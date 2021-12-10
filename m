Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3146C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Dec 2021 08:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWl16H+OwxUNvVOHaOXt7xQSan9DMgthWC8rZ4+P6vk=; b=QbqI0VnDN2W2k0
	U2qBFDLhM1NqZnsajqR7VMMBGDrWyiH3tkjNrJkQggCnW7UCuhSKoOzmFL3Ipwlg1AzTb1rkDIkUJ
	m34WEaS9hU/E64nPjj3qtt3zkYx8ilzVe1KuzhLLI45Wx/1h0qStatnZ4yxJblueKaFTQ8cRultl4
	izaj0ha47yv6qY0eXigmESLlnDAFJqg07YbY+WC7oKGioQmCYsyMCTu5n2ZeTtj1RWbT5jcaLnh5O
	XGahxSZA4BfxYBx9QdGmNw+e6HUtvmxSq9pYKBBmjduak1RS3HZsRKB/Imn6tLOmpTgXxdn6ms6g3
	NGh6U9fmRqSn/9WYiLIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvbh2-001G8o-6B; Fri, 10 Dec 2021 08:55:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvbgq-001G6I-26
 for linux-rockchip@lists.infradead.org; Fri, 10 Dec 2021 08:55:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mvbgn-0000TC-1L; Fri, 10 Dec 2021 09:55:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mvbgm-0002Mi-En; Fri, 10 Dec 2021 09:55:36 +0100
Date: Fri, 10 Dec 2021 09:55:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 17/18] drm: rockchip: Add VOP2 driver
Message-ID: <20211210085536.GC25513@pengutronix.de>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-18-s.hauer@pengutronix.de>
 <bd576949-a42b-9750-fe97-b9b567c7ea75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd576949-a42b-9750-fe97-b9b567c7ea75@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:51:38 up 295 days, 12:15, 150 users,  load average: 0.22, 0.19,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_005540_114530_969A0BF4 
X-CRM114-Status: GOOD (  30.20  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Johan,

On Wed, Dec 08, 2021 at 05:59:16PM +0100, Johan Jonker wrote:
> Hi,
> 
> On 12/8/21 4:12 PM, Sascha Hauer wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> > It replaces the VOP unit found in the older Rockchip SoCs.
> > 
> > This driver has been derived from the downstream Rockchip Kernel and
> > heavily modified:
> > 
> > - All nonstandard DRM properties have been removed
> > - dropped struct vop2_plane_state and pass around less data between
> >   functions
> > - Dropped all DRM_FORMAT_* not known on upstream
> > - rework register access to get rid of excessively used macros
> > - Drop all waiting for framesyncs
> > 
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> 
> [..]
> 
> > +
> > +static const struct of_device_id vop2_dt_match[] = {
> > +	{
> > +		.compatible = "rockchip,rk3568-vop",
> > +		.data = &rk3568_vop
> > +	}, {
> 
> > +		.compatible = "rockchip,rk3568-vop",
> 
> Maybe use:
> .compatible = "rockchip,rk3566-vop",

Copy/Paste bug. Will fix.

> 
> > +		.data = &rk3566_vop
> > +	}, {
> > +	},
> 
> Maybe sort this list alphabetical based on compatible in case later more
> SoCs are added.
> 
> rk3566
> rk3568

Ok.

> 
> ===
> 
> The structure layout size above could be reduced for if we get more
> compatible strings additions.
> 
> Example vop1:
> 
> static const struct of_device_id vop_driver_dt_match[] = {
> 	{ .compatible = "rockchip,rk3036-vop",
> 	  .data = &rk3036_vop },
> 	{ .compatible = "rockchip,rk3126-vop",
> 	  .data = &rk3126_vop },
> 	{ .compatible = "rockchip,px30-vop-big",
> 	  .data = &px30_vop_big },
> 	{ .compatible = "rockchip,px30-vop-lit",
> 	  .data = &px30_vop_lit },
> 	{ .compatible = "rockchip,rk3066-vop",
> 	  .data = &rk3066_vop },
> 	{ .compatible = "rockchip,rk3188-vop",
> 	  .data = &rk3188_vop },
> 	{ .compatible = "rockchip,rk3288-vop",
> 	  .data = &rk3288_vop },
> 	{ .compatible = "rockchip,rk3368-vop",
> 	  .data = &rk3368_vop },
> 	{ .compatible = "rockchip,rk3366-vop",
> 	  .data = &rk3366_vop },
> 	{ .compatible = "rockchip,rk3399-vop-big",
> 	  .data = &rk3399_vop_big },
> 	{ .compatible = "rockchip,rk3399-vop-lit",
> 	  .data = &rk3399_vop_lit },
> 	{ .compatible = "rockchip,rk3228-vop",
> 	  .data = &rk3228_vop },
> 	{ .compatible = "rockchip,rk3328-vop",
> 	  .data = &rk3328_vop },
> 	{},

It's shorter, but ugly ;)
That's only my personal taste though, I don't care much.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
