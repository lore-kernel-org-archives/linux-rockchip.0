Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A55AC3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 09:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AU7PjauU58SadkrDTYKHhTQmAKksyZgsvwlpiwsShuA=; b=vaqkIidnbNmWtxlED4Ai4N4exW
	G5KPUbVmE+HEonXczM5vCBh2IHY/iOkoojuYNRzTJBzkpIqK2EnzPu/3POjVo+Uu1T+R+b97itS3x
	VF0peTYpfTqfAqt4QIoKQaFNN7Sm4Exj27xKsx/gHOc/1n3UQFRcdFUWBxyPLapPfscshG9jG3ZtP
	Qh7KIgQK+ZxOU4Bu51zbl8Naye5xBdae3hlMlSJRftnF9Nf2CP2qsPrNXGf1ACWHq3JiJIRtWlJET
	unRTsdxU5kAm4z94GR16esg6zjktf+RsZOY9f93IJ5dI1CnmdUfIsrvS4PYYsbr1g+UbP/Y01WaSZ
	71fp5OYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWC93-0000000C4T6-1EjD;
	Tue, 23 Jul 2024 09:49:21 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWC8y-0000000C4SR-3Tjv
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jul 2024 09:49:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721728155;
	bh=LBspR0RbbvdyB9NgEAS7Jm6rYf6aPZu2TWqo0xRIwac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FhYSjz1SVPnHMkaNadaN/f0VP8GyKwI9mdowhp7isv5O9yewojPP23aVbCtzT7bRv
	 edhWFV79GnbgMx95dOzgsyuAQN73hMbKItTzYKmN+ShHWM7HLjCmjMJ07Yf0u/Akle
	 nKifgbASm1JesU0OKYDx6rIyQ//OwDQeIYqVpZliJUDPbYtcs+DucbbJzHQY+boEKO
	 MQp7bHcg59oJwivAyYBsnmNhGvLOI2710jaJ8ly62Cty6mWza+1wt56+EQHeK0FPuu
	 m5iOTfwygm1AAYjhFdGeuiSLPwxhEjLNx5uNWvu1+WRYpSVIqkjdntfdY6ZXZrXucE
	 jdWKOI3IrUnyA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E7A153781167;
	Tue, 23 Jul 2024 09:49:14 +0000 (UTC)
Date: Tue, 23 Jul 2024 11:49:13 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v5 2/3] media: test-drivers: Use V4L2_FMT_FLAG_ENUM_ALL
 flag
Message-ID: <20240723094913.4zuywzqsthvkowlv@basti-XPS-13-9310>
References: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
 <20240722150523.149667-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240722150523.149667-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_024917_048917_7ACAB851 
X-CRM114-Status: GOOD (  14.01  )
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

Hey Benjamin,

On 22.07.2024 17:05, Benjamin Gaignard wrote:
>Since V4L2_FMT_FLAG_ENUM_ALL flag mostly targeting stateless

s/Since/Since the/
s/targeting/targets/

>decoder pixel formats enumeration, update vicodec visl test

s/pixel formats/pixel-format/

>drivers to use it.

s/drivers/driver/

The rest below basically just strips the flag from every use-case of the
index, before using it.

I wonder couldn't we implement a macro for this, as I believe this will
have to be done in a lot of places, something like:

/*
  * Drivers can support an enumeration of all formats, by ORing the
  * V4L2_FMT_FLAG_ENUM_ALL flag into the index field.
  * In order to use the index field, strip the flag first.
  *
  * See vidioc-enum-fmt.rst documentation for more details.
  */
#define STRIP_ENUM_ALL_FLAG(index) \
   index & ~V4L2_FMT_FLAG_ENUM_ALL

And then use it like this:

u32 index = STRIP_ENUM_ALL_FLAG(f->index);

If we define this in a common header, then every driver can easily
utilize it and you have built-in documentation.

What do you think?

Regards,
Sebastian

>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
> drivers/media/test-drivers/vicodec/vicodec-core.c |  7 ++++---
> drivers/media/test-drivers/visl/visl-video.c      | 11 +++++++----
> 2 files changed, 11 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/media/test-drivers/vicodec/vicodec-core.c b/drivers/media/test-drivers/vicodec/vicodec-core.c
>index 3e011fe62ae1..1b4cd8ddd7c2 100644
>--- a/drivers/media/test-drivers/vicodec/vicodec-core.c
>+++ b/drivers/media/test-drivers/vicodec/vicodec-core.c
>@@ -706,6 +706,7 @@ static int enum_fmt(struct v4l2_fmtdesc *f, struct vicodec_ctx *ctx,
> 		    bool is_out)
> {
> 	bool is_uncomp = (ctx->is_enc && is_out) || (!ctx->is_enc && !is_out);
>+	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;
>
> 	if (V4L2_TYPE_IS_MULTIPLANAR(f->type) && !multiplanar)
> 		return -EINVAL;
>@@ -718,18 +719,18 @@ static int enum_fmt(struct v4l2_fmtdesc *f, struct vicodec_ctx *ctx,
>
> 		if (ctx->is_enc ||
> 		    !vb2_is_streaming(&ctx->fh.m2m_ctx->cap_q_ctx.q))
>-			info = v4l2_fwht_get_pixfmt(f->index);
>+			info = v4l2_fwht_get_pixfmt(index);
> 		else
> 			info = v4l2_fwht_find_nth_fmt(info->width_div,
> 						     info->height_div,
> 						     info->components_num,
> 						     info->pixenc,
>-						     f->index);
>+						     index);
> 		if (!info)
> 			return -EINVAL;
> 		f->pixelformat = info->id;
> 	} else {
>-		if (f->index)
>+		if (index)
> 			return -EINVAL;
> 		f->pixelformat = ctx->is_stateless ?
> 			V4L2_PIX_FMT_FWHT_STATELESS : V4L2_PIX_FMT_FWHT;
>diff --git a/drivers/media/test-drivers/visl/visl-video.c b/drivers/media/test-drivers/visl/visl-video.c
>index f8d970319764..c5f3e13b4198 100644
>--- a/drivers/media/test-drivers/visl/visl-video.c
>+++ b/drivers/media/test-drivers/visl/visl-video.c
>@@ -341,21 +341,24 @@ static int visl_enum_fmt_vid_cap(struct file *file, void *priv,
> 				 struct v4l2_fmtdesc *f)
> {
> 	struct visl_ctx *ctx = visl_file_to_ctx(file);
>+	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;
>
>-	if (f->index >= ctx->coded_format_desc->num_decoded_fmts)
>+	if (index >= ctx->coded_format_desc->num_decoded_fmts)
> 		return -EINVAL;
>
>-	f->pixelformat = ctx->coded_format_desc->decoded_fmts[f->index];
>+	f->pixelformat = ctx->coded_format_desc->decoded_fmts[index];
> 	return 0;
> }
>
> static int visl_enum_fmt_vid_out(struct file *file, void *priv,
> 				 struct v4l2_fmtdesc *f)
> {
>-	if (f->index >= ARRAY_SIZE(visl_coded_fmts))
>+	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;
>+
>+	if (index >= ARRAY_SIZE(visl_coded_fmts))
> 		return -EINVAL;
>
>-	f->pixelformat = visl_coded_fmts[f->index].pixelformat;
>+	f->pixelformat = visl_coded_fmts[index].pixelformat;
> 	return 0;
> }
>
>-- 
>2.43.0
>
>_______________________________________________
>Kernel mailing list -- kernel@mailman.collabora.com
>To unsubscribe send an email to kernel-leave@mailman.collabora.com
>This list is managed by https://mailman.collabora.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
