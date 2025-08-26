Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A53A6CA0FED
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 19:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bjqQwlP4re/9InTGjCNnufNb3fokHk7I4RH1WC97gnY=; b=InMrLEn9ozyvR6
	BnfqPnHK+OkF2wdtiISyf+64TOmuBkl2Cv8MzLp9gRK3W+dCZhcaWy4GernDwWUALQ2+5+7HAbfoQ
	0kf9Nmij13iuuuL0gSSguXeREN+Atn8ZAJvfb5xjRCuIBqASr+aFyK8bhsw9KhxaMYj2Q9lhz//cL
	JjyhkWZal6BiVdcUShqlOt1mx24bokLZOwCTlG6RyZi6m4pSz705BAC6In3TfjPdVG6a2ZG1vtbnD
	nE9tQK8cg8CIgC5uPH6pGvMGXq+QmR/49u/Zmvf+VoNuXeqACZYJbte3NQoO82CpkzM0cIw8tsQ6v
	gP73+Ek9FAZyMyZh32hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqyyR-0000000CxJz-11Ge;
	Tue, 26 Aug 2025 19:04:51 +0000
Received: from leonov.paulk.fr ([185.233.101.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqyyO-0000000CxJP-0vND
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Aug 2025 19:04:49 +0000
Received: from laika.paulk.fr (12.234.24.109.rev.sfr.net [109.24.234.12])
	by leonov.paulk.fr (Postfix) with ESMTPS id B3B1C1F0005E
	for <linux-rockchip@lists.infradead.org>; Tue, 26 Aug 2025 19:04:40 +0000 (UTC)
Received: by laika.paulk.fr (Postfix, from userid 65534)
	id 2DB12B01FBD; Tue, 26 Aug 2025 19:04:40 +0000 (UTC)
Received: from shepard (unknown [192.168.1.65])
	by laika.paulk.fr (Postfix) with ESMTP id C4DE4B01FB8;
	Tue, 26 Aug 2025 19:04:22 +0000 (UTC)
From: Paul Kocialkowski <paulk@sys-base.io>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Paul Kocialkowski <paulk@sys-base.io>
Subject: [PATCH] media: verisilicon: Explicitly disable all encoder ioctls for decoders
Date: Tue, 26 Aug 2025 21:04:16 +0200
Message-ID: <20250826190416.1287089-1-paulk@sys-base.io>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_120448_414456_ED11D3AB 
X-CRM114-Status: GOOD (  11.70  )
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

Call the dedicated v4l2_disable_ioctl helper instead of manually
checking whether the current context is an encoder for the selection
ioctls.

Signed-off-by: Paul Kocialkowski <paulk@sys-base.io>
---
 drivers/media/platform/verisilicon/hantro_drv.c  | 2 ++
 drivers/media/platform/verisilicon/hantro_v4l2.c | 6 ++----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 4cc9d00fd293..6fb28a6293e7 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -916,6 +916,8 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
 		vpu->decoder = func;
 		v4l2_disable_ioctl(vfd, VIDIOC_TRY_ENCODER_CMD);
 		v4l2_disable_ioctl(vfd, VIDIOC_ENCODER_CMD);
+		v4l2_disable_ioctl(vfd, VIDIOC_G_SELECTION);
+		v4l2_disable_ioctl(vfd, VIDIOC_S_SELECTION);
 	}
 
 	video_set_drvdata(vfd, vpu);
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 6bcd892e7bb4..fcf3bd9bcda2 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -663,8 +663,7 @@ static int vidioc_g_selection(struct file *file, void *priv,
 	struct hantro_ctx *ctx = file_to_ctx(file);
 
 	/* Crop only supported on source. */
-	if (!ctx->is_encoder ||
-	    sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
+	if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
 		return -EINVAL;
 
 	switch (sel->target) {
@@ -696,8 +695,7 @@ static int vidioc_s_selection(struct file *file, void *priv,
 	struct vb2_queue *vq;
 
 	/* Crop only supported on source. */
-	if (!ctx->is_encoder ||
-	    sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
+	if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
 		return -EINVAL;
 
 	/* Change not allowed if the queue is streaming. */
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
