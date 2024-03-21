Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01BCDC54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 14:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TQjHlIdgksMlpe9WJhBKjkD8mM0R3tqDZE2tpvPQqY=; b=TiCSISJLXYbWpM
	Ez74DvDVP3CT2NTVKHsqqcMyHurmZjr5qZ2LZVypxUqXSHDk5xxE8QCKIAnOOrbhdWfdwmIu5WCPk
	t8de6rOiP5eLkjejbS2pM7AFxHpOn1PXPhzsjw7R3jFI6XXAZ0jDdQ9cn+pClhdH/YkBVEvreIHK6
	q/Q27o96C3PLnHUI0+eR6OqITEktXhD+SX5EFl8I2sDyFqFAmZARBxEp5NwSqM30MtEEljWGOMqYO
	vAsExnO0t2WVxzqETzPLARFMn7nzPZQTyhVtGj9pEyVwzrvK3iI9tTaQl8xztzjDoF/lybFinnj0r
	1uKfltQpXddpROH4SNqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJD1-00000003EPO-1EPh;
	Thu, 21 Mar 2024 14:15:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJCy-00000003EOv-0Gs7
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 14:15:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 09424611A9;
	Thu, 21 Mar 2024 14:15:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A446C433F1;
	Thu, 21 Mar 2024 14:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711030550;
	bh=L3lq+ETcf12qcpdKNu6RlHZekLNVMxMcPuLI5QDjXpY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=W9LSOP0fxK6fVeoW1AQdVTEDyXQupwYUXQdlY6cKjI9o2JSNYNufTw67NgTY+W4vv
	 riOZwrCUanyvg7+1DFFouMwu6RTtf5YBfjpzeK/zmOGJ/TZMxuk64iSWz1ELHkP7UA
	 d2fpxTSCVLBJPzptWu5fA+9NF7BcLvaWBmJa0BVDRthC3juUMXXydhT8FRfBWwc1PA
	 LjfNxatT0HLUo6g0vF4zJZPLZqi4vfwV0rqK+sdhFGGu1mnPsWrpdDOT6aB3tfXeyN
	 wYB579kVGD1Pbe3cqr0miJrFl31Vf5Ju27GATEZsaIkOwvu7Sp9AaSpYiqQiyQKHKm
	 slWQSNTho/0CQ==
Date: Thu, 21 Mar 2024 15:15:45 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: tfiga@chromium.org, m.szyprowski@samsung.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, nicolas@ndufresne.ca,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v21 8/9] media: v4l2: Add mem2mem helpers for
 REMOVE_BUFS ioctl
Message-ID: <20240321151545.0e293d3e@coco.lan>
In-Reply-To: <20240314153226.197445-9-benjamin.gaignard@collabora.com>
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
	<20240314153226.197445-9-benjamin.gaignard@collabora.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_071552_230272_1D48BBDB 
X-CRM114-Status: GOOD (  17.67  )
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

Em Thu, 14 Mar 2024 16:32:25 +0100
Benjamin Gaignard <benjamin.gaignard@collabora.com> escreveu:

