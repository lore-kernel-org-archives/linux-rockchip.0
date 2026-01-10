Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E00C1D232E4
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 19:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgfFUOUjTIjd6cAbRVkUfWoYR2xUGgY9paB2hlyPQo8=; b=pbQRk0p3VCK6Dp
	Q7zCLn9nd/waVf5v78wKNQf/GAtjqtckWJI2z1bBQ4hiAIfHWSCFFULWJWBr3l9qTdciMIsb7r6Ay
	LzbrgJoiLLa7hRMuZj/EXSQtD0bR6ZXvHfK4nuMTC5ZsjeApJH9amITzvv5gzfF7lfCJvaAc9SMJq
	tcAsxugek40JgFCsZvOuZfm83HFeWDLvFWulKsox+SYgB42fo4VVN0B3BWOmk7S1rOt5U2ALcGh5R
	Jtg45fSb4M363Tj0m2/9wOFMaA8Q9zkqtutkB2zzFoxASaDiAVxcvoWthqHPZvQwdXtEh0pMgeD4v
	WQhFkmHLdw/tXcais3JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veekf-00000003dZr-3HzD;
	Sat, 10 Jan 2026 19:35:57 +0000
Received: from out-188.mta0.migadu.com ([91.218.175.188])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veekd-00000003dZD-023q
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 19:35:56 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1768073742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YYRmxOMkxzng4TMKTpoi3lSayf/NyY8ahAeAqOwq/3Q=;
	b=fxLw6WmCoewuA/NmZizqtsuK2ZU49/df/OHEUiOiX6DS8PzOCAax5HvdogS/qo82H1nCIm
	hYFIADCxjtguJY1oe2w941M0KkhzfmFvwlydh3o5fBEyXxy3pDghAK98WPsUG/EaDpQOJ2
	i2hIrLqvnMYRs5MnVd33JqiZZQKvLH5WNNoSqXdJEWv0EaU0KmNOIbXydf33+1blEzliIg
	B4q0NmMlVHKC0MxGJw3rsNZO7wtHtZ/ZKt0rsOE7bVBOCxZg/8Mu2VyMs/5HqVaupezTSu
	zfqA737e8YP5MxZLG3xPycrIi7+JS32jEUUkeanaVsFvTH5METUHKrhutKYDaA==
Date: Sat, 10 Jan 2026 20:35:37 +0100
Message-Id: <DFL5TY0QQNMN.1RS04UM9D1V8S@cknow-tech.com>
Cc: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>, "Dang Huynh"
 <dang.huynh@mainlining.org>
Subject: Re: [PATCH v3 2/3] media: rkvdec: Add support for the VDPU346
 variant
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Christian Hewitt" <christianshewitt@gmail.com>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, =?utf-8?q?Olivier_Cr=C3=AAte?=
 <olivier.crete@collabora.com>, "Ezequiel Garcia"
 <ezequiel@vanguardiasur.com.ar>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Heiko Stuebner" <heiko@sntech.de>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Dmitry Osipenko"
 <dmitry.osipenko@collabora.com>, "Thomas Gleixner" <tglx@linutronix.de>,
 "Dragan Simic" <dsimic@manjaro.org>, "Chukun Pan" <amadeus@jmu.edu.cn>,
 <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
References: <20260110053727.2295260-1-christianshewitt@gmail.com>
 <20260110053727.2295260-3-christianshewitt@gmail.com>
In-Reply-To: <20260110053727.2295260-3-christianshewitt@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260110_113555_195091_C2F58C5F 
X-CRM114-Status: GOOD (  14.95  )
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

Hi Christian,

