Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C61EECD9B5
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 00:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqaKDLY9rC3GVAxZCjUzQUUoYiaxSA7xBbItNPzHaJM=; b=LTi4jpOi/8KTUy
	RZuBinG/lQwy9Hx+nY4Litn/GkwRQ2IZuUWZDsYe/ciN0XG1VaXKBO78c8EnHQ3RpnjkvtFDtehtN
	0Sx3lZLg/HPvJRsUhYQ9qFeO46zDpHW2Xe45oyHfd2Gv/XVvD0MPBLHH9MDXtFA3gVQnvAMybrUw+
	5TDjszBEzfKyCgvgGndfWl6mRWXrPd7Pjc859t3J8YXNtHR74Ph37zWek7Q1NQ7Z/5IBB+GMOERju
	URCMR4KMzA38n+GxRCWODlWVTUf8Q/YsZzAZingiepFzzb7hABn4/7JXGQgCFDs/NITyBWfhVrhWD
	z6S9aQ/zykkp44w8PCOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo9XD-0000000AdFf-3YQw;
	Fri, 06 Feb 2026 00:17:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo9XA-0000000AdFB-099b;
	Fri, 06 Feb 2026 00:17:17 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 46BB22E0;
	Fri,  6 Feb 2026 01:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1770336987;
	bh=+zx3CcSOxbuZHtxc0X/7I7ZXqnSEJs5fHZ7SfchUkVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lDU34SVI83VfuujXi7Jgc/2zUau+FtyYoWl97hWYp0ZfASVbP6vI36yoQ6HfREtTG
	 JmsifRHAd6tdUoBasOdn+V5ScTmDke8CqmeD+9yAxLiGT0OHDZ3utHiG/5aVXSI5vj
	 Tclzixnxx05QksDcSk2lm5vOuzPhbQzpSdD0LRTM=
Date: Fri, 6 Feb 2026 02:17:08 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Isaac Scott <isaac.scott@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, mchehab@kernel.org,
	heiko@sntech.de, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] media: rkisp1-isp: Set correct data mode for YUV
 bypass
Message-ID: <20260206001708.GD1376807@killaraus.ideasonboard.com>
References: <20260205103207.4020959-1-isaac.scott@ideasonboard.com>
 <20260205103207.4020959-2-isaac.scott@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205103207.4020959-2-isaac.scott@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_161716_514055_E0C1640B 
X-CRM114-Status: GOOD (  21.37  )
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

Hi Isaac,

Thank you for the patch.

On Thu, Feb 05, 2026 at 10:32:06AM +0000, Isaac Scott wrote:
> The rkisp1 features a 'bypass' mode for RAW and YUV formats. This
> disables all ISP blocks, and makes the rkisp1 display input data from
> the MIPI CSI receiver at the output, unmodified.
> 
> To determine whether we can activate bypass, we can detect whether both
> the source and sink formats are YUV. If they are, we must configure the
> ISP to expect a YUV input, interpreting H/VSYNC signals as data
> enable / disable.
> 
> Signed-off-by: Isaac Scott <isaac.scott@ideasonboard.com>
> 
> ---
> 
> Changelog since v1:
> - Removed in_bypass flag
> - Renamed the patch to better represent the functionality of the patch
> 
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 2311672cedb1..21bfa0edbaf1 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -240,7 +240,9 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
>  		}
>  	} else if (sink_fmt->pixel_enc == V4L2_PIXEL_ENC_YUV) {
>  		acq_mult = 2;
> -		if (mbus_type == V4L2_MBUS_CSI2_DPHY) {
> +		if (src_fmt->pixel_enc == V4L2_PIXEL_ENC_YUV) {
> +			isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_DATA_MODE;
> +		} else if (mbus_type == V4L2_MBUS_CSI2_DPHY) {
>  			isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_ITU601;
>  		} else {
>  			if (mbus_type == V4L2_MBUS_BT656)

This doesn't seem right. If the sink format is YUV, then the source
format has to be YUV too (the ISP can't produce Bayer from YUV). The
source pixel encoding condition will always be true, the other branches
will never be taken, most likely breaking parallel inputs.

Also, the documentation states that in YCbCr bypass mode, ISP_MODE
should be set to 2 (ITU-R BT.601), not 4 (data mode).

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
