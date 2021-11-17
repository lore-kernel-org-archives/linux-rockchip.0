Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AEB8C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 14:53:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4625961269
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 14:53:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4625961269
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXSSDUDaejRv94mBccW4VbK1LHAVi3Gbh4PF2fctR+c=; b=qfYzZlgwfcIAOA
	lIJk0X9M8XkoykQJPr+Ew7QkWinsujbsZTIkJHt23XLJim4RD/kRmNqIdLHsXblsPxhEw6tpIWcCe
	LITXeK2vcgEHu6NrMm0FkkIJyd3fnAo4olqDoxMR/mZR8lYawHUPGruAqnyiTWcPpv4+UAGgwaUy+
	xC1VWUutKzhMZ8rMjRD6C0b3QyiBmuCPF2kGoMctS9A1C63FzaeotxT1UVVeIqupvDwrKT8rJcMh4
	10/pwLYW/1haayb7Xus7bxkL1k3JckxTgrwo380lNpOo7sT7VbzfaN1rK2oJdhUgPA8MF/bTv9+4O
	aKZwKSppCb3j5D05WQYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnMJb-005F7r-SM; Wed, 17 Nov 2021 14:53:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnMH4-005ECE-Q1
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 14:51:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnMH1-0000XG-Hs; Wed, 17 Nov 2021 15:50:55 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnMH0-0001C9-9I; Wed, 17 Nov 2021 15:50:54 +0100
Date: Wed, 17 Nov 2021 15:50:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 11/12] drm/rockchip: Make VOP driver optional
Message-ID: <20211117145054.GL6556@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-12-s.hauer@pengutronix.de>
 <15744316.EhFUcUTHNY@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15744316.EhFUcUTHNY@diego>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:44:50 up 272 days, 18:08, 147 users,  load average: 0.28, 0.17,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_065058_889524_B9E11964 
X-CRM114-Status: GOOD (  25.38  )
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

On Wed, Nov 17, 2021 at 03:40:26PM +0100, Heiko St=FCbner wrote:
> Am Mittwoch, 17. November 2021, 15:33:46 CET schrieb Sascha Hauer:
> > With upcoming VOP2 support VOP won't be the only choice anymore, so make
> > the VOP driver optional.
> > =

> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/configs/multi_v7_defconfig         | 1 +
> >  arch/arm64/configs/defconfig                | 1 +
> >  drivers/gpu/drm/rockchip/Kconfig            | 7 +++++++
> >  drivers/gpu/drm/rockchip/Makefile           | 3 ++-
> >  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
> >  5 files changed, 12 insertions(+), 2 deletions(-)
> > =

> > diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/mul=
ti_v7_defconfig
> > index c951aeed2138c..fc123e8f3e2f9 100644
> > --- a/arch/arm/configs/multi_v7_defconfig
> > +++ b/arch/arm/configs/multi_v7_defconfig
> > @@ -667,6 +667,7 @@ CONFIG_DRM_EXYNOS_DPI=3Dy
> >  CONFIG_DRM_EXYNOS_DSI=3Dy
> >  CONFIG_DRM_EXYNOS_HDMI=3Dy
> >  CONFIG_DRM_ROCKCHIP=3Dm
> > +CONFIG_ROCKCHIP_VOP=3Dy
> >  CONFIG_ROCKCHIP_ANALOGIX_DP=3Dy
> >  CONFIG_ROCKCHIP_DW_HDMI=3Dy
> >  CONFIG_ROCKCHIP_DW_MIPI_DSI=3Dy
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index f2e2b9bdd7024..a623386473dc9 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -682,6 +682,7 @@ CONFIG_DRM_EXYNOS_DSI=3Dy
> >  CONFIG_DRM_EXYNOS_HDMI=3Dy
> >  CONFIG_DRM_EXYNOS_MIC=3Dy
> >  CONFIG_DRM_ROCKCHIP=3Dm
> > +CONFIG_ROCKCHIP_VOP=3Dy
> >  CONFIG_ROCKCHIP_ANALOGIX_DP=3Dy
> >  CONFIG_ROCKCHIP_CDN_DP=3Dy
> >  CONFIG_ROCKCHIP_DW_HDMI=3Dy
> > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchi=
p/Kconfig
> > index 9f1ecefc39332..a1c4158259099 100644
> > --- a/drivers/gpu/drm/rockchip/Kconfig
> > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > @@ -21,8 +21,15 @@ config DRM_ROCKCHIP
> >  =

> >  if DRM_ROCKCHIP
> >  =

> > +config ROCKCHIP_VOP
> > +	bool "Rockchip VOP driver"
> =

> would this benefit from a default-y ?
> For builds reusing preexisting .configs.

I enabled CONFIG_ROCKCHIP_VOP for all configs in the tree that enable
CONFIG_DRM_ROCKCHIP, so defconfig users shouldn't see any surprises.
That won't help users of custom configs of course.

I don't know what's preferred in such cases, I can change to default-y
if you like.

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
