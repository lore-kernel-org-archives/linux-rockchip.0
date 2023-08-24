Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 625CCC7113B
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Aug 2023 09:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyDc6I3iGRuywfZZpJJ6x+O12+uRH8vULK0hJwJQTUE=; b=knb8sFap/FCHZV
	8kae38aZrs19vPnslFSmqu9pVDCg4gfVcGnCz8Hsw72x5ik3xgw9txjmKWqQjr8Hw8pt6MTDTuyCu
	6vQkqCBMGNQF7jL3775+n1wkj1xBGXbMAZMKhf7RViMHbvl3g9+1gjD8GSwIyvxEcUSAVsVPDFOAf
	nmsA8SOtGWOoBr/cQOuhz/5sVqjxCsxv6mhC8v9z6OjqjIqeLp4LulK8qOAe5iPqsxcjrW7lBPddH
	otxHLL9xqLEgX3t1hpmHx9hgF3vzFy/IXNJ6ddPHXqDk3bzH1Sa9so+RRI9m1abaT4YarWMbR9TC+
	M6aQrjC0SHfeAhRAQpJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ6Y4-002gf4-1J;
	Thu, 24 Aug 2023 09:22:40 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ6XG-002g6s-28;
	Thu, 24 Aug 2023 09:21:56 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:672:c310:4c8a:3a97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C6EE46607340;
	Thu, 24 Aug 2023 10:21:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1692868906;
	bh=WDraZOgWi0izES0K9FdWnGrtWWF6tf7zOBBP/EoWBNg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Zq9oiDXUjZcdi9+7nMSjADzQn8H64qzRmsMgacOvIpUXGf8y0ICuEm9Xqb4im9sUF
	 pKfE95AJtjfFIwNGSF0gm4P3pXcTi0LrGqMfKE2HZ/jiXDXzOfVK/6at/WKYNrSnnU
	 n92uen5xlNd7B4cYgy/q/c6JSkvcQlxf+OnweOKN37FT+06nx56F2awaSXUFXOmBKk
	 /eRQwbANk83lM6PMixAYlmYeP5jkb7eKhLBnXEmaC0Wff5AZEHwjj2ELaH2NHAsrNb
	 SGFqxz8R8WiMJ/KD7B74Ig7/cdSZGDCBFj2FoBoi8eyr0/j9jrQcupPWVEvVVYV2Kq
	 pnZXs+BDx1Qpw==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 08/10] media: verisilicon: vp9: Allow to change resolution while streaming
Date: Thu, 24 Aug 2023 11:21:31 +0200
Message-Id: <20230824092133.39510-9-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824092133.39510-1-benjamin.gaignard@collabora.com>
References: <20230824092133.39510-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_022150_823311_E07DB8CB 
X-CRM114-Status: GOOD (  13.78  )
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

Remove all checks that prohibit to set a new format while streaming.
This allow to change dynamically the resolution if the pixel format
remains the same.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/platform/verisilicon/hantro_v4l2.c  | 24 +++----------------
 1 file changed, 3 insertions(+), 21 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index f0d8b165abcd..27a1e77cca38 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -514,25 +514,14 @@ static int hantro_set_fmt_out(struct hantro_ctx *ctx,
 		return ret;
 
 	if (!ctx->is_encoder) {
-		struct vb2_queue *peer_vq;
-
 		/*
 		 * In order to support dynamic resolution change,
 		 * the decoder admits a resolution change, as long
-		 * as the pixelformat remains. Can't be done if streaming.
-		 */
-		if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
-		    pix_mp->pixelformat != ctx->src_fmt.pixelformat))
-			return -EBUSY;
-		/*
-		 * Since format change on the OUTPUT queue will reset
-		 * the CAPTURE queue, we can't allow doing so
-		 * when the CAPTURE queue has buffers allocated.
+		 * as the pixelformat remains.
 		 */
-		peer_vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
-					  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
-		if (vb2_is_busy(peer_vq))
+		if (vb2_is_streaming(vq) && pix_mp->pixelformat != ctx->src_fmt.pixelformat) {
 			return -EBUSY;
+		}
 	} else {
 		/*
 		 * The encoder doesn't admit a format change if
@@ -577,15 +566,8 @@ static int hantro_set_fmt_out(struct hantro_ctx *ctx,
 static int hantro_set_fmt_cap(struct hantro_ctx *ctx,
 			      struct v4l2_pix_format_mplane *pix_mp)
 {
-	struct vb2_queue *vq;
 	int ret;
 
-	/* Change not allowed if queue is busy. */
-	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
-			     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
-	if (vb2_is_busy(vq))
-		return -EBUSY;
-
 	if (ctx->is_encoder) {
 		struct vb2_queue *peer_vq;
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
