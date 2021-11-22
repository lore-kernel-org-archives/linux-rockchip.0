Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E0CC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Nov 2021 09:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a56IfHzUxzpZzBVI2ruxOa+LmdrTvu8mE913z8ywKkQ=; b=Ta2HRWlx/+5x0C
	XYMrHOz/iOo6doQQMDVaSu/J+nRmsi0KB2sFe+Tv3cEIm1UYdXHLe88kn4oOIO7uEBAsRNZTgwd/1
	bEnAHkKUEzLSeyAml6sC6FgT8MAVHJXAwTfOE5uIVehxyfiXAV1tZNWUutz5z0CDZaisoJnNFFsdP
	zrHTmf/3dGGkrY6zz/ADQHf9dktTg/dYUkAO94nTvsNvkAl1EfdhOoTtrzbG/F0nrLz92zAnY1vRe
	gOWJQgqIeadwIOU0Oaa38EsnTzWqH3wgnZ10SJKt5RcozFXZmpplvs55CxvC+Dj1FcCwh2uFXw9ZL
	717f+c6VXOa6nnSqh/nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp5lh-00FdHV-B7; Mon, 22 Nov 2021 09:37:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4P5-00FE0W-3q
 for linux-rockchip@lists.infradead.org; Mon, 22 Nov 2021 08:10:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp4Oz-0003KK-S0; Mon, 22 Nov 2021 09:10:13 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp4Ou-0005pL-HP; Mon, 22 Nov 2021 09:10:08 +0100
Date: Mon, 22 Nov 2021 09:10:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
Message-ID: <20211122081008.GR6556@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <73c57643-a0db-e7e7-174d-3cb6a978d98a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73c57643-a0db-e7e7-174d-3cb6a978d98a@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:45:58 up 277 days, 11:09, 111 users,  load average: 0.11, 0.10,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_001019_185519_56577D92 
X-CRM114-Status: GOOD (  56.88  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Alex,

On Mon, Nov 22, 2021 at 12:18:47AM +0100, Alex Bee wrote:
> Hi Sascha,
> =

> Am 17.11.21 um 15:33 schrieb Sascha Hauer:
> > This series adds initial graphics support for the Rockchip RK356[68]
> > SoCs.  Graphics support is based around the VOP2 controller which
> > replaces the VOP controller found on earlier Rockchip SoCs. The driver
> > has been tested with HDMI support included in this series and MIPI-DSI
> > which is not included because it needs some more work. The driver is
> > taken from the downstream Rockchip kernel and heavily polished, most non
> > standard features have been removed for now. I tested the driver with
> > the libdrm modetest utility and also with weston with both pixman and
> > panfrost driver support. Michael Riesch reported the driver to work on
> > the RK3566 as well, but device tree support for this SoC is not yet
> > included in this series.
> >
> > The HDMI changes are based on patches from Benjamin Gaignard, but
> > modified a bit as I found out that the HDMI port on the RK3568 only
> > needs one additional clock, not two. Also I added regulator support
> > which is needed to get the HDMI up on the rk3568-EVB board.
> >
> > All review and testing feedback welcome
> =

> =

> thanks for working on that - it's very (very,very) much appreciated.
> =

> It took me some time to figure it out: It seems rk3568-iommu driver s
> broken - I did only get "white noise" when using it alongside vop
> (similar like it was reported here before). However: removing the
> iommu-property from vop makes it working for me with HDMI output on
> quartz64 as well. Could you check if you have the iommu driver in kernel
> enabled if it works for you, if the property is present in DT? (I used
> 5.16-rc1 + this series + [0]).

I have the iommu driver enabled and it works for me. I get this during
boot:

[0.263287] rockchip-vop2 fe040000.vop: Adding to iommu group 0

So I expect it is indeed used.

> Also vop mmu seems to have the
> power-domain missing in your series (same as downstream) - however
> adding that doesn't help much currently.

Probably the power domain gets enabled anyway when the VOP is activated,
so adding it to the iommu won't help anything. Nevertheless it seems
correct to add the property, I'll do so in the next round.

> As a sidenote: I verfied this with using Ezequiel's vpu addtion for
> RK356x: It did only work when removing the iommu there as well (getting
> tons of page faults otherwise) - so iommu driver really seems to broken,
> at least for RK3566. (Or I'm a missing a option in kernel config, which
> wasn't required for the older iommu version?)

I don't think so. I started from defconfig and disabled other
architectures and unneeded drivers, but I did not enable anything
specific to iommu.

> =A0
> But as reported before: For HDMI this does currently only work for pixel
> clock rates, which are integer-divisable with hpll clock rate (which is
> the hardcoded parent of vop0's dclk)
> As discussed in Benjamin's initial submission of the addition of
> RK3568's hdmi controller [1] same as with RK3288's and RK3399's hdmi phy
> needs a reference clock (it's called vpll there) which needs to get
> switched before the vop switches the mode (since phy rate switching is
> done before) - it's HPLL in case of RK356x. For whatever reason it's
> called "ref" for RK356x only downstream [2] - so you should add another
> clock "vpll" (renaming it to "ref" for _ALL_ SoCs which have it would be
> a _GREAT_ idea) which is <&pmucru PLL_HPLL>.

Yeah, a consumer clock should be named after the usage in the consumer,
not after the provider name. I also stumbled over this and naming it
"ref" makes much more sense. We'll likely have to keep supporting "vpll"
as well for compatibility to old device trees.

> What brings us to the "real" clock problem and the reason, why
> non-integer divisable pixel clock rates are not possible ATM: This is a
> long standing issue for RK3288 and RK3399 as well (and one of the main
> reasons why 4k modes are not possible for those older SoCs currently):
> Upstream all PLL rates are controlled with those PLL rate tables in the
> clock driver and they have to be _exactly_ defined as they are used
> (HDMI sinks are very picky).
> You will not see any additional rates downstream for RK3568: they have a
> mechanism there to automatically calculate the PLL settings if the rate
> doesn't exist in these tables (IIRC this was submitted upstream also:
> but it was rejected/ignored by maintainers).

Looks like we have to try harder to get it upstream. Do you have a
pointer to this patch?

> As a quick hackarround (for
> testing): You could use this table [3] we are using in LibreElec for
> RK3399 to get 4k modes working and assign it to HPLL in RK3568's clock
> driver (I tested it and it works great). It might be possible to just
> add those rates (some also without frac dividers) to the common PLL
> table for RK3568.

Thanks for noting. This could also explain why currently only 1080p is
working.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
