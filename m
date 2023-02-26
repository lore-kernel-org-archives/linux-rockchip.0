Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E1F0C6FA8E
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Feb 2023 12:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DkXpCeom5+jZREe90NICJ/KhLHPclTCNKE1jY6x6+pQ=; b=KBmU5ZbsPrKn6h4w851XjzpdyR
	2VBA6lIy6P6xaMUmwaHR1GCPZ8LFBHxo4f4mNuFUv/Xw1fAnGbmx5yiI7g6RrgszO48kqdFYypoxg
	FhxBLidtL+SFKKobuMibpKb2g/obRNso2i1SpOgW6CsNzLcZnI/4jS7N73xEATeNLEf1rkCqHOgtE
	wAaK9VZyInAG3oi/5/bNl363KlrZxmkTR4j4DMVtfjkqnG4mnafZj+v9kgt53DXehadB8TSEjqKZg
	t4sD0YbPwZGRldhkUPwf3XsUFe01xQfg61X2Xg7oWkV7q6sofanVzLmikYkiSEsb7UiiYQZIQh06P
	jch9tNMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWGcv-007Fkp-1b; Sun, 26 Feb 2023 12:59:41 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWGci-007FfU-53
	for linux-rockchip@lists.infradead.org; Sun, 26 Feb 2023 12:59:29 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-1720433ba75so4885270fac.5
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Feb 2023 04:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112; t=1677416367;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=MEEIkfCEKNb+yJat01VLOoIx0jwHxX8KxFsxTv/3AWA=;
        b=5JV/brtC/PBagCV/s/mJY0JaOjX9a5frBx9rjjhs3gEx+4/C4wrI02ciyPAStBAOum
         EHKuBPo21xtkjlesjuo+pFCcM87pyOP+A/6HMV3YRoW8km3QQvun3wM6lKRbISJAZfhW
         FqXM4IKLi4Vki8I8PdUGixXpy41VKkGLiyWH2g52PUiaxyOopz8E7ajvPkGjFgZdJuA6
         pXetR7sXEs0X2CL0Z6Ex53dgTurtcdUZ0iC4o5+WmSun0Cu2ue2ny0kbfEd3JFZ6H/tF
         bS5i7mvKOlmqV9/ETi362Z3XEBZJGhMkROVb8s6wZqPhEN8BrtThVJjh3R2aDxegP30P
         Cecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677416367;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MEEIkfCEKNb+yJat01VLOoIx0jwHxX8KxFsxTv/3AWA=;
        b=1lA4KXq3IlWYMpST/HlrCxQsM2PeSfZJee2/a8wOLfZZuZhNMojVEBsBv5+LjeRSG/
         YgDa/IfKQSSfn5w/csyQJyVI4pJFiwKerM3v6qB/uhiIL0gTob17rXE/MdU970D+v/oA
         gQh+UbThh15Mprwb/ocjNM0Ysgc7+1XhIUWi3In22LqjEDaArw1/cBfAmc2Dl8Lleb2c
         Ly9akBvMVsIKaRI6i7IdcmppXnIuco9RvjgkMa+oXndh98A8TDs4kA0kG9TqsfNdoE7H
         Jw8o3f/xaWAEcqR79a+CDdYW8dGX0DovpiV4bhH4SNRD/yx+bUPc3Fi4QpNR9m5AsXMe
         rXew==
X-Gm-Message-State: AO0yUKVg0SSlKvnBJFkCTWFJDQA00yiDUJ0HgX2cSb1LKzXKuUxMXTuX
	kQgq0wBkxagH8rPhHJuh69rjlg==
X-Google-Smtp-Source: AK7set+8v7z6Aboy4L5hWmdTsc35qvdCVTbUT1gATzHCTVITOJivrC5DQc8wDB7PLDGXPVo/hsPq6g==
X-Received: by 2002:a05:6870:e88f:b0:172:8985:95c5 with SMTP id q15-20020a056870e88f00b00172898595c5mr6606295oan.0.1677416367029;
        Sun, 26 Feb 2023 04:59:27 -0800 (PST)
