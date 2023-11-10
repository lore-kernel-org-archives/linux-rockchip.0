Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4477BC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 21:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:In-Reply-To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=AeeiH4SOvnL5KAwzDEcdUqMAzl5Ykr1XC8T73pzu6QM=; b=nTDE/MrMnrREjO
	WqDlgi5eEVQ549MHuQaf66pQqMFWwR6Ts5VXD9KFJOVLCSSVM+ad9doKvryU9wb4Lz1r9oxilGpyM
	3x0NrVCA0XYn/Xk9xqWaJyoTLOoOhTY7DTMGLPaYkohPfMAOSTfwVh+yHU6XvSkSkyhFjck2TivXn
	fWzZL3JY22/ASgegWVkuyJ3uXAxgPBckv308KS3kAkmhCFRNsZREEBJt/5IdbuZSARoL3OcMI6Em7
	qTGwF3NLW1pnAJ3WRKACBCG4eCSEbGeLX0wfhBvVpD23vQpzFfUNTD/cuZUh3lcwRlmmm1h3WcdwJ
	i8e89FVLlMJySu2Bs9Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1YjH-009SEP-2t;
	Fri, 10 Nov 2023 21:07:51 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1YjF-009SDp-1h
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Nov 2023 21:07:51 +0000
Received: from hamburger.collabora.co.uk (hamburger.collabora.co.uk [IPv6:2a01:4f8:1c1c:f269::1])
	by madras.collabora.co.uk (Postfix) with ESMTP id 44D0F66073EF;
	Fri, 10 Nov 2023 21:07:47 +0000 (GMT)
From: "Daniel Almeida" <daniel.almeida@collabora.com>
In-Reply-To: <20231109201640.340556-3-paul.kocialkowski@bootlin.com>
X-Forward: 127.0.0.1
Date: Fri, 10 Nov 2023 21:07:46 +0000
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>, "Philipp Zabel" <p.zabel@pengutronix.de>, "Mauro Carvalho Chehab" <mchehab@kernel.org>, "Hans Verkuil" <hverkuil-cisco@xs4all.nl>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Nicolas Dufresne" <nicolas.dufresne@collabora.com>, "Sebastian Fricke" <sebastian.fricke@collabora.com>, "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>
To: "Paul Kocialkowski" <paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Message-ID: <530d-654e9b80-9-557cd880@203483206>
Subject: =?utf-8?q?Re=3A?= [PATCH 3/4] =?utf-8?q?media=3A?=
 =?utf-8?q?_verisilicon=3A?= Hook the =?utf-8?q?(TRY=5F)DECODER=5FCMD?= 
 stateless ioctls
User-Agent: SOGoMail 5.8.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130749_697915_162AB89A 
X-CRM114-Status: GOOD (  14.92  )
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

On Thursday, November 09, 2023 17:16 -03, Paul Kocialkowski <paul.kocialkowski@bootlin.com> wrote:

> The (TRY_)DECODER_CMD ioctls are used to support flushing when holding capture
> buffers is supported. This is the case of this driver but the ioctls were never
> hooked to the ioctl ops.
> 
> Add them to correctly support flushing.
> 
> Fixes: 340ce50f75a6 ("media: hantro: Enable HOLD_CAPTURE_BUF for H.264")
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/media/platform/verisilicon/hantro_drv.c  | 2 ++
>  drivers/media/platform/verisilicon/hantro_v4l2.c | 3 +++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index a9fa05ac56a9..3a2a0f28cbfe 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -905,6 +905,8 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
>  
>  	if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
>  		vpu->encoder = func;
> +		v4l2_disable_ioctl(vfd, VIDIOC_TRY_DECODER_CMD);
> +		v4l2_disable_ioctl(vfd, VIDIOC_DECODER_CMD);
>  	} else {
>  		vpu->decoder = func;
>  		v4l2_disable_ioctl(vfd, VIDIOC_TRY_ENCODER_CMD);
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index b3ae037a50f6..db145519fc5d 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -785,6 +785,9 @@ const struct v4l2_ioctl_ops hantro_ioctl_ops = {
>  	.vidioc_g_selection = vidioc_g_selection,
>  	.vidioc_s_selection = vidioc_s_selection,
>  
> +	.vidioc_decoder_cmd = v4l2_m2m_ioctl_stateless_decoder_cmd,
> +	.vidioc_try_decoder_cmd = v4l2_m2m_ioctl_stateless_try_decoder_cmd,
> +
>  	.vidioc_try_encoder_cmd = v4l2_m2m_ioctl_try_encoder_cmd,
>  	.vidioc_encoder_cmd = vidioc_encoder_cmd,
>  };
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
