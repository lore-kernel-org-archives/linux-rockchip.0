Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1A85C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jul 2022 11:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7p5+zQTJhf4Z3vakCAGaL8WEWmM+zghXXcUaqVnXxQ=; b=pqgYpcbkYrf22b
	572KK4JutQkEaAIvWtpwVCUN/xGX3rS19iv+UIIQQr2HADNGIxIFDesbBZaaG4hCnWmN9VhMYccWd
	5GED3oLojRqqXkH6S+6uhMi0ufjNHAPxKV1jET+SS1DZ1TA+/VN3rHrAj6un47OtzHPePyjdjbumH
	Lp3YbAnPJf7NQVViMkMxiqJa0fBNMgc1vt6ExUXFO1LorRtTNKuOeNtAC70YoB2z+vpZc/E4i+1d7
	xBjVjFTgCj/zio3YPAer7X7xyiYoOm0vqt7teugPMRzB/WjLsrt1EWW+vnBKW11lvgOFRDSRSQGJj
	gi0Nzo3qdSLqhM5G/tQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCgHZ-00Fpcl-6V; Sat, 16 Jul 2022 11:48:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCgHW-00FpaJ-NP
	for linux-rockchip@lists.infradead.org; Sat, 16 Jul 2022 11:48:24 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 876106E0;
	Sat, 16 Jul 2022 13:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657972097;
	bh=mZ5rcksLVqIrAYnKdzzfgI+bFe9rNt9SPFqUM6Q2ypo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K0/cSjBWMGWOaDlkzDO6m0+Sn8BgJo/ws+AiSwZfLtsrGvwPU3O4BuCFtv7G3fPLx
	 +IxIbt9aQR9xZ9s8plvB5xEvN/VQ1lu2+dOu50E38xCqVaw4OLwHgIkzDGc6stk4AF
	 rBEXyhos69BgYa0RinBHqlz+mgES1dQUs9AMU9ZQ=
Date: Sat, 16 Jul 2022 14:47:45 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 2/3] media: rockchip: rkisp1: Mask invalid bits in DPCC
 parameters
Message-ID: <YtKlYSxp5JP/nI6k@pendragon.ideasonboard.com>
References: <20220616160456.21549-1-laurent.pinchart@ideasonboard.com>
 <20220616160456.21549-3-laurent.pinchart@ideasonboard.com>
 <20220716055648.unpih6bsy6cpj5ld@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220716055648.unpih6bsy6cpj5ld@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220716_044822_949158_D9219C76 
X-CRM114-Status: GOOD (  22.11  )
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

Hi Dafna,

