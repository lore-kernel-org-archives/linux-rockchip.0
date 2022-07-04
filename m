Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9A96C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Jul 2022 11:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUEQzD5X7YThClOVWX3YlU1lGD6oXd6pITee6GphBaA=; b=Y2Yzc5B/7wFk83
	hFMFAXKn9ou2QbOMzGsuj5prt6+ueD/7deoeSEXA2GNUmcJq8maEMKghC7owySl58pcMz6cxLSl8j
	fgyLnEUt10nl+9RjOErzV9l5fh/eVXL2/c61gk7rbj4wNM18XWTbbLX9S0P1grPrJCUKUDssU4AfU
	tIdx+8/CoMMEH44UO1yXj/kGP5w716wJYJ9w1ZiIY7ZSiUGaC6SFbSicczsqqV9mceML1yw5yGSxG
	7J/nPSjeNBv0Dtf1HxsrOnRbo766CpBweD9jDxX4Myt1W67Jkrdza1grcTzYU9Co4Lh3jYMW9AuGT
	vJIWHnT5O/dG5332YQpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8JzQ-007WJu-Ib; Mon, 04 Jul 2022 11:11:40 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8JSR-0075Ox-Gp
	for linux-rockchip@lists.infradead.org; Mon, 04 Jul 2022 10:37:38 +0000
Received: from pyrite.rasen.tech (softbank036240127029.bbtec.net [36.240.127.29])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 51E5F735;
	Mon,  4 Jul 2022 12:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656931053;
	bh=+AkxnrXoEk+1/h/5edijx5xZQVrBcbd4OMCVCXatUGo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qFsM4zsW3gBOuD3Oi8Fg2rNZkUcs41TKEr9XdzVB+HwVYmlLFgnwHdq8PBYgXDNxz
	 5IRKoO+cCz9CiGaeR3KYWOVReaesDLWb3b/xSuVk4BI1WiL8bvwfntbunuRnZY4htb
	 xWmEG3EtCNXvckHYh4KrCtu9CSJnUgGoFPfSAZ2M=
Date: Mon, 4 Jul 2022 19:37:24 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 50/55] media: rkisp1: Add and set registers for crop for
 i.MX8MP
Message-ID: <20220704103724.GE3886060@pyrite.rasen.tech>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-51-paul.elder@ideasonboard.com>
 <YrhKBN8lrI+beC26@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YrhKBN8lrI+beC26@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_033735_791674_815C90F6 
X-CRM114-Status: GOOD (  28.61  )
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

Hi Laurent,

