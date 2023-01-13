Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04E7EC54EBE
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 14:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ocXcjOeyLzkA5GDeLab23yz/g7Qae1gMMUpSwT05kY=; b=khgq3czgK2H6Gs
	06lCCQImCHzuZ2VRyXwofaszVb4/ar2ff/JKJSI4v2ub2o4kD/aizgKnrxBwW+flBd6s9m9Rk1WXh
	kYJqwwtXVzrDxNsBGxb729gWnk2StaYA0ZPHT+Jay7tnIaby7rEZQMZP69igCwi1oXvVrJS0rzWoO
	PEnubvqBCTxGg+DcxTvNRc113Lg8is1vzKGq5LT/DXEEbQJT7abOoEOFvt5ssY09W9tV4i5gG3WrB
	0tv0dJ7arnDNYdODNhtDiVv/odc3RMKJMvS7shzxCmh+IGtawzGbCnb2x0W/aTDDkLkUv8kx4B3uD
	FQTlY2ZPhDxQsoA5oQ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGKo5-002t1j-Op; Fri, 13 Jan 2023 14:13:21 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGKnv-002szg-9j
	for linux-rockchip@lists.infradead.org; Fri, 13 Jan 2023 14:13:12 +0000
Received: by mail-lf1-x129.google.com with SMTP id v25so33265925lfe.12
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Jan 2023 06:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HLMxgYnqS/4/TB7UwvI/vIGP7m316E2G7fHeJE1jpg8=;
        b=AgTJXz4WlI46LfMJr07WPO9BhmaVxpE2iOif1zm+Oqp2iZVRniRVH567A90yVL5zdT
         q1XZFC3xt7nD6cJNMVIvsOZecK0s9anCwlI3UWXh2ZdrPj0tZocJmc/VU9ZcuJg6dyTK
         APxb7T3i87E3Xsmq+DLDOIjYhftZV8wQrUz9GGXYm1vlT2HYb8Q8EXQCe5dVC28w94XB
         5f7UeCZX30k7tILF7DrEO0D4HJzPbpfVs418KVMVGS9QCsqtum44qhS7GAzZ0+irSILU
         ipDxlxLSFw7DLoQehGVG7EYWuzAgSdyGCk1kY45FvWcJvcItZFLeF+D4HXs+ejyIVgO+
         HwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HLMxgYnqS/4/TB7UwvI/vIGP7m316E2G7fHeJE1jpg8=;
        b=0qjmVQscxUHa84WGnTsO89wzN2mtzWjSTlFnelilTTvM4TNM985qHXyRI8wbaUfub3
         dINAKEXGisD1iZz9mN3jdV14FIxVnsgX++CbbM2pUdlLcmx87SqAdeIieMQXz7lENax+
         thq4gVkdb/GA3am32oiKCVGAssuQ0JPD9AZqVI0eXJZdg/8+ZmLT08PK0dtnS8CCWDR9
         yJqGYqpkKAOyrHX+WOgBr14U30x4ppfAqmZvQ9x7CGLmb/KIjXrGbetpSJ5bZr0JYDHe
         23Gt8YWUkIJww0UHpuOMm7MEOq0QNLIJS7o9R+gX4Vie6LlyvDjCRcqxknRBcyXKTjMM
         e+zQ==
X-Gm-Message-State: AFqh2kr2+OVbjkTpQ/aD+diAysVT6o9I+lm+TkLrdcJ0XzwUV4rN67Y4
	lrI7b33Rx8+YGaBA0r4ZH/UQr7hGiCpvMwlbYoT0Cg==
X-Google-Smtp-Source: AMrXdXutSMAOZy9HzarrHShlHiOo8HAv9jYGW08xHIKS5auBxnj5lfCkvop1Nhs4GtEDmbJ2Th7fITLFBqZcAAXkUY0=
X-Received: by 2002:a05:6512:708:b0:4ca:fab6:91db with SMTP id
 b8-20020a056512070800b004cafab691dbmr3403772lfs.202.1673619186692; Fri, 13
 Jan 2023 06:13:06 -0800 (PST)
MIME-Version: 1.0
References: <20230113131257.661079-1-benjamin.gaignard@collabora.com>
In-Reply-To: <20230113131257.661079-1-benjamin.gaignard@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 13 Jan 2023 11:12:53 -0300
Message-ID: <CAAEAJfAnoe+rL=9yFV1crhoaFa9uWaaJq3nCeS+QZPLi_xnsOw@mail.gmail.com>
Subject: Re: [PATCH v2] media: verisilicon: HEVC: Only propose 10 bits
 compatible pixels formats
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-imx@nxp.com, hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_061311_344987_B4ADE862 
X-CRM114-Status: GOOD (  24.63  )
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

Hi Benjamin,