On Sat, Jul 16, 2022 at 08:56:48AM +0300, Dafna Hirschfeld wrote:
> On 16.06.2022 19:04, Laurent Pinchart wrote:
> > Restrict the DPCC configuration that can be set by userspace to valid
> > register bits. To do so, reorganize the related register macros to
> > define valid bitmasks, as well as bits of the DPCC mode register.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-params.c  | 44 ++++++++++++-------
> >  .../platform/rockchip/rkisp1/rkisp1-regs.h    | 26 +++++------
> >  2 files changed, 41 insertions(+), 29 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > index 140012fa18f0..94e834cd2a21 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > @@ -58,35 +58,47 @@ static void rkisp1_dpcc_config(struct rkisp1_params *params,
> >  	unsigned int i;
> >  	u32 mode;
> > 
> > -	/* avoid to override the old enable value */
> > +	/*
> > +	 * The enable bit is controlled in rkisp1_isp_isr_other_config() and
> > +	 * must be preserved. The grayscale mode should be configured
> > +	 * automatically based on the media bus code on the ISP sink pad, so
> > +	 * only the STAGE1_ENABLE bit can be set by userspace.
> > +	 */
> >  	mode = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_DPCC_MODE);
> > -	mode &= RKISP1_CIF_ISP_DPCC_ENA;
> > -	mode |= arg->mode & ~RKISP1_CIF_ISP_DPCC_ENA;
> > +	mode &= RKISP1_CIF_ISP_DPCC_MODE_DPCC_ENABLE;
> > +	mode |= arg->mode & RKISP1_CIF_ISP_DPCC_MODE_STAGE1_ENABLE;
> >  	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_MODE, mode);
> > +
> >  	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_OUTPUT_MODE,
> > -		     arg->output_mode);
> > +		     arg->output_mode & RKISP1_CIF_ISP_DPCC_OUTPUT_MODE_MASK);
> >  	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_SET_USE,
> > -		     arg->set_use);
> > +		     arg->set_use & RKISP1_CIF_ISP_DPCC_SET_USE_MASK);
> > 
> >  	for (i = 0; i < RKISP1_CIF_ISP_DPCC_METHODS_MAX; i++) {
> >  		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_METHODS_SET(i),
> > -			     arg->methods[i].method);
> > +			     arg->methods[i].method &
> > +			     RKISP1_CIF_ISP_DPCC_METHODS_SET_MASK);
> >  		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_LINE_THRESH(i),
> > -			     arg->methods[i].line_thresh);
> > +			     arg->methods[i].line_thresh &
> > +			     RKISP1_CIF_ISP_DPCC_LINE_THRESH_MASK);
> >  		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_LINE_MAD_FAC(i),
> > -			     arg->methods[i].line_mad_fac);
> > +			     arg->methods[i].line_mad_fac &
> > +			     RKISP1_CIF_ISP_DPCC_LINE_MAD_FAC_MASK);
> >  		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_PG_FAC(i),
> > -			     arg->methods[i].pg_fac);
> > +			     arg->methods[i].pg_fac &
> > +			     RKISP1_CIF_ISP_DPCC_PG_FAC_MASK);
> >  		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_RND_THRESH(i),
> > -			     arg->methods[i].rnd_thresh);
> > +			     arg->methods[i].rnd_thresh &
> > +			     RKISP1_CIF_ISP_DPCC_RND_THRESH_MASK);
> >  		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_RG_FAC(i),
> > -			     arg->methods[i].rg_fac);
> > +			     arg->methods[i].rg_fac &
> > +			     RKISP1_CIF_ISP_DPCC_RG_FAC_MASK);
> >  	}
> > 
> >  	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_RND_OFFS,
> > -		     arg->rnd_offs);
> > +		     arg->rnd_offs & RKISP1_CIF_ISP_DPCC_RND_OFFS_MASK);
> >  	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_RO_LIMITS,
> > -		     arg->ro_limits);
> > +		     arg->ro_limits & RKISP1_CIF_ISP_DPCC_RO_LIMIT_MASK);
> >  }
> > 
> >  /* ISP black level subtraction interface function */
> > @@ -1214,11 +1226,11 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
> >  		if (module_ens & RKISP1_CIF_ISP_MODULE_DPCC)
> >  			rkisp1_param_set_bits(params,
> >  					      RKISP1_CIF_ISP_DPCC_MODE,
> > -					      RKISP1_CIF_ISP_DPCC_ENA);
> > +					      RKISP1_CIF_ISP_DPCC_MODE_DPCC_ENABLE);
> >  		else
> >  			rkisp1_param_clear_bits(params,
> >  						RKISP1_CIF_ISP_DPCC_MODE,
> > -						RKISP1_CIF_ISP_DPCC_ENA);
> > +						RKISP1_CIF_ISP_DPCC_MODE_DPCC_ENABLE);
> >  	}
> > 
> >  	/* update bls config */
> > @@ -1580,7 +1592,7 @@ void rkisp1_params_configure(struct rkisp1_params *params,
> >  void rkisp1_params_disable(struct rkisp1_params *params)
> >  {
> >  	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_DPCC_MODE,
> > -				RKISP1_CIF_ISP_DPCC_ENA);
> > +				RKISP1_CIF_ISP_DPCC_MODE_DPCC_ENABLE);
> >  	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_LSC_CTRL,
> >  				RKISP1_CIF_ISP_LSC_CTRL_ENA);
> >  	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_BLS_CTRL,
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > index dd3e6c38be67..dc01f968c19d 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> > @@ -618,19 +618,19 @@
> >  #define RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA_READ(x)	(((x) >> 11) & 1)
> > 
> >  /* DPCC */
> > -/* ISP_DPCC_MODE */
> > -#define RKISP1_CIF_ISP_DPCC_ENA				BIT(0)
> > -#define RKISP1_CIF_ISP_DPCC_MODE_MAX			0x07
> > -#define RKISP1_CIF_ISP_DPCC_OUTPUTMODE_MAX		0x0F
> > -#define RKISP1_CIF_ISP_DPCC_SETUSE_MAX			0x0F
> > -#define RKISP1_CIF_ISP_DPCC_METHODS_SET_RESERVED	0xFFFFE000
> > -#define RKISP1_CIF_ISP_DPCC_LINE_THRESH_RESERVED	0xFFFF0000
> > -#define RKISP1_CIF_ISP_DPCC_LINE_MAD_FAC_RESERVED	0xFFFFC0C0
> > -#define RKISP1_CIF_ISP_DPCC_PG_FAC_RESERVED		0xFFFFC0C0
> > -#define RKISP1_CIF_ISP_DPCC_RND_THRESH_RESERVED		0xFFFF0000
> > -#define RKISP1_CIF_ISP_DPCC_RG_FAC_RESERVED		0xFFFFC0C0
> > -#define RKISP1_CIF_ISP_DPCC_RO_LIMIT_RESERVED		0xFFFFF000
> > -#define RKISP1_CIF_ISP_DPCC_RND_OFFS_RESERVED		0xFFFFF000
> > +#define RKISP1_CIF_ISP_DPCC_MODE_DPCC_ENABLE		BIT(0)
> > +#define RKISP1_CIF_ISP_DPCC_MODE_GRAYSCALE_MODE		BIT(1)
> > +#define RKISP1_CIF_ISP_DPCC_MODE_STAGE1_ENABLE		BIT(2)
> > +#define RKISP1_CIF_ISP_DPCC_OUTPUT_MODE_MASK		GENMASK(3, 0)
> > +#define RKISP1_CIF_ISP_DPCC_SET_USE_MASK		GENMASK(3, 0)
> 
> Why are these two masks use GENMASK and other don't?

