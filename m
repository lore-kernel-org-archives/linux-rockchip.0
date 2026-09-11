Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECD4EC88E50
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 14:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihwOHE8nQAE7QO0NTld0nKA2XJpej5DpbMsP/EGPxXM=; b=NehgszdNfnLYIk
	AldGpBUiPcwQSr0Zy3zhLPgKu7/iP3ppSMjia52Xi3J0BohOki9b/AIVS0OJQBXkn+IF/eogOaNhh
	j9LvaNxCL95HsbM41uh820UlK44DJ81OlXsaQh1v2cCtZ9MkALrZehSXB2qlnb64nbrRzrhZfVzFk
	TKQuc6GtRDZa2aN4m7hEY3tn9fc8ARngkRibeBd5lzFQg6qaWrK/8cZkL783eitACjzM/Ek0Byayi
	z6auyRZGMsUQHgSQzDU+y/USi7/MZNh0kMctmLrxVIaZiW5yYMlWeAs0ZRZryEnPWZimUWmg1PMlk
	yZ6lKIwXxjzV1Em9X6tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x52Tb-0000000GwhI-3RIv;
	Fri, 11 Sep 2026 14:43:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x52TZ-0000000GwgV-0Zr8;
	Fri, 11 Sep 2026 14:43:38 +0000
Received: from ideasonboard.com (93-46-82-201.ip106.fastwebnet.it [93.46.82.201])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6B18763C;
	Fri, 11 Sep 2026 16:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1789137717;
	bh=9CQ6VJZqavjdvMlAthdEhiGX60f8zC8Yt55rgCYfAzc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UHyzVD6/whSa/kEcgnQ6WOv07UlykE+BvSeQ0k1LOf6I5oJoGKzavTR26T716GIPC
	 oRyZK8jke9UJi3MB45d9uSyDjGL2OTy0mSm0gT/KwCIpKdnlLFr0hR57UroAuXPDi7
	 nv9iFLkepbTFtrry4AJWZXpubMVlrOEmbClJgegg=
Date: Fri, 11 Sep 2026 16:43:32 +0200
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Paul Elder <paul.elder@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] media: rkisp1: Fix Bayer demosaicing bypass
Message-ID: <aqQTTtJf9qcdSz2z@zed>
References: <20260911-imx8mp-demosaicing-bypass-v1-1-5568a7a560a6@ideasonboard.com>
 <178913687012.1723501.3167773155478207003@ping.linuxembedded.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <178913687012.1723501.3167773155478207003@ping.linuxembedded.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_074337_356547_0F878D0E 
X-CRM114-Status: GOOD (  25.65  )
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

Hi Kieran

On Fri, Sep 11, 2026 at 03:27:50PM +0100, Kieran Bingham wrote:
> Quoting Jacopo Mondi (2026-09-11 14:56:19)
> > The RKISP1_CIF_ISP_DEMOSAIC_BYPASS bit, when set, bypasses the
> > demosaicing block on the RkISP1 ISP.
> >
> > The current implementation however clears the bit when demosaicing
> > have to be bypassed and sets it when demosaicing has to be enabled,
> > effectively inverting the bypass bit handling logic.
>
> Ouch.
>
> > Fix this by setting the bypass bit when disabling the demosaicing block,
> > and by clearing it instead when demosaicing has to be performed.
> >
> > The issue never manifested itself as libcamera hasn't an algorithm
> > to control Bayer demosaicing bypass yet.
> >
> > Fixes: 6c53a7b68c5d ("media: rkisp1: Implement extensible params support")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > ---
> > media: rkisp1: Fix demosaicing bypass
> > ---
> >  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > index 042b759eba62..496381962f1b 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > @@ -1854,8 +1854,8 @@ rkisp1_ext_params_bdm(struct rkisp1_params *params,
> >         const struct rkisp1_ext_params_bdm_config *bdm = &block->bdm;
> >
> >         if (bdm->header.flags & RKISP1_EXT_PARAMS_FL_BLOCK_DISABLE) {
> > -               rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_DEMOSAIC,
> > -                                       RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
> > +               rkisp1_param_set_bits(params, RKISP1_CIF_ISP_DEMOSAIC,
> > +                                     RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
> >                 return;
> >         }
> >
> > @@ -1863,8 +1863,8 @@ rkisp1_ext_params_bdm(struct rkisp1_params *params,
> >
> >         if ((bdm->header.flags & RKISP1_EXT_PARAMS_FL_BLOCK_ENABLE) &&
> >             !(params->enabled_blocks & BIT(bdm->header.type)))
> > -               rkisp1_param_set_bits(params, RKISP1_CIF_ISP_DEMOSAIC,
> > -                                     RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
> > +               rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_DEMOSAIC,
> > +                                       RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
>
>
> I think this also opens us up to add mono formats as explicitly
> supported by the ISP and potentially set the demosaic defaulting to off
> in that instance?

mmm, I think userspace is in a better position to decide when to
bypass debayer instead of relying on auto-configuration of the ISP ?

I guess we'll discuss this when support for luma-only formats will be
added to the driver

>
> Anyway, Looks sane to me in this order.
>
> Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

thanks

>
> >  }
> >
> >  static void
> >
> > ---
> > base-commit: 27953c044974baf7e24dee3e9342fe0103dea80c
> > change-id: 20260911-imx8mp-demosaicing-bypass-bb284d9cca60
> >
> > Best regards,
> > --
> > Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
