Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C39FC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 21:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:In-Reply-To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=aFN9mr4TXurUaFDQDeWp1YnM3UHLuZIS4cMdL4R4KSY=; b=OPtDWQAJXGv5kj
	eOln3Ziw19g//JcV6t4p7togfSgnmD5xyXSVLCCMF10GsZpLQA5VLo0HD2sUFtHP2Mlidf5DJrlbw
	4DGCopPr1qv8YNxu2Lk60cX2yun4nj2aTVuat/RMJVbO612kuRkcDLLKwEgyqq8eXd6PC+Zfj4oVm
	JKZP1uxV1FiiULScSFA8B95S0Pob/DeQctL4oqWuAy0j8zUug+fyxmRTW8nirTJw3QlUhUufbtxa2
	nslO7nor3TQzMLaEEBVp7edxDudsVaLd/QPlng/0OPYLlZOs4XtVpvWXZEA515BeLTIcN+Afuege1
	1bTNSCdbezDLrCD2vwrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Yhr-009Rzu-3C;
	Fri, 10 Nov 2023 21:06:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Yho-009Ry9-2L
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Nov 2023 21:06:22 +0000
Received: from hamburger.collabora.co.uk (hamburger.collabora.co.uk [IPv6:2a01:4f8:1c1c:f269::1])
	by madras.collabora.co.uk (Postfix) with ESMTP id F295666073EF;
	Fri, 10 Nov 2023 21:06:15 +0000 (GMT)
From: "Daniel Almeida" <daniel.almeida@collabora.com>
In-Reply-To: <20231109201640.340556-1-paul.kocialkowski@bootlin.com>
X-Forward: 127.0.0.1
Date: Fri, 10 Nov 2023 21:06:15 +0000
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>, "Philipp Zabel" <p.zabel@pengutronix.de>, "Mauro Carvalho Chehab" <mchehab@kernel.org>, "Hans Verkuil" <hverkuil-cisco@xs4all.nl>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Nicolas Dufresne" <nicolas.dufresne@collabora.com>, "Sebastian Fricke" <sebastian.fricke@collabora.com>, "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>
To: "Paul Kocialkowski" <paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Message-ID: <667d-654e9b80-1-40e97880@22375103>
Subject: =?utf-8?q?Re=3A?= [PATCH 1/4] =?utf-8?q?media=3A?==?utf-8?q?_vicodec=3A?= 
 Disable =?utf-8?q?(TRY=5F)DECODER=5FCMD?= for the stateless case
User-Agent: SOGoMail 5.8.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130620_912722_411EDF84 
X-CRM114-Status: GOOD (  19.21  )
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

On Thursday, November 09, 2023 17:16 -03, Paul Kocialkowski <paul.kocialkowski@bootlin.com> wrote:

> The (TRY_)DECODER_CMD ioctls are only useful for stateful decoders and for
> stateless decoders that support holding capture buffers (which is not the case
> for this driver).
> 
> Disable them when registering the stateless decoder.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/test-drivers/vicodec/vicodec-core.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/test-drivers/vicodec/vicodec-core.c b/drivers/media/test-drivers/vicodec/vicodec-core.c
> index 6f0e20df74e9..8f7a2b153ee9 100644
> --- a/drivers/media/test-drivers/vicodec/vicodec-core.c
> +++ b/drivers/media/test-drivers/vicodec/vicodec-core.c
> @@ -1240,6 +1240,12 @@ static int vicodec_decoder_cmd(struct file *file, void *fh,
>  	struct vicodec_ctx *ctx = file2ctx(file);
>  	int ret;
>  
> +	/*
> +	 * This ioctl should not be used with a stateless codec that doesn't
> +	 * support holding buffers and the associated flush command.
> +	 */
> +	WARN_ON(ctx->is_stateless);
> +
>  	ret = v4l2_m2m_ioctl_try_decoder_cmd(file, fh, dc);
>  	if (ret < 0)
>  		return ret;
> @@ -2025,7 +2031,7 @@ static const struct v4l2_m2m_ops m2m_ops = {
>  
>  static int register_instance(struct vicodec_dev *dev,
>  			     struct vicodec_dev_instance *dev_instance,
> -			     const char *name, bool is_enc)
> +			     const char *name, bool is_enc, bool is_stateless)
>  {
>  	struct video_device *vfd;
>  	int ret;
> @@ -2045,10 +2051,11 @@ static int register_instance(struct vicodec_dev *dev,
>  	strscpy(vfd->name, name, sizeof(vfd->name));
>  	vfd->device_caps = V4L2_CAP_STREAMING |
>  		(multiplanar ? V4L2_CAP_VIDEO_M2M_MPLANE : V4L2_CAP_VIDEO_M2M);
> -	if (is_enc) {
> +	if (is_enc || is_stateless) {
>  		v4l2_disable_ioctl(vfd, VIDIOC_DECODER_CMD);
>  		v4l2_disable_ioctl(vfd, VIDIOC_TRY_DECODER_CMD);
> -	} else {
> +	}
> +	if (!is_enc) {
>  		v4l2_disable_ioctl(vfd, VIDIOC_ENCODER_CMD);
>  		v4l2_disable_ioctl(vfd, VIDIOC_TRY_ENCODER_CMD);
>  	}
> @@ -2107,17 +2114,17 @@ static int vicodec_probe(struct platform_device *pdev)
>  	platform_set_drvdata(pdev, dev);
>  
>  	ret = register_instance(dev, &dev->stateful_enc, "stateful-encoder",
> -				true);
> +				true, false);
>  	if (ret)
>  		goto unreg_dev;
>  
>  	ret = register_instance(dev, &dev->stateful_dec, "stateful-decoder",
> -				false);
> +				false, false);
>  	if (ret)
>  		goto unreg_sf_enc;
>  
>  	ret = register_instance(dev, &dev->stateless_dec, "stateless-decoder",
> -				false);
> +				false, true);
>  	if (ret)
>  		goto unreg_sf_dec;
>  
> -- 
> 2.42.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
