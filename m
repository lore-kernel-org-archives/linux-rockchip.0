Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD158CD0430
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 03:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waaEPNgpSe4nWdtkQoKbE0Y3izYyw8rTgARrejnTLgI=; b=DOp6IHKTXgkDiT
	lq2cEMeZuum5/oemzdkFvbzdUxyAEep9p3tO4d8XnIj8eWGX/F+tn23XujSsoUJ47230jxEckg0g3
	bWPBhO7qOoEGkB5Lsb10MulAEvdCpDM/7rqiXYbpq7Bal0X8DdU7UxNPXC81GITMjueMdZ9MRrET7
	ZEvDGWfnHjbn1nPIjuIhacBZCszrG0fMIEfKIfGTpDPis9oEtc3RvoGwPV/KO3//D7gpooqNkT2LZ
	WwSURO74rAPgxZ0jJaPnY2K5Hi/kSBago2YAbBiOQtbwosztyYkZHaY+i/h2S6xSIUklghKQjPYa+
	pHRl9+GIRXps+klygfvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcy2P-0000000CO2W-0Yh0;
	Tue, 06 Jan 2026 03:47:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcy2I-0000000CO1v-3K7J;
	Tue, 06 Jan 2026 03:47:14 +0000
Received: from pendragon.ideasonboard.com (81-175-209-152.bb.dnainternet.fi [81.175.209.152])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 4C14DC7A;
	Tue,  6 Jan 2026 04:46:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1767671207;
	bh=snbqLaFm8FhVXUw6zgrDeasE3x5iP27hlHA3uqy8cWM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EugbMClo1V+5CAMWBXh4JSExPI9ja7XmJZyLL6YlnoaNW3yDTXTa3wPZG2GRhImIw
	 i9SWEBDsK+XoX1f6g56qnPYN1DXLfsFxfDZYjEx5XbYP+L0lfP2fTLqlkwV/hKYq0L
	 b4fsQX3uhprm2LTTecm8FkHy+eDJSZFLpMi/OrWw=
Date: Tue, 6 Jan 2026 05:46:48 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rui Wang <rui.wang@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, mchehab@kernel.org,
	heiko@sntech.de, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	libcamera-devel@lists.libcamera.org
Subject: Re: [PATCH v4 1/1] media: rkisp1: Fix filter mode register
 configuration
Message-ID: <20260106034648.GP10026@pendragon.ideasonboard.com>
References: <20260105171142.147792-1-rui.wang@ideasonboard.com>
 <20260105171142.147792-2-rui.wang@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260105171142.147792-2-rui.wang@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_194713_089497_D33F807F 
X-CRM114-Status: GOOD (  18.30  )
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

Hi Rui,

Thank you for the patch.

On Mon, Jan 05, 2026 at 12:11:42PM -0500, Rui Wang wrote:
> The rkisp1_flt_config() function performs an initial direct write to
> RKISP1_CIF_ISP_FILT_MODE without including the RKISP1_CIF_ISP_FLT_ENA
> bit, which clears the filter enable bit in the hardware.
> 
> The subsequent read/modify/write sequence then reads back the register
> with the enable bit already cleared and cannot restore it, resulting in
> the filter being inadvertently disabled.
> 
> Remove the redundant direct write. The read/modify/write sequence alone
> correctly preserves the existing enable bit state while updating the
> DNR mode and filter configuration bits.
> 
> Signed-off-by: Rui Wang <rui.wang@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

and pushed to CI in
https://gitlab.freedesktop.org/linux-media/users/pinchartl/-/pipelines/1578184.
If the pipeline succeeds I'll queue the patch for v6.20. Otherwise I'll
report the failure here.

> ---
>  
> Changelog since v1:
>  1. Update version number from v1 to v4 to clarify the confusing
> 
> Reviewed-by Stefan Klug and Kieran Bingham
>  from v1 are carried over (no function code changes).
> 
>  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index c9f88635224c..6442436a5e42 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -411,12 +411,6 @@ static void rkisp1_flt_config(struct rkisp1_params *params,
>  	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_FILT_LUM_WEIGHT,
>  		     arg->lum_weight);
>  
> -	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_FILT_MODE,
> -		     (arg->mode ? RKISP1_CIF_ISP_FLT_MODE_DNR : 0) |
> -		     RKISP1_CIF_ISP_FLT_CHROMA_V_MODE(arg->chr_v_mode) |
> -		     RKISP1_CIF_ISP_FLT_CHROMA_H_MODE(arg->chr_h_mode) |
> -		     RKISP1_CIF_ISP_FLT_GREEN_STAGE1(arg->grn_stage1));
> -
>  	/* avoid to override the old enable value */
>  	filt_mode = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_FILT_MODE);
>  	filt_mode &= RKISP1_CIF_ISP_FLT_ENA;

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
