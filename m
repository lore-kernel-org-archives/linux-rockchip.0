Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E69C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 14:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELwviLSZK+Xd6HD2ohs7hmUSOJVb7GZbF+nPG52q2oM=; b=duOLJ+qaNzu+Z2
	7HKju9onB2CAsigLTWC8DW8W4JIE5rOrEoJW3PhqclJ9VSrglpitQWWpiQkwMF46IKStSy+H4yPaY
	PhpXYwl+uESuFmcfFIIStP2Lf9awlCjZoer/X83UCtTcGzv0BLmNseAGX8OTFVj0uZna39ud7pjRp
	Mvnz8VIzytIhcCvn18gmoXNZciUrQV1GU5dau5BvPMW/AcUS3JB7DSiLq+RxWWC6Svv43bKOqqNuy
	jbuzmwgDNO7bYTOCnP/MzF/LAJsChU9oPvOdl7n2q1v27aXAhMc8miKs53LIwz3o1u1Drj++non/9
	pNkJKtW5mftzMYg7iZMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9StK-00Gdgy-Da; Thu, 07 Jul 2022 14:54:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9StH-00GdeM-Gq
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 14:54:05 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4E6C0326;
	Thu,  7 Jul 2022 16:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657205641;
	bh=CUj9JPKxaxbqWdrgk5KEOY5sf9eRhV+a0G9FTCkz6Xo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oV5Yc/TFy860YP94IhvCN45DDTlHRUlkfaKsN5UgAzQ0jojAc4AbQ/f9c8W9fW/Xy
	 mJlqlZIPWJujirx7kvhL2qph+WAGVXNWXT4N+ve4qguHXyU2K25O9b2IaMokTP+bm/
	 1uDv9alo3d2Qjt4WjnX38URlRqbw1n6Y0pqGAYUc=
Date: Thu, 7 Jul 2022 23:53:53 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 33/55] media: rkisp1: isp: Merge ISP_ACQ_PROP
 configuration in single variable
Message-ID: <20220707145353.GQ3886060@pyrite.rasen.tech>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-34-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-34-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_075403_741646_E6BE40C8 
X-CRM114-Status: GOOD (  15.83  )
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

On Fri, Jul 01, 2022 at 02:06:51AM +0300, Laurent Pinchart wrote:
> The rkisp1_config_isp() function stores the value of the input selection
> and polarity configuration in two different local variables, OR'ed
> together when writing the register. Merge them into a single acq_prop
> variable.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-isp.c  | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 85c1995bb5c2..938541ce52ce 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -141,7 +141,7 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
>  			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
>  {
>  	struct rkisp1_device *rkisp1 = isp->rkisp1;
> -	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, signal = 0, input_sel = 0;
> +	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, acq_prop = 0;
>  	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
>  	struct v4l2_mbus_framefmt *sink_frm;
>  	struct v4l2_rect *sink_crop;
> @@ -188,17 +188,17 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
>  	/* Set up input acquisition properties */
>  	if (mbus_type == V4L2_MBUS_BT656 || mbus_type == V4L2_MBUS_PARALLEL) {
>  		if (mbus_flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
> -			signal = RKISP1_CIF_ISP_ACQ_PROP_POS_EDGE;
> +			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_POS_EDGE;
>  
>  		switch (sink_fmt->bus_width) {
>  		case 8:
> -			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_8B_ZERO;
> +			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_8B_ZERO;
>  			break;
>  		case 10:
> -			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_10B_ZERO;
> +			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_10B_ZERO;
>  			break;
>  		case 12:
> -			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_12B;
> +			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_12B;
>  			break;
>  		default:
>  			dev_err(rkisp1->dev, "Invalid bus width %u\n",
> @@ -209,15 +209,15 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
>  
>  	if (mbus_type == V4L2_MBUS_PARALLEL) {
>  		if (mbus_flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
> -			signal |= RKISP1_CIF_ISP_ACQ_PROP_VSYNC_LOW;
> +			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_VSYNC_LOW;
>  
>  		if (mbus_flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
> -			signal |= RKISP1_CIF_ISP_ACQ_PROP_HSYNC_LOW;
> +			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_HSYNC_LOW;
>  	}
>  
>  	rkisp1_write(rkisp1, RKISP1_CIF_ISP_CTRL, isp_ctrl);
>  	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_PROP,
> -		     signal | sink_fmt->yuv_seq | input_sel |
> +		     acq_prop | sink_fmt->yuv_seq |
>  		     RKISP1_CIF_ISP_ACQ_PROP_BAYER_PAT(sink_fmt->bayer_pat) |
>  		     RKISP1_CIF_ISP_ACQ_PROP_FIELD_SEL_ALL);
>  	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_NR_FRAMES, 0);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
