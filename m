Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54291C3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 10:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MHb4BEpJrPO6IPcBbax6KKtAAMx9Dxuhk2yIrD8/QCk=; b=1Oqfst15pHhY/RUuWC9Lojixs+
	x6JHhnhvyqF/iSm+CiVUapIFWiHQ7Uo8rA5pnHr2B3CfIiDTCG1nIY0G/lYWjTVMeDM/8Eicckv95
	xPhvxACa/I30Oo7Yxem9/66VXCvsEWo+Jh2eH5xCfEUVkqkpSTB3V41jH7maCjrseh7amsWPntaNq
	avBTCoGW10/uXt7ZSMs2UMpMheVj6W8wwsin+HjO49Cuu2aly2xEtgIAXs7sfm4k4okVAQcUgEi6B
	SpGGYHwP8q8t/+9li2bVh7aCoWWusUPkbJIEHVXeHf0nZGfcHmasnLqq5xJYryAgNB9BqblaRyqKl
	t6p37UOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWCMv-0000000C6hP-0q6Z;
	Tue, 23 Jul 2024 10:03:41 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWCMr-0000000C6es-3gUr
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jul 2024 10:03:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721729014;
	bh=nStvir8hkCrV3IUTf7FjED2i3x9SkrQAgyKbZdsWLB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GYsDgD7zhTQZ+wzraKbfv6YKBeZyLb467Dt+kQCK7N36MumCxN30Npvxr8uladhc3
	 PZnnVTIVlhoyGAB8uAug/Yhi1uh0KpJcwDT5JVCl7+L3G+VZGBXph4rcyfoX1jn2cA
	 G0mvzrk9UAzZq6b0CQIMxSpou5LRxNphoTY28/PtzbZQ5HM3eiVs/ViZHWAwejiFV7
	 iHmdsxLdHUnrazDXNB1llVvgdxBOMGuPQ7q0LIjqSP1xGMqBa3ECh5Brjd5WYkLLwv
	 43s0UtLbMDh/pdT4H9aMFPc/zqjMBGeEkYMyaPuTCH+g8GciS4Lk6rY0CMw6Vvq2MU
	 Ei7SXYq4mYT9Q==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 9B3AA3781167;
	Tue, 23 Jul 2024 10:03:34 +0000 (UTC)
Date: Tue, 23 Jul 2024 12:03:33 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v5 3/3] media: verisilicon: Use V4L2_FMT_FLAG_ENUM_ALL
 flag
Message-ID: <20240723100333.gf2ih3kbjllq7xmb@basti-XPS-13-9310>
References: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
 <20240722150523.149667-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240722150523.149667-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_030338_072182_F3C8552B 
X-CRM114-Status: GOOD (  14.66  )
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
>By adding support of V4L2_FMT_FLAG_ENUM_ALL flag into the driver

s/support of/support for the/

>we allowing userspce applications to discover all possible

Either:
s/we allowing/we allow/
or
s/we allowing/we are allowing/
are correct.

s/userspce/userspace/

>pixel formats of the hardware block. This way userspace can decide
>of which decoder to use given the support pixel formats.

s/of which/which/

s/support/supported/

>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
> .../media/platform/verisilicon/hantro_v4l2.c    | 17 ++++++++++++-----
> 1 file changed, 12 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
>index df6f2536263b..77f024aaa22d 100644
>--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
>+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
>@@ -201,7 +201,14 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
> 	struct hantro_ctx *ctx = fh_to_ctx(priv);
> 	const struct hantro_fmt *fmt, *formats;
> 	unsigned int num_fmts, i, j = 0;
>-	bool skip_mode_none;
>+	bool skip_mode_none, enum_all_formats;
>+	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;

As described in the previous patch, I think this operation will turn out
to be very common, so maybe we can add a macro for that.

>+
>+	/*
>+	 * If V4L2_FMT_FLAG_ENUM_ALL flag is set, we want to enumerate all

s/If/If the/

>+	 * hardware supported pixels formats

s/pixels/pixel/

Greetings,
Sebastian

>+	 */
>+	enum_all_formats = !!(f->index & V4L2_FMT_FLAG_ENUM_ALL);
>
> 	/*
> 	 * When dealing with an encoder:
>@@ -222,9 +229,9 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
>
> 		if (skip_mode_none == mode_none)
> 			continue;
>-		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
>+		if (!hantro_check_depth_match(fmt, ctx->bit_depth) && !enum_all_formats)
> 			continue;
>-		if (j == f->index) {
>+		if (j == index) {
> 			f->pixelformat = fmt->fourcc;
> 			return 0;
> 		}
>@@ -242,9 +249,9 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
> 	for (i = 0; i < num_fmts; i++) {
> 		fmt = &formats[i];
>
>-		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
>+		if (!hantro_check_depth_match(fmt, ctx->bit_depth) && !enum_all_formats)
> 			continue;
>-		if (j == f->index) {
>+		if (j == index) {
> 			f->pixelformat = fmt->fourcc;
> 			return 0;
> 		}
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
