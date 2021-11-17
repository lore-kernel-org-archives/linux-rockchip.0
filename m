Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2943BC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 15:16:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C31866187F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 15:16:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C31866187F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMsnsFkduSGoBRUCFibybPogEL+xDdTnATZAkmkiSn8=; b=3KrihwbmVU203p
	8rz6OdrYC/qQTmYlG9JrP6HLlZLGrsnCNwZHfcF3r6AqCIwRBBohmfDQ7ZhEu/rhhZE2GIL7JZZCY
	mzgyeQHNwI9udxaGH65VwH4uOPrqrpFvbOUdkAUjwmtDVnhZ6+Ha9M8yZ5weJ3FJ1gmdRrt7Sy+nZ
	HUdbbiCHUZxIWOSnc0mKJUVKOb1ZYS/qMNLrBzsD6o9WX01kSRQxBtGvVt4rwSJdDmUg+03goMzDB
	hpsfsJspDZcRVmt8wCNE+Cjjhxm1IAsJlwvdPBfINozWaNT7wkdz1UsoIUG7UGCmkm1jHQI4Ckhr9
	SxmvvpK+Ciup6Mi0C1oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnMfx-005Ldm-Sw; Wed, 17 Nov 2021 15:16:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnMfj-005Lae-DR; Wed, 17 Nov 2021 15:16:28 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mnMfh-0004un-MX; Wed, 17 Nov 2021 16:16:25 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 11/12] drm/rockchip: Make VOP driver optional
Date: Wed, 17 Nov 2021 16:16:24 +0100
Message-ID: <2763206.1bNW4tK36S@diego>
In-Reply-To: <20211117145054.GL6556@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <15744316.EhFUcUTHNY@diego> <20211117145054.GL6556@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_071627_488096_3D923C12 
X-CRM114-Status: GOOD (  24.14  )
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

Am Mittwoch, 17. November 2021, 15:50:54 CET schrieb Sascha Hauer:
> On Wed, Nov 17, 2021 at 03:40:26PM +0100, Heiko St=FCbner wrote:
> > Am Mittwoch, 17. November 2021, 15:33:46 CET schrieb Sascha Hauer:
> > > With upcoming VOP2 support VOP won't be the only choice anymore, so m=
ake
> > > the VOP driver optional.
> > > =

> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/configs/multi_v7_defconfig         | 1 +
> > >  arch/arm64/configs/defconfig                | 1 +
> > >  drivers/gpu/drm/rockchip/Kconfig            | 7 +++++++
> > >  drivers/gpu/drm/rockchip/Makefile           | 3 ++-
> > >  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
> > >  5 files changed, 12 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/m=
ulti_v7_defconfig
> > > index c951aeed2138c..fc123e8f3e2f9 100644
> > > --- a/arch/arm/configs/multi_v7_defconfig
> > > +++ b/arch/arm/configs/multi_v7_defconfig
> > > @@ -667,6 +667,7 @@ CONFIG_DRM_EXYNOS_DPI=3Dy
> > >  CONFIG_DRM_EXYNOS_DSI=3Dy
> > >  CONFIG_DRM_EXYNOS_HDMI=3Dy
> > >  CONFIG_DRM_ROCKCHIP=3Dm
> > > +CONFIG_ROCKCHIP_VOP=3Dy
> > >  CONFIG_ROCKCHIP_ANALOGIX_DP=3Dy
> > >  CONFIG_ROCKCHIP_DW_HDMI=3Dy
> > >  CONFIG_ROCKCHIP_DW_MIPI_DSI=3Dy
> > > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defcon=
fig
> > > index f2e2b9bdd7024..a623386473dc9 100644
> > > --- a/arch/arm64/configs/defconfig
> > > +++ b/arch/arm64/configs/defconfig
> > > @@ -682,6 +682,7 @@ CONFIG_DRM_EXYNOS_DSI=3Dy
> > >  CONFIG_DRM_EXYNOS_HDMI=3Dy
> > >  CONFIG_DRM_EXYNOS_MIC=3Dy
> > >  CONFIG_DRM_ROCKCHIP=3Dm
> > > +CONFIG_ROCKCHIP_VOP=3Dy
> > >  CONFIG_ROCKCHIP_ANALOGIX_DP=3Dy
> > >  CONFIG_ROCKCHIP_CDN_DP=3Dy
> > >  CONFIG_ROCKCHIP_DW_HDMI=3Dy
> > > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockc=
hip/Kconfig
> > > index 9f1ecefc39332..a1c4158259099 100644
> > > --- a/drivers/gpu/drm/rockchip/Kconfig
> > > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > > @@ -21,8 +21,15 @@ config DRM_ROCKCHIP
> > >  =

> > >  if DRM_ROCKCHIP
> > >  =

> > > +config ROCKCHIP_VOP
> > > +	bool "Rockchip VOP driver"
> > =

> > would this benefit from a default-y ?
> > For builds reusing preexisting .configs.
> =

> I enabled CONFIG_ROCKCHIP_VOP for all configs in the tree that enable
> CONFIG_DRM_ROCKCHIP, so defconfig users shouldn't see any surprises.
> That won't help users of custom configs of course.
> =

> I don't know what's preferred in such cases, I can change to default-y
> if you like.

default-y would keep the behaviour identical for all existing configs I
guess and right now vop(1) is still the most used variant and will stay
that way for a while longer, so I guess my preference would be for going
that route - also so that we don't drown in "my display stopped working"
during 5.17 ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
