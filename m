Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8060CC6FA8F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Aug 2023 13:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrxGVCG1jmcwLdIyyQOUrQQxFOWTtbQ1X6fKBNmSWkY=; b=fOGeRCh1EXTd/H
	EawIFgq7SQ/vLaJfUFIrjvccWWcnjNOn5MovasPH4T2gZyZyuiCrj4kZoM5yVtGDe5mkEdcoinSzs
	ZE70GTdZwpUoowlybnseAMRmv+5pF1abBPyN+5OdJuIbM2M9a4jYNAjy5A/hSorAVrwOvjJ0aNzG1
	o66FWTcXqmKFrdaGudOWdT+aELP3P32kWB+1WSn9dzYFFzhSiiKYZ+p33itb0fekEDlOdPeSQvLLL
	cHnXkTx76sPCdwM4aO+O2wvHoh3+/p6HwH+AlJqXvZS76CwRc2Rssm9XdHEp0Bfn8WeO7w/WVQ1Ew
	4vs49cjnVk40GIhO43lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLda-00Dco0-04;
	Wed, 30 Aug 2023 13:53:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLdW-00DcmX-2j;
	Wed, 30 Aug 2023 13:53:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2FA0B602F8;
	Wed, 30 Aug 2023 13:53:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74B49C433C8;
	Wed, 30 Aug 2023 13:53:30 +0000 (UTC)
Message-ID: <8ee883bf-f8f8-29cb-c034-13bd142fe9f8@xs4all.nl>
Date: Wed, 30 Aug 2023 15:53:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5 10/10] media: v4l2: Add mem2mem helpers for DELETE_BUFS
 ioctl
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230824092133.39510-1-benjamin.gaignard@collabora.com>
 <20230824092133.39510-11-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230824092133.39510-11-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_065334_969355_F3EEF2A2 
X-CRM114-Status: GOOD (  19.06  )
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

On 24/08/2023 11:21, Benjamin Gaignard wrote:
> Create v4l2-mem2mem helpers for VIDIOC_DELETE_BUFS ioctl.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../media/platform/verisilicon/hantro_v4l2.c  |  1 +
>  drivers/media/test-drivers/vim2m.c            |  1 +
>  drivers/media/v4l2-core/v4l2-mem2mem.c        | 20 +++++++++++++++++++
>  include/media/v4l2-mem2mem.h                  | 12 +++++++++++
>  4 files changed, 34 insertions(+)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index 27a1e77cca38..0fd1c2fc78c8 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -756,6 +756,7 @@ const struct v4l2_ioctl_ops hantro_ioctl_ops = {
>  	.vidioc_dqbuf = v4l2_m2m_ioctl_dqbuf,
>  	.vidioc_prepare_buf = v4l2_m2m_ioctl_prepare_buf,
>  	.vidioc_create_bufs = v4l2_m2m_ioctl_create_bufs,
> +	.vidioc_delete_bufs = v4l2_m2m_ioctl_delete_bufs,
>  	.vidioc_expbuf = v4l2_m2m_ioctl_expbuf,
>  
>  	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,
> diff --git a/drivers/media/test-drivers/vim2m.c b/drivers/media/test-drivers/vim2m.c
> index 3e3b424b4860..3014b8ee13d0 100644
> --- a/drivers/media/test-drivers/vim2m.c
> +++ b/drivers/media/test-drivers/vim2m.c
> @@ -960,6 +960,7 @@ static const struct v4l2_ioctl_ops vim2m_ioctl_ops = {
>  	.vidioc_dqbuf		= v4l2_m2m_ioctl_dqbuf,
>  	.vidioc_prepare_buf	= v4l2_m2m_ioctl_prepare_buf,
>  	.vidioc_create_bufs	= v4l2_m2m_ioctl_create_bufs,
> +	.vidioc_delete_buf	= v4l2_m2m_ioctl_delete_buf,

I suspect you didn't enable vim2m in your kernel config, since this
should be:

	.vidioc_delete_bufs = v4l2_m2m_ioctl_delete_bufs,

>  	.vidioc_expbuf		= v4l2_m2m_ioctl_expbuf,
>  
>  	.vidioc_streamon	= v4l2_m2m_ioctl_streamon,
> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
> index 0cc30397fbad..d1d59943680f 100644
> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> @@ -831,6 +831,17 @@ int v4l2_m2m_prepare_buf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  }
>  EXPORT_SYMBOL_GPL(v4l2_m2m_prepare_buf);
>  
> +int v4l2_m2m_delete_bufs(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
> +			 struct v4l2_delete_buffers *d)
> +{
> +	struct vb2_queue *vq;
> +
> +	vq = v4l2_m2m_get_vq(m2m_ctx, d->type);
> +
> +	return vb2_delete_bufs(vq, d);
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_delete_bufs);
> +
>  int v4l2_m2m_create_bufs(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  			 struct v4l2_create_buffers *create)
>  {
> @@ -1377,6 +1388,15 @@ int v4l2_m2m_ioctl_create_bufs(struct file *file, void *priv,
>  }
>  EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_create_bufs);
>  
> +int v4l2_m2m_ioctl_delete_bufs(struct file *file, void *priv,
> +			       struct v4l2_delete_buffers *d)
> +{
> +	struct v4l2_fh *fh = file->private_data;
> +
> +	return v4l2_m2m_delete_bufs(file, fh->m2m_ctx, d);
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_delete_bufs);
> +
>  int v4l2_m2m_ioctl_querybuf(struct file *file, void *priv,
>  				struct v4l2_buffer *buf)
>  {
> diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> index d6c8eb2b5201..161f85c42dc8 100644
> --- a/include/media/v4l2-mem2mem.h
> +++ b/include/media/v4l2-mem2mem.h
> @@ -381,6 +381,16 @@ int v4l2_m2m_dqbuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  int v4l2_m2m_prepare_buf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  			 struct v4l2_buffer *buf);
>  
> +/**
> + * v4l2_m2m_delete_bufs() - delete buffers from the queue
> + *
> + * @file: pointer to struct &file
> + * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
> + * @d: pointer to struct &v4l2_delete_buffers
> + */
> +int v4l2_m2m_delete_bufs(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
> +			 struct v4l2_delete_buffers *d);
> +
>  /**
>   * v4l2_m2m_create_bufs() - create a source or destination buffer, depending
>   * on the type
> @@ -860,6 +870,8 @@ int v4l2_m2m_ioctl_reqbufs(struct file *file, void *priv,
>  				struct v4l2_requestbuffers *rb);
>  int v4l2_m2m_ioctl_create_bufs(struct file *file, void *fh,
>  				struct v4l2_create_buffers *create);
> +int v4l2_m2m_ioctl_delete_bufs(struct file *file, void *priv,
> +			       struct v4l2_delete_buffers *d);
>  int v4l2_m2m_ioctl_querybuf(struct file *file, void *fh,
>  				struct v4l2_buffer *buf);
>  int v4l2_m2m_ioctl_expbuf(struct file *file, void *fh,

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