Good question. Probably because the above two are new and I didn't think
about changing the other ones.

For RKISP1_CIF_ISP_DPCC_METHODS_SET_MASK, would you rather keep

#define RKISP1_CIF_ISP_DPCC_METHODS_SET_MASK		0x00001f1f

or have

#define RKISP1_CIF_ISP_DPCC_METHODS_SET_MASK		(GENMASK(12 ,8) | GENMASK(4, 0))

? I think the former is easier to read and match against datasheets, but
I don't mind much either way.

> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
> 
> > +#define RKISP1_CIF_ISP_DPCC_METHODS_SET_MASK		0x00001f1f
> > +#define RKISP1_CIF_ISP_DPCC_LINE_THRESH_MASK		0x0000ffff
> > +#define RKISP1_CIF_ISP_DPCC_LINE_MAD_FAC_MASK		0x00003f3f
> > +#define RKISP1_CIF_ISP_DPCC_PG_FAC_MASK			0x00003f3f
> > +#define RKISP1_CIF_ISP_DPCC_RND_THRESH_MASK		0x0000ffff
> > +#define RKISP1_CIF_ISP_DPCC_RG_FAC_MASK			0x00003f3f
> > +#define RKISP1_CIF_ISP_DPCC_RO_LIMIT_MASK		0x00000fff
> > +#define RKISP1_CIF_ISP_DPCC_RND_OFFS_MASK		0x00000fff
> > 
> >  /* BLS */
> >  /* ISP_BLS_CTRL */

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
