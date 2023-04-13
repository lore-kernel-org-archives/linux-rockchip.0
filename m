Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD6EFC77B6F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QGGqJ/nR1qOUfmH0ZN2QxpkoWEWX8+bhSa0ZohWuWu8=; b=LajBuSyreJwiS0
	XXylgaX9l1odbKMOMnBOpiq4KlPM7/hgH8k4gJO46EE7xBtzJ8Coc8xTI0R8HXQPVGiohr4zBafK+
	IWfZjpbfAbJhASelZ+76IW4iW64iocXBBAOC8iiLzkUbFpKYwhxJusp+FPnDga/hDXIhKX9cvkhAa
	Lj0TOABhfQ7ebY7n2aSaEtkiTg2MgGLmXpNa8YBSo6hEsMmpnu1WV9A87fSvnUHw1/8mhsmoeBiwe
	IWkgeFqmp+1t4F7lSIChwEOjRgnnYcbEWAtcRclvPMYUTOt/qp3rbs7tPrpHA8lMBuaVnKUtiduIj
	Dk6Kp4b3dPzNwQqjNNSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmuUw-005v8i-1n;
	Thu, 13 Apr 2023 10:48:14 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmuUq-005v22-2I
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 10:48:12 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7890:9d79:409d:b354])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5A6AC660320E;
	Thu, 13 Apr 2023 11:48:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681382884;
	bh=G8T37k5l0CO+3iJ6HX4YP7p8rPxzJMywp+4MNjZsams=;
	h=From:To:Cc:Subject:Date:From;
	b=LmV0vxncSegEwhyO8MRwkkNnP8VdC+M1/lR330p6ZAyiVGvaQ5jpI/KUA2CUud4Rs
	 t1NFSc2UySaWM5vs/BiVyYBuZg+NOBJg13HiANdPHxtUVIj55/MSjwRn3NJMjBsqvD
	 RbFJUP1CCV9AxbeypuTvb71elHTG7dbM71dZqeX6mc6JooN60QojrB0xP8RUy9nWuB
	 FxcJZa/vofYh9SmMeEn8+GYXagWdpWXsWG7/Rb8BKb0fSXd9ehOH2BarM/NrrHrNMr
	 eB5GgCwFE2PNsbbRU0kKQ18Pqrz/V6sUIBKxJMy0B5s4ap+eeTIRuWQG1cfGNq5xnu
	 80hV+fLj/FIHA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	m.szyprowski@samsung.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2] media: verisilicon: Fix crash when probing encoder
Date: Thu, 13 Apr 2023 12:47:56 +0200
Message-Id: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_034808_988485_3D4306E3 
X-CRM114-Status: GOOD (  10.57  )
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

ctx->vpu_dst_fmt is no more initialized before calling hantro_try_fmt()
so assigne it to vpu_fmt led to crash the kernel.
Like for decoder case use 'fmt' as format for encoder and clean up
the code.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Fixes: db6f68b51e5c ("media: verisilicon: Do not set context src/dst formats in reset functions")
---
version 2:
- Remove useless vpu_fmt.

 drivers/media/platform/verisilicon/hantro_v4l2.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 8f1414085f47..d71f79471396 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -275,7 +275,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 			  struct v4l2_pix_format_mplane *pix_mp,
 			  enum v4l2_buf_type type)
 {
-	const struct hantro_fmt *fmt, *vpu_fmt;
+	const struct hantro_fmt *fmt;
 	bool capture = V4L2_TYPE_IS_CAPTURE(type);
 	bool coded;
 
@@ -295,11 +295,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 
 	if (coded) {
 		pix_mp->num_planes = 1;
-		vpu_fmt = fmt;
-	} else if (ctx->is_encoder) {
-		vpu_fmt = ctx->vpu_dst_fmt;
-	} else {
-		vpu_fmt = fmt;
+	} else if (!ctx->is_encoder) {
 		/*
 		 * Width/height on the CAPTURE end of a decoder are ignored and
 		 * replaced by the OUTPUT ones.
@@ -311,7 +307,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 	pix_mp->field = V4L2_FIELD_NONE;
 
 	v4l2_apply_frmsize_constraints(&pix_mp->width, &pix_mp->height,
-				       &vpu_fmt->frmsize);
+				       &fmt->frmsize);
 
 	if (!coded) {
 		/* Fill remaining fields */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
