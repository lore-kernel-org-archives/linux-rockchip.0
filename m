Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14A8EC87FCF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 01:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDJ0Ohx6c0iHkKatNMcwprHV37aYc7nBDouyKVm7cWw=; b=mZe82ctLlSxNvP
	8nXUR58P/NhTSdq/VNCXnquczdt0HInNJqZWS7gRMGyUqA6/xynheXkHA6A8I3kdwUHMbB1wbnvLm
	DvFkkXs9RlLr6LmtZMd1fXKd3MKxDzuOfQyVXdjeAcHmPf9SRb32Wvlly/o91d0X4eirk9VmvlOEv
	JCSFjXvt76Fab/JA/8QsONRnLSChRkLeYiLhTrUHi0jkkW1f6XXfWZdJU/HdR0qnOg8Pe/JcHvT3e
	sGVZTuePgRRqxzk2ZEhgWvihA3Fcm395yqCZf3I+5fnq7EGqbyD8796EyCXuAT3D1h0acf9rcqhHX
	IsRtQ0c43tEmMqLCu4fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukvJQ-000000059ox-1hPJ;
	Sun, 10 Aug 2025 01:57:28 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukuvV-000000057gQ-1TZ6;
	Sun, 10 Aug 2025 01:32:46 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 4089E104D;
	Sun, 10 Aug 2025 03:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1754789513;
	bh=E2YsTuLzac0tzRZQUeUKAToChu69AO8ArXm4ynIHL2k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TrjZxXfnm8O97VSYbK/3m7vNl2EqK4nCayHRg+7K6tdG8/XDlOXQ0Ly8YLbQ5akXz
	 MAEiA2oouz9Ez7Wzri5wK+OvxgkIR1kZLveI/y71b1pfSWUE837jehJdFUF6YJjtD1
	 pOjWBKctr24SWYZaPADix8qR8Pc5UB5qCfgXZkBg=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Hans Verkuil <hans@jjverkuil.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 50/76] media: rockhip: rga: Access v4l2_fh from file
Date: Sun, 10 Aug 2025 04:30:32 +0300
Message-ID: <20250810013100.29776-51-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250810013100.29776-1-laurent.pinchart+renesas@ideasonboard.com>
References: <20250810013100.29776-1-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_183245_519675_9BEEDFFA 
X-CRM114-Status: GOOD (  10.52  )
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

From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

The v4l2_fh associated with an open file handle is now guaranteed
to be available in file->private_data, initialised by v4l2_fh_add().

Access the v4l2_fh, and from there the driver-specific structure,
from the file * in all ioctl handlers.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/rockchip/rga/rga.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 45c42c7ad846..7c657df623f2 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -462,7 +462,7 @@ static int vidioc_enum_fmt(struct file *file, void *prv, struct v4l2_fmtdesc *f)
 static int vidioc_g_fmt(struct file *file, void *prv, struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_fmt = &f->fmt.pix_mp;
-	struct rga_ctx *ctx = prv;
+	struct rga_ctx *ctx = file_to_rga_ctx(file);
 	struct vb2_queue *vq;
 	struct rga_frame *frm;
 
@@ -504,7 +504,7 @@ static int vidioc_try_fmt(struct file *file, void *prv, struct v4l2_format *f)
 static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_fmt = &f->fmt.pix_mp;
-	struct rga_ctx *ctx = prv;
+	struct rga_ctx *ctx = file_to_rga_ctx(file);
 	struct rockchip_rga *rga = ctx->rga;
 	struct vb2_queue *vq;
 	struct rga_frame *frm;
@@ -561,7 +561,7 @@ static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 static int vidioc_g_selection(struct file *file, void *prv,
 			      struct v4l2_selection *s)
 {
-	struct rga_ctx *ctx = prv;
+	struct rga_ctx *ctx = file_to_rga_ctx(file);
 	struct rga_frame *f;
 	bool use_frame = false;
 
@@ -609,7 +609,7 @@ static int vidioc_g_selection(struct file *file, void *prv,
 static int vidioc_s_selection(struct file *file, void *prv,
 			      struct v4l2_selection *s)
 {
-	struct rga_ctx *ctx = prv;
+	struct rga_ctx *ctx = file_to_rga_ctx(file);
 	struct rockchip_rga *rga = ctx->rga;
 	struct rga_frame *f;
 	int ret = 0;
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
