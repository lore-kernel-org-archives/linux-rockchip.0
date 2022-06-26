Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F02DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jun 2022 11:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zG4wBFC60I45HJv4m/nBEc/Ksls3AGO4iIkiidvN5A=; b=eBu+Q5zb6Yt1pX
	TvpXsqzbAZcxEfijxKRhuIiQI1WCAZvXIoMHL2sEP00fwq4Y2VXNbFc9BJ5hrPpzhIvnWl96PRWmp
	xuRCe697tiQYuBlsOxFO6sJGvTDKTdbMvlgkjaFcbE9tJtz0xkQan3ZTxePVWAqXCjy9IA2he3NzY
	asUolOwx9EJSYTTQJ2QoauC9QscFlIZqDqDFv041hNGTInfsaJAoetMMw/mQCZoNl7bz3x7Sdbpo9
	L2jFQO0lusAj0RORQHBk2FLsrPDowragOsLjDUfEhVqKm7/nQiI4XiGza5sQJLkkDCHcXflETuYqr
	xTRquwqY3+Mjb2o/A8/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5Qay-00BTto-Bw; Sun, 26 Jun 2022 11:38:28 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5Qav-00BTt1-VV
	for linux-rockchip@lists.infradead.org; Sun, 26 Jun 2022 11:38:27 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8BAD747C;
	Sun, 26 Jun 2022 13:38:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656243503;
	bh=+X7KAMy4Z/g/StPD+Ch2XigJtXqOKGwbT/vawrogbHU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p6tVhoj2BPXP3AxmCD1rhf2e3ifFaP0ndJuPNMmrcRO7vNMGtcZBaVdzXSDbL5hSf
	 35TWbWvI3TClqhUbikHHEczuK4gsIDkWWxANivKrc9NEP2bEXNbT/oBYAk8hdscJcM
	 cBOUE1np0adTEQsyFc6ItHm1syQCeDonCLXN6vvA=
Date: Sun, 26 Jun 2022 14:38:06 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 53/55] media: rkisp1: Shift DMA buffer addresses on
 i.MX8MP
Message-ID: <YrhFHt+PsaWXsTUD@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-54-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-54-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_043826_212093_43239A5F 
X-CRM114-Status: GOOD (  20.94  )
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

Thank you for the patch.

On Wed, Jun 15, 2022 at 04:11:25AM +0900, Paul Elder wrote:
> On the ISP that is integrated in the i.MX8MP, the DMA base addresses are
> encoded in 34-bit. Shift them to the left by 2 bits so that they can be

I think you meant right, not left.

> contained in 32 bits.

The important part here is that this is how the address is encoded in
the hardware. I suppose it's obvious, otherwise it woudln't work at all,
but maybe it could be explained more explicitly ?

On the ISP that is integrated in the i.MX8MP, DMA addresses have been
extended to 34 bits, with the 32 MSBs stored in the DMA address
registers and the 2 LSBs set to 0. Shift the buffer addresses right by 2
on that platform.

> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 19 +++++++++++--------
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  1 +
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     |  3 ++-
>  3 files changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 35cec263c563..234b1f8488cb 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -624,6 +624,9 @@ static void rkisp1_dummy_buf_destroy(struct rkisp1_capture *cap)
>  
>  static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
>  {
> +	u8 shift = cap->rkisp1->info->features & RKISP1_FEATURE_DMA_34BIT ?
> +		   2 : 0;
> +
>  	cap->buf.curr = cap->buf.next;
>  	cap->buf.next = NULL;
>  
> @@ -636,7 +639,7 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
>  		buff_addr = cap->buf.next->buff_addr;
>  
>  		rkisp1_write(cap->rkisp1, cap->config->mi.y_base_ad_init,
> -			     buff_addr[RKISP1_PLANE_Y]);
> +			     buff_addr[RKISP1_PLANE_Y] >> shift);
>  		/*
>  		 * In order to support grey format we capture
>  		 * YUV422 planar format from the camera and
> @@ -645,17 +648,17 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
>  		if (cap->pix.cfg->fourcc == V4L2_PIX_FMT_GREY) {
>  			rkisp1_write(cap->rkisp1,
>  				     cap->config->mi.cb_base_ad_init,
> -				     cap->buf.dummy.dma_addr);
> +				     cap->buf.dummy.dma_addr >> shift);
>  			rkisp1_write(cap->rkisp1,
>  				     cap->config->mi.cr_base_ad_init,
> -				     cap->buf.dummy.dma_addr);
> +				     cap->buf.dummy.dma_addr >> shift);
>  		} else {
>  			rkisp1_write(cap->rkisp1,
>  				     cap->config->mi.cb_base_ad_init,
> -				     buff_addr[RKISP1_PLANE_CB]);
> +				     buff_addr[RKISP1_PLANE_CB] >> shift);
>  			rkisp1_write(cap->rkisp1,
>  				     cap->config->mi.cr_base_ad_init,
> -				     buff_addr[RKISP1_PLANE_CR]);
> +				     buff_addr[RKISP1_PLANE_CR] >> shift);
>  		}
>  	} else {
>  		/*
> @@ -663,11 +666,11 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
>  		 * throw data if there is no available buffer.
>  		 */
>  		rkisp1_write(cap->rkisp1, cap->config->mi.y_base_ad_init,
> -			     cap->buf.dummy.dma_addr);
> +			     cap->buf.dummy.dma_addr >> shift);
>  		rkisp1_write(cap->rkisp1, cap->config->mi.cb_base_ad_init,
> -			     cap->buf.dummy.dma_addr);
> +			     cap->buf.dummy.dma_addr >> shift);
>  		rkisp1_write(cap->rkisp1, cap->config->mi.cr_base_ad_init,
> -			     cap->buf.dummy.dma_addr);
> +			     cap->buf.dummy.dma_addr >> shift);
>  	}
>  
>  	/* Set plane offsets */
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 96657e55a5b0..0b834579d08c 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -113,6 +113,7 @@ enum rkisp1_feature {
>  	RKISP1_FEATURE_DUAL_CROP = BIT(1),
>  	RKISP1_FEATURE_RSZ_CROP = BIT(2),
>  	RKISP1_FEATURE_MAIN_STRIDE = BIT(3),
> +	RKISP1_FEATURE_DMA_34BIT = BIT(4),
>  };
>  
>  /*
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index d68a805e8b6b..4c77aa2bc50a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -506,7 +506,8 @@ static const struct rkisp1_info imx8mp_isp_info = {
>  	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
>  	.isp_ver = IMX8MP_V10,
>  	.features = RKISP1_FEATURE_RSZ_CROP
> -		  | RKISP1_FEATURE_MAIN_STRIDE,
> +		  | RKISP1_FEATURE_MAIN_STRIDE
> +		  | RKISP1_FEATURE_DMA_34BIT,
>  };
>  
>  static const struct of_device_id rkisp1_of_match[] = {

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
