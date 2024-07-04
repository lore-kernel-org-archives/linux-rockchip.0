Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB19AC3065C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 07:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1LbpIKpVIa+0yMG7KXpYT+fqT44gZ3hiYBx+pxbYmw=; b=GxhFUJ7rc0GcLW
	FnpWLG7pt7GyOw9gqvhiID9CukEoDspIHZyAQNsfBpu2s3P9qxTNPoG45uqoTORNG5QubpWsn3tZ3
	kQwzi5XP7I//9TpkoM9WV/gLyDsp5tl8SrbYbTfuFwmSfVkSmYPBv/TufFDbprmk5vdmCNJieEUsZ
	TcEzhFl1zKukGUAC2G3nmNDnMKGxkXAVDPysdRv3f5ThakbONMkoctxeVR/Tu1WEq7X7HoHtCTeAY
	av8RMIrc4NwPGx0FBTYmtPeC/x4UJ4taZaspU7/VtOPtqPWCs42ViewnIRWDIxyXlN+tCDMVpByak
	OZCxEwlLZKxO5MNoKoyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPHHG-0000000CVGg-1bs5;
	Thu, 04 Jul 2024 07:53:14 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPHHD-0000000CVDm-10DR
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 07:53:12 +0000
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 74A3E3D6;
	Thu,  4 Jul 2024 09:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720079557;
	bh=Ps44IABWatl3Z9VzqvhSafQlE83IRzahL/FhxnH0NZ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h7W6RVIGXZzz8/Vj3ZKetaZVngkKdhbGjTb3mXfTfTOCfZid/d7drphMtAvfmUDFR
	 K7tD6jAvCII3Panf5O47IQd6scxhabNXMbtZEIenLWlp0UbKHmUV5VAXzD2ypfZqjF
	 NJfjBmGRqzOVKi0QDlJ0asZI3AfKYK2Nuff1Hl7E=
Date: Thu, 4 Jul 2024 09:53:02 +0200
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Paul Elder <paul.elder@ideasonboard.com>, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 1/5] media: rkisp1: Add helper function to swap colour
 channels
Message-ID: <fx77b55a5wuung5yjeduuzjofwaweovcglvujjlc3l5xbgewsk@bmd5wrkoxsbr>
References: <20240703222533.1662-1-laurent.pinchart@ideasonboard.com>
 <20240703222533.1662-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240703222533.1662-2-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_005311_446624_5750B655 
X-CRM114-Status: GOOD (  24.18  )
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

Hi Laurent

On Thu, Jul 04, 2024 at 01:25:29AM GMT, Laurent Pinchart wrote:
> The BLS parameters passed by userspace are specified for named colour
> channels (R, Gr, Gb and B), while the hardware registers reference
> positions in the 2x2 CFA pattern (A, B, C and D).
>
> The BLS values are swapped based on the CFA pattern when writing to or
> reading from registers, using hand-roled switch statements. The logic is
> duplicated already, and new code will require similar processing. Move
> the swap logic to a shared function, using static data to control the
> channels order.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-common.c  | 15 +++++
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  3 +
>  .../platform/rockchip/rkisp1/rkisp1-params.c  | 58 ++++---------------
>  .../platform/rockchip/rkisp1/rkisp1-stats.c   | 51 +++++-----------
>  4 files changed, 44 insertions(+), 83 deletions(-)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.c
> index f956b90a407a..90513d15e7a7 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.c
> @@ -178,3 +178,18 @@ void rkisp1_sd_adjust_crop(struct v4l2_rect *crop,
>
>  	rkisp1_sd_adjust_crop_rect(crop, &crop_bounds);
>  }
> +
> +void rkisp1_bls_swap_regs(enum rkisp1_fmt_raw_pat_type pattern,
> +			  const u32 input[4], u32 output[4])
> +{
> +	static const unsigned int swap[][4] = {

Should you declare this as a [4][4] array ?

> +		[RKISP1_RAW_RGGB] = { 0, 1, 2, 3 },
> +		[RKISP1_RAW_GRBG] = { 1, 0, 3, 2 },
> +		[RKISP1_RAW_GBRG] = { 2, 3, 0, 1 },
> +		[RKISP1_RAW_BGGR] = { 3, 2, 1, 0 },
> +	};
> +	unsigned int i;

'i' can be declared inside the for() statement

> +
> +	for (i = 0; i < 4; ++i)
> +		output[i] = input[swap[pattern][i]];
> +}
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index c1689c0fa05a..cdf2d30e2bb1 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -645,6 +645,9 @@ void rkisp1_params_post_configure(struct rkisp1_params *params);
>   */
>  void rkisp1_params_disable(struct rkisp1_params *params);
>
> +void rkisp1_bls_swap_regs(enum rkisp1_fmt_raw_pat_type pattern,
> +			  const u32 input[4], u32 output[4]);
> +

Should this be declared after rkisp1_sd_adjust_crop() to maintain the
same definition ordering as in the C file ?

