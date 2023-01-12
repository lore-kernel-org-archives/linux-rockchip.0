Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D3F3C54EBC
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 12:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNt5K4VZgIFLQCu9RznUwTMkj3dJTUcfg7IvHF/HTuo=; b=4/jCPB7IsOX0aF
	kccnrx5h8ybf30v5mfpznyqSlxcIRZUKZHTTzjNdc48qlIENNwVvM1R3BUrRvccAJ2J6YIVG8y10q
	58DQ6mrISoaHDDGKpm7Irn09rQA9W0zPC16wAmwpm7ywyxt9paprWCE/sgrrS7kv1diZlwrR/tP1C
	84/UYKhh+1LfLcgCZIOFMXpv6HUmCy6EasBkxSLmIkjAXl75YHb6zyyFQDSW8jT3RTit3nllEtXVp
	s53a9IvSm0sfyEf18vMPXCzvoJ3NFU5hQIiLMTdes1h9Hvx8HcXoonyXrqvj6I6BLtffTz3iX4ydU
	cInr2lYKkmzKJCFHe3qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8O-00F3rK-Cg; Thu, 12 Jan 2023 12:56:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8J-00F3nh-UU
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 12:56:42 +0000
Received: from localhost (89-26-75-29.goll.dyn.salzburg-online.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9E63B6602DBA;
	Thu, 12 Jan 2023 12:56:38 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673528198;
	bh=8FFms7ZFvtbGRTeN4REh/YGhyU+oeFdqYWO/CK2KT8c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hXDggCyHhkjfeIswJAT/y/OZ3Uv10V8Cte6Wd/pyHY8rOY6dr9GSn0wpvJqTPLhAn
	 huVgJgPug9zwf6cZosazKC86t1j54jjlPgFuIsy+QRuqZT1+iPX9piPWAJMlNjqjuG
	 OScE+wYlc6cVvt/TBZahO964vjW3VE37MbhQ94bfU0QB+iyniOOy6KJEcIgZxSjqQK
	 fotcKNvAIDnTYGKuQZXOYWdvsbeIDsUTfJ2+wAx0S2d8E1/NX8hW0NhtfMSaHK0Ur2
	 Dao5hfPydn5QXY2ImcTCrAm24Q/K0DZKTPJECRS5W5DOD0MUySUoXpHHjb1QhUGGu/
	 qieM9+NzZLXQg==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Thu, 12 Jan 2023 13:56:18 +0100
Subject:  [PATCH v2 03/12] staging: media: rkvdec: Helper for buffer queue busy check
MIME-Version: 1.0
Message-Id: <20230101-patch-series-v2-6-2-rc1-v2-3-fa1897efac14@collabora.com>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
In-Reply-To:  <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel-domain <kernel@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>
X-Mailer: b4 0.11.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1673528186; l=2269;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=8FFms7ZFvtbGRTeN4REh/YGhyU+oeFdqYWO/CK2KT8c=;
 b=ub/wDdTpC9jeMsoCSRmmqPKTVKH8soQUtOakduE6Kmcgt/JvOwM+tMckRDcgsVcmdLW9umjznn05
 a7TSEWbUC2GDJJri/M43YYI86BB6vTZEyOuxzEaRrXkA+V76F2vz
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_045640_197138_166C228C 
X-CRM114-Status: GOOD (  13.13  )
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

Implement a helper function, wrapping around getting a vb2 queue and
checking whether it is busy, to reduce the amount of code duplication in
the driver.

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 7bab7586918c..c849f6c20279 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -27,6 +27,17 @@
 #include "rkvdec.h"
 #include "rkvdec-regs.h"
 
+static int rkvdec_queue_busy(struct rkvdec_ctx *ctx, enum v4l2_buf_type buf_type)
+{
+	struct vb2_queue *vq;
+
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, buf_type);
+	if (vb2_is_busy(vq))
+		return -EBUSY;
+	else
+		return 0;
+}
+
 static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
@@ -311,13 +322,10 @@ static int rkvdec_s_capture_fmt(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
 	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
-	struct vb2_queue *vq;
 	int ret;
 
 	/* Change not allowed if queue is busy */
-	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
-			     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
-	if (vb2_is_busy(vq))
+	if (rkvdec_queue_busy(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) != 0)
 		return -EBUSY;
 
 	ret = rkvdec_try_capture_fmt(file, priv, f);
@@ -335,7 +343,7 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	const struct rkvdec_coded_fmt_desc *desc;
 	struct v4l2_format *cap_fmt;
-	struct vb2_queue *peer_vq, *vq;
+	struct vb2_queue *vq;
 	int ret;
 
 	/*
@@ -354,8 +362,7 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 	 * queue, we can't allow doing so when the CAPTURE queue has buffers
 	 * allocated.
 	 */
-	peer_vq = v4l2_m2m_get_vq(m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
-	if (vb2_is_busy(peer_vq))
+	if (rkvdec_queue_busy(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) != 0)
 		return -EBUSY;
 
 	ret = rkvdec_try_output_fmt(file, priv, f);

-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
