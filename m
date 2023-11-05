Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31C45C4167D
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Nov 2023 23:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8J4aX7vV3kP2+kV0a9dheyOOyI4ce9DqDyBgofXWts=; b=N7zLi86j3XQfna
	/0CXrGof2OyTQLv28wATj7pWP0hKxUGfr1uEven6JdMQJArTMGc7nr7o63poA1faM+5kiABeUn79q
	9Q9MIP+hpVhX18d5eRRYTtboW2zMwS2dK33jYEMYW2hnSOEaQ9my4/XFl3f//c/OvEGQEcII91GgF
	WPC1oZtMTJ7ygJ43newkjziuHnHxM0D4XZOaV5sW/ln/Ar6xeOAxpuWo9QKZrejC13xJ2J0fU/DC6
	49Js9q1AuqbFeS5P5s+bIYV7jzxmu9SQPjRVVc7RZhKiS5ghtkqGaRA4DAPHix+ZvuUxQ8+mDxn2n
	K9EsjR8gYAlbhWbziQYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzmfy-00FdB2-0N;
	Sun, 05 Nov 2023 23:37:06 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzmfv-00FdAD-2A
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Nov 2023 23:37:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1699227416; bh=BC/o7NVv2ms3W3hOMNL4HECxSEB8gFpPZJJfV/rOs8U=;
 b=bloL5d0DNLnha3nWmU1yoFjnmv5z11FLbbMWD9G1BQP3kZM03tNHAFRTZuSJoiJcvxoubA6Sx
 vToHA/SxM/wwG8VifFzaVGDaMULX1KDQSgkAX1MyfGyzQN4DsS8+zmY7v9xT3X+QLsLAeTkRFdY
 qUPY3pG9N1AQf/hT3f6M1bxh8I6ubevy8CKkQ1D681Ad3eYDMGvYMvyYTk7Q4lqG2o4s+4D9sTI
 uoMpfiNXa0+eHUDqxvJGHqNnZkjuwOykrwzMiIemnIzNXVV+fDW45h+agKDeQnsfRjMC4hg93gq
 pYUMzcbNkXsRfyKhfIEj5CuLMCMKsR3reM/j9oB5kiqQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/9] media: rkvdec: Add variants support
Date: Sun,  5 Nov 2023 23:36:09 +0000
Message-ID: <20231105233630.3927502-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231105233630.3927502-1-jonas@kwiboo.se>
References: <20231105233630.3927502-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 654827131b004d4cddbe0c66
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231105_153703_746329_A3F549D1 
X-CRM114-Status: GOOD (  15.88  )
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

From: Alex Bee <knaerzche@gmail.com>

Different versions of the Rockchip VDEC IP exists and one way they can
differ is what decoding formats are supported.

Add a variant implementation in order to support flagging different
capabilities.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/rkvdec/rkvdec.c | 21 ++++++++++++++++++++-
 drivers/staging/media/rkvdec/rkvdec.h | 10 ++++++++++
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index eec68a7a1c95..dc1f75dd1c4f 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -13,6 +13,7 @@
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/pm.h>
 #include <linux/pm_runtime.h>
@@ -332,6 +333,7 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 		.ops = &rkvdec_hevc_fmt_ops,
 		.num_decoded_fmts = ARRAY_SIZE(rkvdec_hevc_decoded_fmts),
 		.decoded_fmts = rkvdec_hevc_decoded_fmts,
+		.capability = RKVDEC_CAPABILITY_HEVC,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_H264_SLICE,
@@ -348,6 +350,7 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_decoded_fmts),
 		.decoded_fmts = rkvdec_h264_decoded_fmts,
 		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
+		.capability = RKVDEC_CAPABILITY_H264,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_VP9_FRAME,
@@ -363,6 +366,7 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 		.ops = &rkvdec_vp9_fmt_ops,
 		.num_decoded_fmts = ARRAY_SIZE(rkvdec_vp9_decoded_fmts),
 		.decoded_fmts = rkvdec_vp9_decoded_fmts,
+		.capability = RKVDEC_CAPABILITY_VP9,
 	}
 };
 
@@ -1167,8 +1171,17 @@ static void rkvdec_watchdog_func(struct work_struct *work)
 	}
 }
 
+static const struct rkvdec_variant rk3399_rkvdec_variant = {
+	.capabilities = RKVDEC_CAPABILITY_HEVC |
+			RKVDEC_CAPABILITY_H264 |
+			RKVDEC_CAPABILITY_VP9,
+};
+
 static const struct of_device_id of_rkvdec_match[] = {
-	{ .compatible = "rockchip,rk3399-vdec" },
+	{
+		.compatible = "rockchip,rk3399-vdec",
+		.data = &rk3399_rkvdec_variant,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, of_rkvdec_match);
@@ -1179,16 +1192,22 @@ static const char * const rkvdec_clk_names[] = {
 
 static int rkvdec_probe(struct platform_device *pdev)
 {
+	const struct rkvdec_variant *variant;
 	struct rkvdec_dev *rkvdec;
 	unsigned int i;
 	int ret, irq;
 
+	variant = of_device_get_match_data(&pdev->dev);
+	if (!variant)
+		return -EINVAL;
+
 	rkvdec = devm_kzalloc(&pdev->dev, sizeof(*rkvdec), GFP_KERNEL);
 	if (!rkvdec)
 		return -ENOMEM;
 
 	platform_set_drvdata(pdev, rkvdec);
 	rkvdec->dev = &pdev->dev;
+	rkvdec->capabilities = variant->capabilities;
 	mutex_init(&rkvdec->vdev_lock);
 	INIT_DELAYED_WORK(&rkvdec->watchdog_work, rkvdec_watchdog_func);
 
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 2f3bda1df5f0..14ce26a6c618 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -22,6 +22,10 @@
 #include <media/videobuf2-core.h>
 #include <media/videobuf2-dma-contig.h>
 
+#define RKVDEC_CAPABILITY_HEVC		BIT(0)
+#define RKVDEC_CAPABILITY_H264		BIT(1)
+#define RKVDEC_CAPABILITY_VP9		BIT(2)
+
 struct rkvdec_ctx;
 
 struct rkvdec_ctrl_desc {
@@ -63,6 +67,10 @@ vb2_to_rkvdec_decoded_buf(struct vb2_buffer *buf)
 			    base.vb.vb2_buf);
 }
 
+struct rkvdec_variant {
+	unsigned int capabilities;
+};
+
 struct rkvdec_coded_fmt_ops {
 	int (*adjust_fmt)(struct rkvdec_ctx *ctx,
 			  struct v4l2_format *f);
@@ -98,6 +106,7 @@ struct rkvdec_coded_fmt_desc {
 	unsigned int num_decoded_fmts;
 	const struct rkvdec_decoded_fmt_desc *decoded_fmts;
 	u32 subsystem_flags;
+	unsigned int capability;
 };
 
 struct rkvdec_dev {
@@ -110,6 +119,7 @@ struct rkvdec_dev {
 	void __iomem *regs;
 	struct mutex vdev_lock; /* serializes ioctls */
 	struct delayed_work watchdog_work;
+	unsigned int capabilities;
 };
 
 struct rkvdec_ctx {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
