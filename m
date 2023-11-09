Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97716C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XegPU8wi3tctK0r+uylmWYliSUDd0kZf0lvsw+iVrMM=; b=xwipfG3Asws588
	95VlN7c3q/b9TaBHrJoZ3AqdgDumf7qOB1Kjtw3m2uHq9y+W6Nk0LpalCjJ4+kNBnjva1/vF6f4u8
	3RvxzAS5kDsiKaYUPSlsAQKktzorJB+uyd5U04Nt5jT//l+Vi54QbvNtBR0wM0gIUHVtMf3gQfFYf
	12R4FSvyDR+JQCvGbk3YLLAxaP7M6Xn/5MelP62fi2/diudwd3HIUk6WCTQmNnfsifb25HENNinAJ
	VyQDcFOEqMIi8zSw+jrynQsQhPoY0aknCSnSAsV+ZxvLkqpKX6JfYIJ8nzEHATA//sc6xb7bgQKrN
	pbwLXFbsw5xsuYAo67Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11ZJ-005oQ9-0e;
	Thu, 09 Nov 2023 09:43:21 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11ZE-005oNg-2X
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 09:43:19 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-27ff7fe7fbcso601091a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Nov 2023 01:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699522995; x=1700127795; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jCWyDTFOKGrYpot7V/hX2yRpK+Z5vWvoNFrsFbdVsv0=;
        b=k4F1IMdHiEM01M72lGa9kjRq1/BELOFl3T1Jn+dNpvIkiMqazDs07wTloot88CI468
         I2vP1RMu5StFxcTvAi6T9wt1x/szrTQXSajhkUE/rhMUNrfBP1hob2hNJtf0W4ld1d7V
         B6IJevnkE5bfQwjIYzqCoIh8nLuBpyUInREu0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699522995; x=1700127795;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jCWyDTFOKGrYpot7V/hX2yRpK+Z5vWvoNFrsFbdVsv0=;
        b=tQuWeBi6qQW9pFCJM3EuWTGxnji7doxDOB2B2m/vc5mcKHLL2lYtYj9qmfPjKk94p/
         XoFT8xRRiWcj3SPsifLB1wUL8UqoUX3krMPDe4g1qMGPBMfBefjCQvooVEaen96D13yB
         ClJy9HUaVPW0J06uZ6eEetUJ1+sOp54RGHuSekqdDl5cqWgugnORbSALmd6OdNYoRYkz
         28UIFQPiFjce5gzjf2VptgE035YTINL9fSvknGczpcqTOxhqYhIDIAPZd688Qn06/05F
         n7pyPNLFtWXAtcSu63bocv6bY26r/Ek/WkFVK1S+N4NZY7yAexs5K0hHZtqQFAY6Yd2w
         uTfQ==
X-Gm-Message-State: AOJu0YyTETRACWqZDrhKOdWxvUgDt6cWuH2uVMrgiRXREDFmwf1EFx/f
	Y6mJot62pB6V/EAT1M4kVBop7Q==
X-Google-Smtp-Source: AGHT+IHYEn5vCWOVKWVvobQ08zsd30PXF4KGgrclxpMN4A+BTWHHxdRtGwc4VhxQDlQqRAmCiOe3vQ==
X-Received: by 2002:a17:90b:4b4f:b0:280:a27d:e897 with SMTP id mi15-20020a17090b4b4f00b00280a27de897mr1185437pjb.8.1699522995680;
        Thu, 09 Nov 2023 01:43:15 -0800 (PST)
Received: from chromium.org (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id 21-20020a17090a01d500b0027d0adf653bsm986244pjd.7.2023.11.09.01.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 01:43:15 -0800 (PST)
Date: Thu, 9 Nov 2023 09:43:11 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	kernel@collabora.com
Subject: Re: [PATCH v14 56/56] media: test-drivers: Use helper for
 DELETE_BUFS ioctl
Message-ID: <20231109094311.yzmmn4vvskmrk4tk@chromium.org>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-57-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231031163104.112469-57-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_014316_850263_983F4058 
X-CRM114-Status: GOOD (  14.05  )
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

On Tue, Oct 31, 2023 at 05:31:04PM +0100, Benjamin Gaignard wrote:
> Allow test drivers to use DELETE_BUFS by adding vb2_ioctl_delete_bufs() helper.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/test-drivers/vicodec/vicodec-core.c |  2 ++
>  drivers/media/test-drivers/vimc/vimc-capture.c    |  2 ++
>  drivers/media/test-drivers/visl/visl-video.c      |  2 ++
>  drivers/media/test-drivers/vivid/vivid-core.c     | 13 ++++++++++---
>  4 files changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/test-drivers/vicodec/vicodec-core.c b/drivers/media/test-drivers/vicodec/vicodec-core.c
> index 69cbe2c094e1..f14a8fd506d0 100644
> --- a/drivers/media/test-drivers/vicodec/vicodec-core.c
> +++ b/drivers/media/test-drivers/vicodec/vicodec-core.c
> @@ -1339,6 +1339,7 @@ static const struct v4l2_ioctl_ops vicodec_ioctl_ops = {
>  	.vidioc_prepare_buf	= v4l2_m2m_ioctl_prepare_buf,
>  	.vidioc_create_bufs	= v4l2_m2m_ioctl_create_bufs,
>  	.vidioc_expbuf		= v4l2_m2m_ioctl_expbuf,
> +	.vidioc_delete_bufs	= v4l2_m2m_ioctl_delete_bufs,
>  
>  	.vidioc_streamon	= v4l2_m2m_ioctl_streamon,
>  	.vidioc_streamoff	= v4l2_m2m_ioctl_streamoff,
> @@ -1725,6 +1726,7 @@ static int queue_init(void *priv, struct vb2_queue *src_vq,
>  	dst_vq->mem_ops = &vb2_vmalloc_memops;
>  	dst_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
>  	dst_vq->lock = src_vq->lock;
> +	dst_vq->supports_delete_bufs = true;

Since we have to explicitly provide the vidioc_delete_bufs callback anyway,
is there any value in having a separate supports_delete_bufs flag? Or we
envision that some drivers would support deleting buffers only for some
queues?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