On Sun, Jun 26, 2022 at 02:59:00PM +0300, Laurent Pinchart wrote:
> Hi Paul,
> 
> Thank you for the patch.
> 
> On Wed, Jun 15, 2022 at 04:11:22AM +0900, Paul Elder wrote:
> > The ISP version in the i.MX8MP has a separate set of registers for crop
> > that is currently not handled. Add a feature flag to determine which
> > type of crop the ISP supports and set the crop registers based on that.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 ++
> >  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 14 +++++++++++++-
> >  .../platform/rockchip/rkisp1/rkisp1-dev.c     |  7 +++++--
> >  .../platform/rockchip/rkisp1/rkisp1-regs.h    |  9 +++++++++
> >  .../platform/rockchip/rkisp1/rkisp1-resizer.c | 19 +++++++++++++++++--
> >  5 files changed, 46 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > index 667fca0fef95..e4f422bed09a 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > @@ -110,6 +110,8 @@ enum rkisp1_isp_pad {
> >   */
> >  enum rkisp1_feature {
> >  	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
> > +	RKISP1_FEATURE_DUAL_CROP = BIT(1),
> > +	RKISP1_FEATURE_RSZ_CROP = BIT(2),
> >  };
> >  
> >  /*
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > index 02854e8ea1a4..753abd024ce7 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > @@ -115,9 +115,21 @@ static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
> >  		RKISP1_DEBUG_SHD_REG(RSZ_PHASE_VC),
> >  		{ /* Sentinel */ },
> >  	};
> > +	static const struct rkisp1_debug_register crop_registers[] = {
> > +		RKISP1_DEBUG_SHD_REG(RSZ_CROP_X_DIR),
> > +		RKISP1_DEBUG_SHD_REG(RSZ_CROP_Y_DIR),
> > +		RKISP1_DEBUG_REG(RSZ_FRAME_RATE),
> > +		RKISP1_DEBUG_REG(RSZ_FORMAT_CONV_CTRL),
> > +		{ /* Sentinel */ },
> > +	};
> >  	struct rkisp1_resizer *rsz = m->private;
> >  
> > -	return rkisp1_debug_dump_regs(rsz->rkisp1, m, rsz->regs_base, registers);
> > +	rkisp1_debug_dump_regs(rsz->rkisp1, m, rsz->regs_base, registers);
> > +	if (rsz->rkisp1->info->features & RKISP1_FEATURE_RSZ_CROP)
> > +		rkisp1_debug_dump_regs(rsz->rkisp1, m, rsz->regs_base,
> > +				       crop_registers);
> > +
> > +	return 0;
> >  }
> >  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
> >  
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > index a4496ee2e9b4..5abe33f5fed4 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > @@ -465,7 +465,8 @@ static const struct rkisp1_info px30_isp_info = {
> >  	.isrs = px30_isp_isrs,
> >  	.isr_size = ARRAY_SIZE(px30_isp_isrs),
> >  	.isp_ver = RKISP1_V12,
> > -	.features = RKISP1_FEATURE_MIPI_CSI2,
> > +	.features = RKISP1_FEATURE_MIPI_CSI2
> > +		  | RKISP1_FEATURE_DUAL_CROP,
> >  };
> >  
> >  static const char * const rk3399_isp_clks[] = {
> > @@ -484,7 +485,8 @@ static const struct rkisp1_info rk3399_isp_info = {
> >  	.isrs = rk3399_isp_isrs,
> >  	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
> >  	.isp_ver = RKISP1_V10,
> > -	.features = RKISP1_FEATURE_MIPI_CSI2,
> > +	.features = RKISP1_FEATURE_MIPI_CSI2
> > +		  | RKISP1_FEATURE_DUAL_CROP,
> >  };
> >  
> >  static const char * const imx8mp_isp_clks[] = {
> > @@ -503,6 +505,7 @@ static const struct rkisp1_info imx8mp_isp_info = {
> >  	.isrs = imx8mp_isp_isrs,
> >  	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
> >  	.isp_ver = IMX8MP_V10,
> > +	.features = RKISP1_FEATURE_RSZ_CROP,
> >  };
> >  
> >  static const struct of_device_id rkisp1_of_match[] = {
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > index dd3e6c38be67..1fc54ab22b6d 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > @@ -168,6 +168,9 @@
> >  #define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO		BIT(9)
> >  #define RKISP1_CIF_RSZ_SCALER_FACTOR			BIT(16)
> >  
> > +/* RSZ_CROP_[XY]_DIR */
> > +#define RKISP1_CIF_RSZ_CROP_XY_DIR(start, end)		((end) << 16 | (start) << 0)
> > +
> >  /* MI_IMSC - MI_MIS - MI_RIS - MI_ICR - MI_ISR */
> >  #define RKISP1_CIF_MI_FRAME(stream)			BIT((stream)->id)
> >  #define RKISP1_CIF_MI_MBLK_LINE				BIT(2)
> > @@ -926,6 +929,12 @@
> >  #define RKISP1_CIF_RSZ_PHASE_HC_SHD		0x004C
> >  #define RKISP1_CIF_RSZ_PHASE_VY_SHD		0x0050
> >  #define RKISP1_CIF_RSZ_PHASE_VC_SHD		0x0054
> > +#define RKISP1_CIF_RSZ_CROP_X_DIR		0x0058
> > +#define RKISP1_CIF_RSZ_CROP_Y_DIR		0x005C
> > +#define RKISP1_CIF_RSZ_CROP_X_DIR_SHD		0x0060
> > +#define RKISP1_CIF_RSZ_CROP_Y_DIR_SHD		0x0064
> > +#define RKISP1_CIF_RSZ_FRAME_RATE		0x0068
> > +#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL		0x006C
> >  
> >  #define RKISP1_CIF_MI_BASE			0x00001400
> >  #define RKISP1_CIF_MI_CTRL			(RKISP1_CIF_MI_BASE + 0x00000000)
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > index f4caa8f684aa..08bf3aa8088f 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > @@ -244,6 +244,7 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
> >  {
> >  	u32 ratio, rsz_ctrl = 0;
> >  	unsigned int i;
> > +	u32 val;
> >  
> >  	/* No phase offset */
> >  	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_PHASE_HY, 0);
> > @@ -292,6 +293,18 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
> >  
> >  	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, rsz_ctrl);
> >  
> > +	if (rsz->rkisp1->info->features & RKISP1_FEATURE_RSZ_CROP) {
> > +		val = RKISP1_CIF_RSZ_CROP_XY_DIR(src_y->left, src_y->left + src_y->width - 1);
> > +		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CROP_X_DIR, val);
> > +		val = RKISP1_CIF_RSZ_CROP_XY_DIR(src_y->top, src_y->top + src_y->height - 1);
> > +		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CROP_Y_DIR, val);
> > +
> > +		val = RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_INPUT_FORMAT_YCBCR_422
> > +		    | RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_OUTPUT_FORMAT_YCBCR_420
> > +		    | RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_PACK_FORMAT_SEMI_PLANAR;
> 
> Shouldn't this depend on the input and output formats of the resizer ?

Oops, yeah it should.


Paul

> 
> > +		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_FORMAT_CONV_CTRL, val);
> > +	}
> > +
> >  	rkisp1_rsz_update_shadow(rsz, when);
> >  }
> >  
> > @@ -656,7 +669,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
> >  	enum rkisp1_shadow_regs_when when = RKISP1_SHADOW_REGS_SYNC;
> >  
> >  	if (!enable) {
> > -		rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
> > +		if (rkisp1->info->features & RKISP1_FEATURE_DUAL_CROP)
> > +			rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
> >  		rkisp1_rsz_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
> >  		return 0;
> >  	}
> > @@ -666,7 +680,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
> >  
> >  	mutex_lock(&rsz->ops_lock);
> >  	rkisp1_rsz_config(rsz, when);
> > -	rkisp1_dcrop_config(rsz);
> > +	if (rkisp1->info->features & RKISP1_FEATURE_DUAL_CROP)
> > +		rkisp1_dcrop_config(rsz);
> >  
> >  	mutex_unlock(&rsz->ops_lock);
> >  	return 0;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