On Fri, Jan 13, 2023 at 10:13 AM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> When decoding a 10bits bitstreams HEVC driver should only expose
> 10bits pixel formats.
> To fulfill this requirement it is needed to call hantro_reset_raw_fmt()
> when bit depth change and to correctly set match_depth in pixel formats
> enumeration.
>
> Fixes: dc39473d0340 ("media: hantro: imx8m: Enable 10bit decoding")
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 2:
> - Also remove struct hantro_ctx *ctx variable in hantro_try_ctrl()
>
>  .../media/platform/verisilicon/hantro_drv.c   | 40 +++++++++++++++----
>  .../media/platform/verisilicon/hantro_v4l2.c  |  2 +-
>  .../media/platform/verisilicon/hantro_v4l2.h  |  1 +
>  .../media/platform/verisilicon/imx8m_vpu_hw.c |  2 +
>  4 files changed, 36 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 8cb4a68c9119..e824e87618db 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -251,11 +251,6 @@ queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
>
>  static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
>  {
> -       struct hantro_ctx *ctx;
> -
> -       ctx = container_of(ctrl->handler,
> -                          struct hantro_ctx, ctrl_handler);
> -

This change is unrelated to this commit.

>         if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
>                 const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
>
> @@ -274,8 +269,6 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
>                 if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
>                         /* Only 8-bit and 10-bit are supported */
>                         return -EINVAL;
> -
> -               ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
>         } else if (ctrl->id == V4L2_CID_STATELESS_VP9_FRAME) {
>                 const struct v4l2_ctrl_vp9_frame *dec_params = ctrl->p_new.p_vp9_frame;
>
> @@ -286,6 +279,32 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
>         return 0;
>  }
>
> +static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +       struct hantro_ctx *ctx;
> +
> +       ctx = container_of(ctrl->handler,
> +                          struct hantro_ctx, ctrl_handler);
> +
> +       vpu_debug(1, "s_ctrl: id = %d, val = %d\n", ctrl->id, ctrl->val);
> +
> +       switch (ctrl->id) {
> +       case V4L2_CID_STATELESS_HEVC_SPS:
> +               const struct v4l2_ctrl_hevc_sps *sps = ctrl->p_new.p_hevc_sps;
> +               int bit_depth = sps->bit_depth_luma_minus8 + 8;
> +
> +               if (ctx->bit_depth != bit_depth) {
> +                       ctx->bit_depth = bit_depth;
> +                       hantro_reset_raw_fmt(ctx);

We need to propagate the EBUSY error from hantro_set_fmt_cap,
to hantro_reset_raw_fmt, so this operation can fail if the capture
queue has buffers allocated.

Keep in mind, we have to make sure the hantro_ctx state
remains unchanged when the operation fails.

The entire hantro_v4l2.c format negotiation is done without this
case in mind (controls can change the format enumeration),
so this new case needs some refactoring.

I also think we need v4l2-compliance tests for it.

Thanks!
Ezequiel


> +               }
> +               break;
> +       default:
> +               return -EINVAL;
> +       }
> +
> +       return 0;
> +}
> +
>  static int hantro_jpeg_s_ctrl(struct v4l2_ctrl *ctrl)
>  {
>         struct hantro_ctx *ctx;
> @@ -328,6 +347,11 @@ static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
>         .try_ctrl = hantro_try_ctrl,
>  };
>
> +static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
> +       .s_ctrl = hantro_hevc_s_ctrl,
> +       .try_ctrl = hantro_try_ctrl,
> +};
> +
>  static const struct v4l2_ctrl_ops hantro_jpeg_ctrl_ops = {
>         .s_ctrl = hantro_jpeg_s_ctrl,
>  };
> @@ -470,7 +494,7 @@ static const struct hantro_ctrl controls[] = {
>                 .codec = HANTRO_HEVC_DECODER,
>                 .cfg = {
>                         .id = V4L2_CID_STATELESS_HEVC_SPS,
> -                       .ops = &hantro_ctrl_ops,
> +                       .ops = &hantro_hevc_ctrl_ops,
>                 },
>         }, {
>                 .codec = HANTRO_HEVC_DECODER,
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index 2c7a805289e7..0025e049dd26 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -398,7 +398,7 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
>                 hantro_set_fmt_out(ctx, fmt);
>  }
>
> -static void
> +void
>  hantro_reset_raw_fmt(struct hantro_ctx *ctx)
>  {
>         const struct hantro_fmt *raw_vpu_fmt;
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.h b/drivers/media/platform/verisilicon/hantro_v4l2.h
> index 64f6f57e9d7a..f642560aed93 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.h
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.h
> @@ -21,6 +21,7 @@
>  extern const struct v4l2_ioctl_ops hantro_ioctl_ops;
>  extern const struct vb2_ops hantro_queue_ops;
>
> +void hantro_reset_raw_fmt(struct hantro_ctx *ctx);
>  void hantro_reset_fmts(struct hantro_ctx *ctx);
>  int hantro_get_format_depth(u32 fourcc);
>  const struct hantro_fmt *
> diff --git a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
> index b390228fd3b4..f850d8bddef6 100644
> --- a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
> +++ b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
> @@ -152,6 +152,7 @@ static const struct hantro_fmt imx8m_vpu_g2_postproc_fmts[] = {
>         {
>                 .fourcc = V4L2_PIX_FMT_NV12,
>                 .codec_mode = HANTRO_MODE_NONE,
> +               .match_depth = true,
>                 .postprocessed = true,
>                 .frmsize = {
>                         .min_width = FMT_MIN_WIDTH,
> @@ -165,6 +166,7 @@ static const struct hantro_fmt imx8m_vpu_g2_postproc_fmts[] = {
>         {
>                 .fourcc = V4L2_PIX_FMT_P010,
>                 .codec_mode = HANTRO_MODE_NONE,
> +               .match_depth = true,
>                 .postprocessed = true,
>                 .frmsize = {
>                         .min_width = FMT_MIN_WIDTH,
> --
> 2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