On Sat Jan 10, 2026 at 6:37 AM CET, Christian Hewitt wrote:
> VDPU346 is similar to VDPU381 but with a single core and limited
> to 4K60 media. It is also limited to H264 L5.1 and omits AV1 and
> AVS2 capabilities. VDPU346 is used with RK3566 and RK3568.
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Dang Huynh <dang.huynh@mainlining.org> # Pinetab2
> ---
>  .../media/platform/rockchip/rkvdec/rkvdec.c   | 103 ++++++++++++++++++
>  1 file changed, 103 insertions(+)
>
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> index a5cf6f3240f8..6e49b129d11f 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> @@ -236,6 +236,62 @@ static const struct rkvdec_ctrls rkvdec_hevc_ctrls = {
>  	.num_ctrls = ARRAY_SIZE(rkvdec_hevc_ctrl_descs),
>  };
>  
> +static const struct rkvdec_ctrl_desc vdpu346_hevc_ctrl_descs[] = {
> +	{
> +		.cfg.id = V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
> +	},
> +	{
> +		.cfg.id = V4L2_CID_STATELESS_HEVC_SPS,
> +		.cfg.ops = &rkvdec_ctrl_ops,
> +	},
> +	{
> +		.cfg.id = V4L2_CID_STATELESS_HEVC_PPS,
> +	},
> +	{
> +		.cfg.id = V4L2_CID_STATELESS_HEVC_SCALING_MATRIX,
> +	},
> +	{
> +		.cfg.id = V4L2_CID_STATELESS_HEVC_DECODE_MODE,
> +		.cfg.min = V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
> +		.cfg.max = V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
> +		.cfg.def = V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
> +	},
> +	{
> +		.cfg.id = V4L2_CID_STATELESS_HEVC_START_CODE,
> +		.cfg.min = V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
> +		.cfg.def = V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
> +		.cfg.max = V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
> +	},
> +	{
> +		.cfg.id = V4L2_CID_MPEG_VIDEO_HEVC_PROFILE,
> +		.cfg.min = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
> +		.cfg.max = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10,
> +		.cfg.menu_skip_mask =
> +			BIT(V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_STILL_PICTURE),
> +		.cfg.def = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
> +	},
> +	{
> +		.cfg.id = V4L2_CID_MPEG_VIDEO_HEVC_LEVEL,
> +		.cfg.min = V4L2_MPEG_VIDEO_HEVC_LEVEL_1,
> +		.cfg.max = V4L2_MPEG_VIDEO_HEVC_LEVEL_5_1,
> +	},
> +	{
> +		.cfg.id = V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS,
> +		.cfg.ops = &rkvdec_ctrl_ops,
> +		.cfg.dims = { 65 },
> +	},
> +	{
> +		.cfg.id = V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS,
> +		.cfg.ops = &rkvdec_ctrl_ops,
> +		.cfg.dims = { 65 },
> +	},
> +};
> +
> +static const struct rkvdec_ctrls vdpu346_hevc_ctrls = {
> +	.ctrls = vdpu346_hevc_ctrl_descs,
> +	.num_ctrls = ARRAY_SIZE(vdpu346_hevc_ctrl_descs),
> +};
> +
>  static const struct rkvdec_ctrl_desc vdpu38x_hevc_ctrl_descs[] = {
>  	{
>  		.cfg.id = V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
> @@ -463,6 +519,41 @@ static const struct rkvdec_coded_fmt_desc rk3288_coded_fmts[] = {
>  	}
>  };
>  
> +static const struct rkvdec_coded_fmt_desc vdpu346_coded_fmts[] = {
> +	{
> +		.fourcc = V4L2_PIX_FMT_HEVC_SLICE,
> +		.frmsize = {
> +			.min_width = 64,
> +			.max_width = 4096,
> +			.step_width = 64,
> +			.min_height = 64,
> +			.max_height = 2304,
> +			.step_height = 16,
> +		},
> +		.ctrls = &vdpu346_hevc_ctrls,
> +		.ops = &rkvdec_vdpu381_hevc_fmt_ops,
> +		.num_decoded_fmts = ARRAY_SIZE(rkvdec_hevc_decoded_fmts),
> +		.decoded_fmts = rkvdec_hevc_decoded_fmts,
> +		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
> +	},
> +	{
> +		.fourcc = V4L2_PIX_FMT_H264_SLICE,
> +		.frmsize = {
> +			.min_width = 64,
> +			.max_width =  4096,
> +			.step_width = 64,
> +			.min_height = 64,
> +			.max_height =  2304,
> +			.step_height = 16,
> +		},
> +		.ctrls = &rkvdec_h264_ctrls,
> +		.ops = &rkvdec_vdpu381_h264_fmt_ops,
> +		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_decoded_fmts),
> +		.decoded_fmts = rkvdec_h264_decoded_fmts,
> +		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
> +	},
> +};
> +
>  static const struct rkvdec_coded_fmt_desc vdpu381_coded_fmts[] = {
>  	{
>  		.fourcc = V4L2_PIX_FMT_HEVC_SLICE,
> @@ -1657,6 +1748,14 @@ static const struct rkvdec_variant_ops vdpu381_variant_ops = {
>  	.flatten_matrices = transpose_and_flatten_matrices,
>  };
>  
> +static const struct rkvdec_variant vdpu346_variant = {
> +	.coded_fmts = vdpu346_coded_fmts,
> +	.num_coded_fmts = ARRAY_SIZE(vdpu346_coded_fmts),
> +	.rcb_sizes = vdpu381_rcb_sizes,

AFAICT this is not correct, the rcb_sizes are different for vdpu346 vs
vdpu381. While for vdpu381 the sizes are the same across codecs, they
vary for vdpu346. And vdpu346 does not have 'STRMD Row', 'Transd Row'
and 'Transd col'.

For RK3588/vdpu381 it is defined in RK3588 TRM V1.0 Part1 in
paragraph 5.4.4.3 in 'Table 5-13 Row or Col buffer size required' on
page 381.

For RK3568/vdpu346 is is defines in RK3568 TRM V1.1 Part2 in
paragraph 10.4.8 in 'Table 10-9 Row or Col buffer size required' on page
474 and 475.

Cheers,
  Diederik

> +	.num_rcb_sizes = ARRAY_SIZE(vdpu381_rcb_sizes),
> +	.ops = &vdpu381_variant_ops,
> +};
> +
>  static const struct rkvdec_variant vdpu381_variant = {
>  	.coded_fmts = vdpu381_coded_fmts,
>  	.num_coded_fmts = ARRAY_SIZE(vdpu381_coded_fmts),
> @@ -1705,6 +1804,10 @@ static const struct of_device_id of_rkvdec_match[] = {
>  		.compatible = "rockchip,rk3399-vdec",
>  		.data = &rk3399_rkvdec_variant,
>  	},
> +	{
> +		.compatible = "rockchip,rk3568-vdec",
> +		.data = &vdpu346_variant,
> +	},
>  	{
>  		.compatible = "rockchip,rk3588-vdec",
>  		.data = &vdpu381_variant,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
