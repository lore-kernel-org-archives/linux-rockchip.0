Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AEC2C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 23:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Q9BTKA5mGmMrSeTTkwr1I/lqgt4KeYC0V3mt2BH4NY=; b=SdKen9DgvyN4XT
	9loqhRcYJgjT1qYBZmYmrvqb5idB9u1o/YBHFL8sWkG4RR1RKHtV8/nL8mFKdy6RJX3olOZ3z32NT
	FXcDrbUQNKn12E38Kz/LL2wGu56OeCfzwu8ytbynDJvE1o0bJTkvf+c+42bgHWaNnnYZ0YhnVddLC
	9OoUBtRAv0j1FSjVlidGOZeO29/QP7Dlk3nkp6qwngCCeuoWFdBYzpRpwgchoJAyMozgRKfRgNCA7
	gQRLHi1h0ZhwNSE8+pGudx4dFpxB582O9eF5NzmJAfpX+G5KL9H6ENz4Y6mfAyMpnIcsUNK3+mLtS
	neCP6YpJMwkPYtJhc+Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2L02-009VVP-FW; Fri, 17 Jun 2022 23:03:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Kzz-009VUM-Hm
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 23:03:33 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 82E8A383;
	Sat, 18 Jun 2022 01:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655507009;
	bh=4Eee/I55ZGG1+JG7ayTNskG9zewiySXKOYG672HNrIQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QqwHeIfJSNjIlVJwQzNLNNnV0UehSO9k/yqkdWqUG+iyZTNwMvXtBjOEdV3CSPndS
	 BzDEuJUicb+hhhnefr+Rc2dkQOB8R2TFX3O7Fb6ZImeL9RwUile+uLUtih8ENbCmMI
	 IFD2EUv2+AeEjAlc+c1zooqc3mTUY9Y8F7myjjgg=
Date: Sat, 18 Jun 2022 02:03:17 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: (EXT) [PATCH 55/55] media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
Message-ID: <Yq0INaUi1yaB0d8F@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-56-paul.elder@ideasonboard.com>
 <3553507.tdWV9SEqCh@steina-w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3553507.tdWV9SEqCh@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_160331_773748_174DE175 
X-CRM114-Status: GOOD (  20.44  )
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

Hi Alexander,

On Thu, Jun 16, 2022 at 10:05:06AM +0200, Alexander Stein wrote:
> Am Dienstag, 14. Juni 2022, 21:11:27 CEST schrieb Paul Elder:
> > The ISP that is integrated in the i.MX8MP uses different bits in the
> > MRSZ_CTRL and SRSZ_CTRL registers for updating the configuration
> > compared to the on in the RK3399. In addition, it adds a new bit for
> > enabling crop. Add new definitions for these bits for i.MX8MP devices,
> > and update where they are set.
> > 
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > ---
> >  drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h   |  4 ++++
> >  .../media/platform/rockchip/rkisp1/rkisp1-resizer.c    | 10 ++++++++--
> >  2 files changed, 12 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h index
> > 34f4fe09c88d..24ad2ccec2a3 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > @@ -168,6 +168,10 @@
> >  #define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO		BIT(9)
> >  #define RKISP1_CIF_RSZ_SCALER_FACTOR			BIT(16)
> > 
> > +#define RKISP1_CIF_RSZ_CTRL_CROP_ENABLE_IMX		BIT(8)
> > +#define RKISP1_CIF_RSZ_CTRL_CFG_UPD_IMX			BIT(9)
> > +#define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO_IMX		BIT(10)
> > +
> 
> Does it make sense to move this kind of information into struct rkisp1_info? 
> This way you can skip the if (isp_ver == ...) thing.

Good question. Paul, what do you think ? If it doesn't get moved to the
structure, I think I'd condition it by the RKISP1_FEATURE_RSZ_CROP
feature bit instead of a version check, as it seems closely related. I'm
actually leaning towards the latter.

> >  /* RSZ_CROP_[XY]_DIR */
> >  #define RKISP1_CIF_RSZ_CROP_XY_DIR(start, end)		((end) << 16 | (start) << 0)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c index
> > 08bf3aa8088f..29a31b18a082 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > @@ -209,9 +209,15 @@ static void rkisp1_rsz_update_shadow(struct
> > rkisp1_resizer *rsz, u32 ctrl_cfg = rkisp1_rsz_read(rsz,
> > RKISP1_CIF_RSZ_CTRL);
> > 
> >  	if (when == RKISP1_SHADOW_REGS_ASYNC)
> > -		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
> > +		if (rsz->rkisp1->info->isp_ver == IMX8MP_V10)
> > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO_IMX;
> > +		else
> > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
> >  	else
> > -		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
> > +		if (rsz->rkisp1->info->isp_ver == IMX8MP_V10)
> > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_IMX;
> > +		else
> > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
> > 
> >  	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, ctrl_cfg);
> >  }

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
