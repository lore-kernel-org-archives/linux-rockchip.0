Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C86CC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 19:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKQnF8JvLUx4gWHLqR/M3DLu3PdlUHta9Y9NDxJOHP8=; b=XUoiCUzi7dDVS0
	rptIlpjlwzrDcCbd+eMZT7bhRiRMd3703+dj2V/K/RjmYST/z/Z4rtEaBUWUs2BmdkRzFH/e2dWi/
	HsSM74VAlMAEDOubWIRR2Ee3kTJ3FY7PXwFHJQtoyzercnkgFAfLU6oazHx7P50R/yEkBxVxrUoEl
	I61ohZ2SRUE/Dhtaw68v3l8/rt/PZRNyYfWDjBD5Rnu02XG3+EcWjDN9PwREUq1Ui2bBlsbgnbwTB
	WI2vKWz87bGrAKw1tw3m4UcuvDJGmHs3bt2KBkLsabSXWAQOr4UMgUhGiC97eGPWytGHBzohPCq1e
	Ywg3RJwsy9on7E+KyH7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPSTv-0000000EJZP-246N;
	Thu, 04 Jul 2024 19:51:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPSTs-0000000EJYq-0F9p
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 19:51:01 +0000
Received: from ideasonboard.com (mob-5-90-52-146.net.vodafone.it [5.90.52.146])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D4B1963D;
	Thu,  4 Jul 2024 21:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720122629;
	bh=UMQFX1IniWINN0uqA3u7muNAtP4EwP3ejynY3o2iTas=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aE7E92Iz4d6dRnhIe6l7QhjgHBGsbfIYWGeX/gQdtHTCxUXfdO2Ty4aZqQ/NoPLDy
	 rXRAvgx8G0sHhNsLoTm8UwL7ZxpzmZQNve77biZ50jEzVYqbQIbkEDHZgANtn4ScLa
	 rhfqKVeiSjA3QTv5TVqKFLEkv5Y0XzOzx+12YTnI=
Date: Thu, 4 Jul 2024 21:50:54 +0200
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Paul Elder <paul.elder@ideasonboard.com>, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/5] media: rkisp1: Add helper function to swap colour
 channels
Message-ID: <fqvg7g66aahqerpjwhjgaaijx4le4xqncbshbq5b5hwapfh6g5@uz6j7ptbhlyo>
References: <20240704154932.6686-1-laurent.pinchart@ideasonboard.com>
 <20240704154932.6686-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240704154932.6686-2-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_125100_270663_271ABC06 
X-CRM114-Status: GOOD (  22.41  )
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

On Thu, Jul 04, 2024 at 06:49:28PM GMT, Laurent Pinchart wrote:
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

Reviewed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
> Changes since v1:
>
> - Declare swap array with explicit dimensions
> - Move i variable declaration to the loop
> - Move rkisp1_bls_swap_regs() declaration
> ---
>  .../platform/rockchip/rkisp1/rkisp1-common.c  | 14 +++++
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  3 +
>  .../platform/rockchip/rkisp1/rkisp1-params.c  | 58 ++++---------------
>  .../platform/rockchip/rkisp1/rkisp1-stats.c   | 51 +++++-----------
>  4 files changed, 43 insertions(+), 83 deletions(-)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.c
> index f956b90a407a..60c97bb7b18b 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.c
> @@ -178,3 +178,17 @@ void rkisp1_sd_adjust_crop(struct v4l2_rect *crop,
>
>  	rkisp1_sd_adjust_crop_rect(crop, &crop_bounds);
>  }
> +
> +void rkisp1_bls_swap_regs(enum rkisp1_fmt_raw_pat_type pattern,
> +			  const u32 input[4], u32 output[4])
> +{
> +	static const unsigned int swap[4][4] = {
> +		[RKISP1_RAW_RGGB] = { 0, 1, 2, 3 },
> +		[RKISP1_RAW_GRBG] = { 1, 0, 3, 2 },
> +		[RKISP1_RAW_GBRG] = { 2, 3, 0, 1 },
> +		[RKISP1_RAW_BGGR] = { 3, 2, 1, 0 },
> +	};
> +
> +	for (unsigned int i = 0; i < 4; ++i)
> +		output[i] = input[swap[pattern][i]];
> +}
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index c1689c0fa05a..a52079261579 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -603,6 +603,9 @@ void rkisp1_sd_adjust_crop_rect(struct v4l2_rect *crop,
>  void rkisp1_sd_adjust_crop(struct v4l2_rect *crop,
>  			   const struct v4l2_mbus_framefmt *bounds);
>
> +void rkisp1_bls_swap_regs(enum rkisp1_fmt_raw_pat_type pattern,
> +			  const u32 input[4], u32 output[4]);
> +
>  /*
>   * rkisp1_mbus_info_get_by_code - get the isp info of the media bus code
>   *
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index 25aede5e1af5..c56365c7c51f 100644
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