>  /* irq handlers */
>  irqreturn_t rkisp1_isp_isr(int irq, void *ctx);
>  irqreturn_t rkisp1_csi_isr(int irq, void *ctx);
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index 39a32e98807f..b10cc2701244 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -165,54 +165,20 @@ static void rkisp1_bls_config(struct rkisp1_params *params,
>  	new_control &= RKISP1_CIF_ISP_BLS_ENA;
>  	/* fixed subtraction values */
>  	if (!arg->enable_auto) {
> -		const struct rkisp1_cif_isp_bls_fixed_val *pval =
> -								&arg->fixed_val;
> +		static const u32 regs[] = {
> +			RKISP1_CIF_ISP_BLS_A_FIXED,
> +			RKISP1_CIF_ISP_BLS_B_FIXED,
> +			RKISP1_CIF_ISP_BLS_C_FIXED,
> +			RKISP1_CIF_ISP_BLS_D_FIXED,
> +		};
> +		u32 swapped[4];
>
> -		switch (params->raw_type) {
> -		case RKISP1_RAW_BGGR:
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_D_FIXED,
> -				     pval->r);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_C_FIXED,
> -				     pval->gr);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_B_FIXED,
> -				     pval->gb);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_A_FIXED,
> -				     pval->b);
> -			break;
> -		case RKISP1_RAW_GBRG:
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_C_FIXED,
> -				     pval->r);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_D_FIXED,
> -				     pval->gr);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_A_FIXED,
> -				     pval->gb);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_B_FIXED,
> -				     pval->b);
> -			break;
> -		case RKISP1_RAW_GRBG:
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_B_FIXED,
> -				     pval->r);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_A_FIXED,
> -				     pval->gr);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_D_FIXED,
> -				     pval->gb);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_C_FIXED,
> -				     pval->b);
> -			break;
> -		case RKISP1_RAW_RGGB:
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_A_FIXED,
> -				     pval->r);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_B_FIXED,
> -				     pval->gr);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_C_FIXED,
> -				     pval->gb);
> -			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_D_FIXED,
> -				     pval->b);
> -			break;
> -		default:
> -			break;
> -		}
> +		rkisp1_bls_swap_regs(params->raw_type, regs, swapped);

Have you considered making rkisp1_bls_swap_regs() shuffle 'regs'
in-place ? Not strictly necessary, just wondering

>
> +		rkisp1_write(params->rkisp1, swapped[0], arg->fixed_val.r);
> +		rkisp1_write(params->rkisp1, swapped[1], arg->fixed_val.gr);
> +		rkisp1_write(params->rkisp1, swapped[2], arg->fixed_val.gb);
> +		rkisp1_write(params->rkisp1, swapped[3], arg->fixed_val.b);
>  	} else {
>  		if (arg->en_windows & BIT(1)) {
>  			rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_BLS_H2_START,
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> index 2795eef91bdd..a502719e916a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> @@ -304,48 +304,25 @@ static void rkisp1_stats_get_hst_meas_v12(struct rkisp1_stats *stats,
>  static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
>  				      struct rkisp1_stat_buffer *pbuf)
>  {
> +	static const u32 regs[] = {
> +		RKISP1_CIF_ISP_BLS_A_MEASURED,
> +		RKISP1_CIF_ISP_BLS_B_MEASURED,
> +		RKISP1_CIF_ISP_BLS_C_MEASURED,
> +		RKISP1_CIF_ISP_BLS_D_MEASURED,
> +	};
>  	struct rkisp1_device *rkisp1 = stats->rkisp1;
>  	const struct rkisp1_mbus_info *in_fmt = rkisp1->isp.sink_fmt;
>  	struct rkisp1_cif_isp_bls_meas_val *bls_val;
> +	u32 swapped[4];
> +
> +	rkisp1_bls_swap_regs(in_fmt->bayer_pat, regs, swapped);
>
>  	bls_val = &pbuf->params.ae.bls_val;
> -	if (in_fmt->bayer_pat == RKISP1_RAW_BGGR) {
> -		bls_val->meas_b =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_A_MEASURED);
> -		bls_val->meas_gb =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_B_MEASURED);
> -		bls_val->meas_gr =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_C_MEASURED);
> -		bls_val->meas_r =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_D_MEASURED);
> -	} else if (in_fmt->bayer_pat == RKISP1_RAW_GBRG) {
> -		bls_val->meas_gb =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_A_MEASURED);
> -		bls_val->meas_b =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_B_MEASURED);
> -		bls_val->meas_r =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_C_MEASURED);
> -		bls_val->meas_gr =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_D_MEASURED);
> -	} else if (in_fmt->bayer_pat == RKISP1_RAW_GRBG) {
> -		bls_val->meas_gr =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_A_MEASURED);
> -		bls_val->meas_r =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_B_MEASURED);
> -		bls_val->meas_b =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_C_MEASURED);
> -		bls_val->meas_gb =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_D_MEASURED);
> -	} else if (in_fmt->bayer_pat == RKISP1_RAW_RGGB) {
> -		bls_val->meas_r =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_A_MEASURED);
> -		bls_val->meas_gr =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_B_MEASURED);
> -		bls_val->meas_gb =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_C_MEASURED);
> -		bls_val->meas_b =
> -			rkisp1_read(rkisp1, RKISP1_CIF_ISP_BLS_D_MEASURED);
> -	}
> +
> +	bls_val->meas_r = rkisp1_read(rkisp1, swapped[0]);
> +	bls_val->meas_gr = rkisp1_read(rkisp1, swapped[1]);
> +	bls_val->meas_gb = rkisp1_read(rkisp1, swapped[2]);
> +	bls_val->meas_b = rkisp1_read(rkisp1, swapped[3]);
>  }
>
>  static const struct rkisp1_stats_ops rkisp1_v10_stats_ops = {
> --
> Regards,
>
> Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
