Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DD27C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jul 2024 15:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+lAwzENtDQwc2UicuqrZl9gPYNQ632QavVe5+nM0cU=; b=K0z6k0HdKUC/bP
	Mni6FIDjLjfIUc4BQBJcsvfmcZsiubTkER8sZdMPIUzDIWpA6QivTmTNe6wg7Xs6rWo4Q0rMyCtOe
	y/VjiNbGsicbQtPSCuG4vwFJEz7aYnBbzX3OhssaNWmMco+2tRPjPinZYSshCyujjWD6apGDw/bXV
	Kjijbq41vlVuyFxa3jBdRoDN8kIL2yVfsnhhQJEFqezBvx6M98OslIfRWU7EaylI8ITk/l8BPsiq0
	OZxvgl/LAHiqewa+Ba+q60ksMU6E9AaA2NbthK7b3zFxVBdNBML3+li+Ep+e3IiBqIyrXno9bXJ7a
	U5deMu+1gKBFqtiZycDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVubb-00000009sUO-1LxE;
	Mon, 22 Jul 2024 15:05:39 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVubU-00000009sQU-3viI
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Jul 2024 15:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721660730;
	bh=OBlqu3+85gEfIvQ1Nesc8JuesnXxw3aI//SRrubWmfs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sqb5TElEzxHGPk8CVRMF+yaC+ffdEL0WEn3AOtFCh2+9badendM5HkLjx9aawgyPS
	 0db/kACiRWJtWFP8YYy10m3GVCf2NrY8XNgL+EjhfdhCcHX+b7LM4E1+1d1X25wuRo
	 dwSURXqUENc9lNQ1+ekhBHu8SGAiDWWwT2mQPS/aBn9A+2UaQNRxjxpbmMnxNXTfeC
	 5v67wj2vbApQOuORwXTQ1BiMsCET5bHkVhNVKHneZ16DF0CPVhXK79vSooKvSheHUt
	 nYZiPMsobvbFrc201QTj3P/yc8ePUg32T89Q7JidlNeDdCVnwKYrVNIIY1QnhMs/z1
	 AEf5raMIyUG4w==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0D22537809D0;
	Mon, 22 Jul 2024 15:05:30 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 2/3] media: test-drivers: Use V4L2_FMT_FLAG_ENUM_ALL flag
Date: Mon, 22 Jul 2024 17:05:22 +0200
Message-ID: <20240722150523.149667-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
References: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_080533_133413_15EBA5C2 
X-CRM114-Status: GOOD (  11.50  )
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

Since V4L2_FMT_FLAG_ENUM_ALL flag mostly targeting stateless
decoder pixel formats enumeration, update vicodec visl test
drivers to use it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/test-drivers/vicodec/vicodec-core.c |  7 ++++---
 drivers/media/test-drivers/visl/visl-video.c      | 11 +++++++----
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/media/test-drivers/vicodec/vicodec-core.c b/drivers/media/test-drivers/vicodec/vicodec-core.c
index 3e011fe62ae1..1b4cd8ddd7c2 100644
--- a/drivers/media/test-drivers/vicodec/vicodec-core.c
+++ b/drivers/media/test-drivers/vicodec/vicodec-core.c
@@ -706,6 +706,7 @@ static int enum_fmt(struct v4l2_fmtdesc *f, struct vicodec_ctx *ctx,
 		    bool is_out)
 {
 	bool is_uncomp = (ctx->is_enc && is_out) || (!ctx->is_enc && !is_out);
+	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;
 
 	if (V4L2_TYPE_IS_MULTIPLANAR(f->type) && !multiplanar)
 		return -EINVAL;
@@ -718,18 +719,18 @@ static int enum_fmt(struct v4l2_fmtdesc *f, struct vicodec_ctx *ctx,
 
 		if (ctx->is_enc ||
 		    !vb2_is_streaming(&ctx->fh.m2m_ctx->cap_q_ctx.q))
-			info = v4l2_fwht_get_pixfmt(f->index);
+			info = v4l2_fwht_get_pixfmt(index);
 		else
 			info = v4l2_fwht_find_nth_fmt(info->width_div,
 						     info->height_div,
 						     info->components_num,
 						     info->pixenc,
-						     f->index);
+						     index);
 		if (!info)
 			return -EINVAL;
 		f->pixelformat = info->id;
 	} else {
-		if (f->index)
+		if (index)
 			return -EINVAL;
 		f->pixelformat = ctx->is_stateless ?
 			V4L2_PIX_FMT_FWHT_STATELESS : V4L2_PIX_FMT_FWHT;
diff --git a/drivers/media/test-drivers/visl/visl-video.c b/drivers/media/test-drivers/visl/visl-video.c
index f8d970319764..c5f3e13b4198 100644
--- a/drivers/media/test-drivers/visl/visl-video.c
+++ b/drivers/media/test-drivers/visl/visl-video.c
@@ -341,21 +341,24 @@ static int visl_enum_fmt_vid_cap(struct file *file, void *priv,
 				 struct v4l2_fmtdesc *f)
 {
 	struct visl_ctx *ctx = visl_file_to_ctx(file);
+	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;
 
-	if (f->index >= ctx->coded_format_desc->num_decoded_fmts)
+	if (index >= ctx->coded_format_desc->num_decoded_fmts)
 		return -EINVAL;
 
-	f->pixelformat = ctx->coded_format_desc->decoded_fmts[f->index];
+	f->pixelformat = ctx->coded_format_desc->decoded_fmts[index];
 	return 0;
 }
 
 static int visl_enum_fmt_vid_out(struct file *file, void *priv,
 				 struct v4l2_fmtdesc *f)
 {
-	if (f->index >= ARRAY_SIZE(visl_coded_fmts))
+	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;
+
+	if (index >= ARRAY_SIZE(visl_coded_fmts))
 		return -EINVAL;
 
-	f->pixelformat = visl_coded_fmts[f->index].pixelformat;
+	f->pixelformat = visl_coded_fmts[index].pixelformat;
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