> Create v4l2-mem2mem helpers for VIDIOC_REMOVE_BUFS ioctl and
> make test drivers use it.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
> changes in version 21:
> - In v4l2_m2m_ioctl_remove_bufs() check if the queue exists and
>   if it type macth request type.
> - Do not set vidioc_remove_bufs for vim2m driver.
> 
>  drivers/media/test-drivers/vicodec/vicodec-core.c |  1 +
>  drivers/media/test-drivers/vimc/vimc-capture.c    |  1 +
>  drivers/media/test-drivers/visl/visl-video.c      |  1 +
>  drivers/media/test-drivers/vivid/vivid-core.c     |  1 +
>  drivers/media/v4l2-core/v4l2-mem2mem.c            | 15 +++++++++++++++
>  include/media/v4l2-mem2mem.h                      |  2 ++
>  6 files changed, 21 insertions(+)
> 
> diff --git a/drivers/media/test-drivers/vicodec/vicodec-core.c b/drivers/media/test-drivers/vicodec/vicodec-core.c
> index e13f5452b927..3e011fe62ae1 100644
> --- a/drivers/media/test-drivers/vicodec/vicodec-core.c
> +++ b/drivers/media/test-drivers/vicodec/vicodec-core.c
> @@ -1345,6 +1345,7 @@ static const struct v4l2_ioctl_ops vicodec_ioctl_ops = {
>  	.vidioc_prepare_buf	= v4l2_m2m_ioctl_prepare_buf,
>  	.vidioc_create_bufs	= v4l2_m2m_ioctl_create_bufs,
>  	.vidioc_expbuf		= v4l2_m2m_ioctl_expbuf,
> +	.vidioc_remove_bufs	= v4l2_m2m_ioctl_remove_bufs,
>  
>  	.vidioc_streamon	= v4l2_m2m_ioctl_streamon,
>  	.vidioc_streamoff	= v4l2_m2m_ioctl_streamoff,
> diff --git a/drivers/media/test-drivers/vimc/vimc-capture.c b/drivers/media/test-drivers/vimc/vimc-capture.c
> index 97693561f1e4..ba7550b8ba7e 100644
> --- a/drivers/media/test-drivers/vimc/vimc-capture.c
> +++ b/drivers/media/test-drivers/vimc/vimc-capture.c
> @@ -221,6 +221,7 @@ static const struct v4l2_ioctl_ops vimc_capture_ioctl_ops = {
>  	.vidioc_expbuf = vb2_ioctl_expbuf,
>  	.vidioc_streamon = vb2_ioctl_streamon,
>  	.vidioc_streamoff = vb2_ioctl_streamoff,
> +	.vidioc_remove_bufs = vb2_ioctl_remove_bufs,
>  };
>  
>  static void vimc_capture_return_all_buffers(struct vimc_capture_device *vcapture,
> diff --git a/drivers/media/test-drivers/visl/visl-video.c b/drivers/media/test-drivers/visl/visl-video.c
> index b9a4b44bd0ed..f8d970319764 100644
> --- a/drivers/media/test-drivers/visl/visl-video.c
> +++ b/drivers/media/test-drivers/visl/visl-video.c
> @@ -539,6 +539,7 @@ const struct v4l2_ioctl_ops visl_ioctl_ops = {
>  	.vidioc_prepare_buf		= v4l2_m2m_ioctl_prepare_buf,
>  	.vidioc_create_bufs		= v4l2_m2m_ioctl_create_bufs,
>  	.vidioc_expbuf			= v4l2_m2m_ioctl_expbuf,
> +	.vidioc_remove_bufs		= v4l2_m2m_ioctl_remove_bufs,
>  
>  	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
>  	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
> diff --git a/drivers/media/test-drivers/vivid/vivid-core.c b/drivers/media/test-drivers/vivid/vivid-core.c
> index 11b8520d9f57..771392f67dda 100644
> --- a/drivers/media/test-drivers/vivid/vivid-core.c
> +++ b/drivers/media/test-drivers/vivid/vivid-core.c
> @@ -769,6 +769,7 @@ static const struct v4l2_ioctl_ops vivid_ioctl_ops = {
>  	.vidioc_expbuf			= vb2_ioctl_expbuf,
>  	.vidioc_streamon		= vb2_ioctl_streamon,
>  	.vidioc_streamoff		= vb2_ioctl_streamoff,
> +	.vidioc_remove_bufs		= vb2_ioctl_remove_bufs,
>  
>  	.vidioc_enum_input		= vivid_enum_input,
>  	.vidioc_g_input			= vivid_g_input,
> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
> index 75517134a5e9..eb22d6172462 100644
> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> @@ -1386,6 +1386,21 @@ int v4l2_m2m_ioctl_create_bufs(struct file *file, void *priv,
>  }
>  EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_create_bufs);
>  
> +int v4l2_m2m_ioctl_remove_bufs(struct file *file, void *priv,
> +			       struct v4l2_remove_buffers *remove)
> +{
> +	struct v4l2_fh *fh = file->private_data;
> +	struct vb2_queue *q = v4l2_m2m_get_vq(fh->m2m_ctx, remove->type);
> +
> +	if (!q)
> +		return -EINVAL;
> +	if (q->type != remove->type)
> +		return -EINVAL;
> +
> +	return vb2_core_remove_bufs(q, remove->index, remove->count);
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_remove_bufs);
> +
>  int v4l2_m2m_ioctl_querybuf(struct file *file, void *priv,
>  				struct v4l2_buffer *buf)
>  {
> diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> index 7f1af1f7f912..0af330cf91c3 100644
> --- a/include/media/v4l2-mem2mem.h
> +++ b/include/media/v4l2-mem2mem.h
> @@ -867,6 +867,8 @@ int v4l2_m2m_ioctl_reqbufs(struct file *file, void *priv,
>  				struct v4l2_requestbuffers *rb);
>  int v4l2_m2m_ioctl_create_bufs(struct file *file, void *fh,
>  				struct v4l2_create_buffers *create);
> +int v4l2_m2m_ioctl_remove_bufs(struct file *file, void *priv,
> +			       struct v4l2_remove_buffers *d);
>  int v4l2_m2m_ioctl_querybuf(struct file *file, void *fh,
>  				struct v4l2_buffer *buf);
>  int v4l2_m2m_ioctl_expbuf(struct file *file, void *fh,



Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
