Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 483EEC43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jun 2022 11:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chxM1UXvUIkOnZj2XtLv08rmCOEuqofGEuTecG0hQpQ=; b=svOkH98Jn7WX+D
	X9/5YjmBbrcef0rvOWPs0i1RhWKDteydua2KjGipGMBR6XIpZGBtZU4TGyX/oABI0QYS5+MQv1uAo
	7DdGUVbFOcLNiRwvM9CU0tyBZ+A4zIlPXJCiVKm+9JC1MSCBteH8hq6H+zcnXW37S1ZCUxrZz0uAK
	l5lwA5t6xVoiCG9OdE215dfQLQEfe/0czqMYT4UPyOsviTFV3yEkvrLLyUvDP2mXCGQl1I330BMGv
	tKGPF7RANKN5X3lm9W+oklaOoZe0Z3BrfHjlR56bi+BcmTrFgflCE1lwjnTr+gb+n23zEmMv+Gn1u
	5OSvEGNkoRl6Z+VbL3Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5QdX-00BUao-BH; Sun, 26 Jun 2022 11:41:07 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5QdV-00BUa8-Cw
	for linux-rockchip@lists.infradead.org; Sun, 26 Jun 2022 11:41:06 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 355F047C;
	Sun, 26 Jun 2022 13:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656243663;
	bh=cYzdx3uKLVEDVNkxLTn7JjhlxbIX358DSvDWa5D2URE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WD4VCrpmtOeZIZoPAh+4Bu20Zu8+mHyF4ev3zo1/JqM4hvRENIK391kvmImQHhfM/
	 i6L8D47xCpZBspjGC1sqCeyXSlNnb3k43eI13+orKjEek/EmD50lft1oFH52Moip3T
	 iddOdVpOTkxLwUnaANsPSE3NBMLy4eWrXA7yOT7I=
Date: Sun, 26 Jun 2022 14:40:45 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: (EXT) [PATCH 55/55] media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
Message-ID: <YrhFvatJPuI1giMt@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-56-paul.elder@ideasonboard.com>
 <3553507.tdWV9SEqCh@steina-w>
 <Yq0INaUi1yaB0d8F@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yq0INaUi1yaB0d8F@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_044105_631187_8C65E06A 
X-CRM114-Status: GOOD (  23.38  )
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

Hi Paul,

Ping

On Sat, Jun 18, 2022 at 02:03:19AM +0300, Laurent Pinchart wrote:
> On Thu, Jun 16, 2022 at 10:05:06AM +0200, Alexander Stein wrote:
> > Am Dienstag, 14. Juni 2022, 21:11:27 CEST schrieb Paul Elder:
> > > The ISP that is integrated in the i.MX8MP uses different bits in the
> > > MRSZ_CTRL and SRSZ_CTRL registers for updating the configuration
> > > compared to the on in the RK3399. In addition, it adds a new bit for
> > > enabling crop. Add new definitions for these bits for i.MX8MP devices,
> > > and update where they are set.
> > > 
> > > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > > ---
> > >  drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h   |  4 ++++
> > >  .../media/platform/rockchip/rkisp1/rkisp1-resizer.c    | 10 ++++++++--
> > >  2 files changed, 12 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > > b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h index
> > > 34f4fe09c88d..24ad2ccec2a3 100644
> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > > @@ -168,6 +168,10 @@
> > >  #define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO		BIT(9)
> > >  #define RKISP1_CIF_RSZ_SCALER_FACTOR			BIT(16)
> > > 
> > > +#define RKISP1_CIF_RSZ_CTRL_CROP_ENABLE_IMX		BIT(8)
> > > +#define RKISP1_CIF_RSZ_CTRL_CFG_UPD_IMX			BIT(9)
> > > +#define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO_IMX		BIT(10)
> > > +
> > 
> > Does it make sense to move this kind of information into struct rkisp1_info? 
> > This way you can skip the if (isp_ver == ...) thing.
> 
> Good question. Paul, what do you think ? If it doesn't get moved to the
> structure, I think I'd condition it by the RKISP1_FEATURE_RSZ_CROP
> feature bit instead of a version check, as it seems closely related. I'm
> actually leaning towards the latter.
> 
> > >  /* RSZ_CROP_[XY]_DIR */
> > >  #define RKISP1_CIF_RSZ_CROP_XY_DIR(start, end)		((end) << 16 | (start) << 0)
> > > 
> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > > b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c index
> > > 08bf3aa8088f..29a31b18a082 100644
> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > > @@ -209,9 +209,15 @@ static void rkisp1_rsz_update_shadow(struct
> > > rkisp1_resizer *rsz, u32 ctrl_cfg = rkisp1_rsz_read(rsz,
> > > RKISP1_CIF_RSZ_CTRL);
> > > 
> > >  	if (when == RKISP1_SHADOW_REGS_ASYNC)
> > > -		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
> > > +		if (rsz->rkisp1->info->isp_ver == IMX8MP_V10)
> > > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO_IMX;
> > > +		else
> > > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
> > >  	else
> > > -		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
> > > +		if (rsz->rkisp1->info->isp_ver == IMX8MP_V10)
> > > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_IMX;
> > > +		else
> > > +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
> > > 
> > >  	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, ctrl_cfg);
> > >  }

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