Received: from [192.168.10.175] ([190.106.125.26])
        by smtp.gmail.com with ESMTPSA id q21-20020a056870e89500b0017256ba1fd0sm779737oan.41.2023.02.26.04.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Feb 2023 04:59:26 -0800 (PST)
Date: Sun, 26 Feb 2023 09:59:14 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v9 3/6] media: verisilicon: Do not set ctx->bit_depth in
 hantro_try_ctrl()
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk,
	robert.mader@collabora.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Message-Id: <QQUOQR.DDXB801QURT72@vanguardiasur.com.ar>
In-Reply-To: <20230220104849.398203-4-benjamin.gaignard@collabora.com>
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
	<20230220104849.398203-4-benjamin.gaignard@collabora.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230226_045928_200767_B09ABCCA 
X-CRM114-Status: GOOD (  21.52  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On Mon, Feb 20 2023 at 11:48:46 AM +0100, Benjamin Gaignard 
<benjamin.gaignard@collabora.com> wrote:
> In hantro_try_ctrl() we should only check the values inside
> control parameters and not set ctx->bit_depth. That must
> be done in controls set function.
> Create a set control function for hevc where ctx->bit_depth is
> set at the right time.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  .../media/platform/verisilicon/hantro_drv.c   | 32 
> ++++++++++++++-----
>  1 file changed, 24 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c 
> b/drivers/media/platform/verisilicon/hantro_drv.c
> index b0aeedae7b65..c237253803f4 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -251,11 +251,6 @@ queue_init(void *priv, struct vb2_queue *src_vq, 
> struct vb2_queue *dst_vq)
> 
>  static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
>  {
> -	struct hantro_ctx *ctx;
> -
> -	ctx = container_of(ctrl->handler,
> -			   struct hantro_ctx, ctrl_handler);
> -
>  	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
>  		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
> 
> @@ -274,8 +269,6 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
>  		if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 
> != 2)
>  			/* Only 8-bit and 10-bit are supported */
>  			return -EINVAL;
> -
> -		ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
>  	} else if (ctrl->id == V4L2_CID_STATELESS_VP9_FRAME) {
>  		const struct v4l2_ctrl_vp9_frame *dec_params = 
> ctrl->p_new.p_vp9_frame;
> 
> @@ -324,6 +317,24 @@ static int hantro_vp9_s_ctrl(struct v4l2_ctrl 
> *ctrl)
>  	return 0;
>  }
> 
> +static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	struct hantro_ctx *ctx;
> +
> +	ctx = container_of(ctrl->handler,
> +			   struct hantro_ctx, ctrl_handler);
> +
> +	switch (ctrl->id) {
> +	case V4L2_CID_STATELESS_HEVC_SPS:
> +		ctx->bit_depth = ctrl->p_new.p_hevc_sps->bit_depth_luma_minus8 + 8;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
>  	.try_ctrl = hantro_try_ctrl,
>  };
> @@ -336,6 +347,11 @@ static const struct v4l2_ctrl_ops 
> hantro_vp9_ctrl_ops = {
>  	.s_ctrl = hantro_vp9_s_ctrl,
>  };
> 
> +static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
> +	.try_ctrl = hantro_try_ctrl,
> +	.s_ctrl = hantro_hevc_s_ctrl,
> +};
> +
>  #define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
>  					 V4L2_JPEG_ACTIVE_MARKER_COM | \
>  					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
> @@ -470,7 +486,7 @@ static const struct hantro_ctrl controls[] = {
>  		.codec = HANTRO_HEVC_DECODER,
>  		.cfg = {
>  			.id = V4L2_CID_STATELESS_HEVC_SPS,
> -			.ops = &hantro_ctrl_ops,
> +			.ops = &hantro_hevc_ctrl_ops,
>  		},
>  	}, {
>  		.codec = HANTRO_HEVC_DECODER,
> --
> 2.34.1
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
