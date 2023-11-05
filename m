Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7971CC4332F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Nov 2023 23:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hA+uRjLM00fvGyY/6w9hHR4hxxqTgJGtpI8sNifYNRI=; b=0/fIfwOxCIzBxG
	uwCQPsNJrwAx3J2568bb3epUBDXY008eLEuRaxs+HyJoqj14in4R3H9DDb9yUrf/qUd/wyiSI6SZW
	UsFX+0ncVg1bE4vS0k57P5FGL27SM6+z1ZplAVN58p07n/hxJefkv5iupiMUpCGBo/dNyM9OFthAZ
	d1z8w4DpsFaG1YuN4bn+c3tLJMKPFPfeO9lcMmGzzaI3rF8YniG/jF5P+Se5jV3dMapfXVFHDGe/Q
	kPOc7ENL2GR3+2YhANJ7+RnvEbvbdtb49hq4n9ZTP9kXrRchDH5W6kIzlQkH2+2hyWEZaUWqbzC5r
	npqojKFIqwsrdqWGBIMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzmg4-00FdE4-1v;
	Sun, 05 Nov 2023 23:37:12 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzmg2-00FdCc-0o
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Nov 2023 23:37:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1699227424; bh=PZRfhinseChkZdvnVlfw1Kg5f1pXC9wZ1TqHW9bYJCc=;
 b=z/mmZFSHSlFsC8tZvEYxgHLBKqBAPy1xIojsmStwMhdMflElHfZDsP4+/qivL+iXExuO7xWW5
 Ld87eZqJYNajVG+dVxz/htzPB9HNH9mt/oKhEvtbPIh/58S5bPLItHMTxVdMBvw6DfSTnQMnVwf
 7rqokk95vv2aDay5kQA8OOZw0W4WRlAY7fTEYAJKrFzzy78S6EgDvNoRI9d9pK55HpTOlavX27+
 aLB4AiGE1gtfEUj/KTz0gpyEIEWrHdWhv3I0Fgz8n+epkSELyXqePoiA4ho0GXOK3snPdSa78yY
 6EDzP9Se6bLzfn7i2MpB9dVBpNuNIqOA8N58YzzZ+uig==
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
Subject: [PATCH 5/9] media: rkvdec: Disable QoS for HEVC and VP9 on RK3328
Date: Sun,  5 Nov 2023 23:36:12 +0000
Message-ID: <20231105233630.3927502-6-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 6548271f1b004d4cddbe0c8d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231105_153710_328018_AADA965D 
X-CRM114-Status: GOOD (  14.30  )
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

The RK3328 VDEC has a HW quirk that require QoS to be disabled when HEVC
or VP9 is decoded, otherwise the decoded picture may become corrupted.

Add a RK3328 variant with a quirk flag to disable QoS when before
decoding is started.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/rkvdec/rkvdec-hevc.c |  9 +++++++++
 drivers/staging/media/rkvdec/rkvdec-regs.h |  2 ++
 drivers/staging/media/rkvdec/rkvdec-vp9.c  | 10 ++++++++++
 drivers/staging/media/rkvdec/rkvdec.c      | 12 ++++++++++++
 drivers/staging/media/rkvdec/rkvdec.h      |  4 ++++
 5 files changed, 37 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec-hevc.c b/drivers/staging/media/rkvdec/rkvdec-hevc.c
index 0c4ddc073a6c..d0a1859d54c1 100644
--- a/drivers/staging/media/rkvdec/rkvdec-hevc.c
+++ b/drivers/staging/media/rkvdec/rkvdec-hevc.c
@@ -788,6 +788,15 @@ static int rkvdec_hevc_run(struct rkvdec_ctx *ctx)
 	writel(1, rkvdec->regs + RKVDEC_REG_PREF_LUMA_CACHE_COMMAND);
 	writel(1, rkvdec->regs + RKVDEC_REG_PREF_CHR_CACHE_COMMAND);
 
+	if (rkvdec->quirks & RKVDEC_QUIRK_DISABLE_QOS) {
+		u32 reg;
+
+		reg = readl(rkvdec->regs + RKVDEC_REG_QOS_CTRL);
+		reg |= 0xFFFF;
+		reg &= ~BIT(12);
+		writel(reg, rkvdec->regs + RKVDEC_REG_QOS_CTRL);
+	}
+
 	/* Start decoding! */
 	writel(RKVDEC_INTERRUPT_DEC_E | RKVDEC_CONFIG_DEC_CLK_GATE_E |
 	       RKVDEC_TIMEOUT_E | RKVDEC_BUF_EMPTY_E,
diff --git a/drivers/staging/media/rkvdec/rkvdec-regs.h b/drivers/staging/media/rkvdec/rkvdec-regs.h
index 83bf790ed9b7..740bdb498634 100644
--- a/drivers/staging/media/rkvdec/rkvdec-regs.h
+++ b/drivers/staging/media/rkvdec/rkvdec-regs.h
@@ -218,6 +218,8 @@
 #define RKVDEC_REG_H264_ERR_E				0x134
 #define RKVDEC_H264_ERR_EN_HIGHBITS(x)			((x) & 0x3fffffff)
 
+#define RKVDEC_REG_QOS_CTRL				0x18C
+
 #define RKVDEC_REG_PREF_LUMA_CACHE_COMMAND		0x410
 #define RKVDEC_REG_PREF_CHR_CACHE_COMMAND		0x450
 
diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
index 0e7e16f20eeb..cadb9d592308 100644
--- a/drivers/staging/media/rkvdec/rkvdec-vp9.c
+++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
@@ -824,6 +824,16 @@ static int rkvdec_vp9_run(struct rkvdec_ctx *ctx)
 	writel(1, rkvdec->regs + RKVDEC_REG_PREF_CHR_CACHE_COMMAND);
 
 	writel(0xe, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
+
+	if (rkvdec->quirks & RKVDEC_QUIRK_DISABLE_QOS) {
+		u32 reg;
+
+		reg = readl(rkvdec->regs + RKVDEC_REG_QOS_CTRL);
+		reg |= 0xFFFF;
+		reg &= ~BIT(12);
+		writel(reg, rkvdec->regs + RKVDEC_REG_QOS_CTRL);
+	}
+
 	/* Start decoding! */
 	writel(RKVDEC_INTERRUPT_DEC_E | RKVDEC_CONFIG_DEC_CLK_GATE_E |
 	       RKVDEC_TIMEOUT_E | RKVDEC_BUF_EMPTY_E,
diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index aa017ad40270..03b6899e6637 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -1204,6 +1204,13 @@ static const struct rkvdec_variant rk3288_rkvdec_variant = {
 	.capabilities = RKVDEC_CAPABILITY_HEVC,
 };
 
+static const struct rkvdec_variant rk3328_rkvdec_variant = {
+	.capabilities = RKVDEC_CAPABILITY_HEVC |
+			RKVDEC_CAPABILITY_H264 |
+			RKVDEC_CAPABILITY_VP9,
+	.quirks = RKVDEC_QUIRK_DISABLE_QOS,
+};
+
 static const struct rkvdec_variant rk3399_rkvdec_variant = {
 	.capabilities = RKVDEC_CAPABILITY_HEVC |
 			RKVDEC_CAPABILITY_H264 |
@@ -1215,6 +1222,10 @@ static const struct of_device_id of_rkvdec_match[] = {
 		.compatible = "rockchip,rk3288-vdec",
 		.data = &rk3288_rkvdec_variant,
 	},
+	{
+		.compatible = "rockchip,rk3328-vdec",
+		.data = &rk3328_rkvdec_variant,
+	},
 	{
 		.compatible = "rockchip,rk3399-vdec",
 		.data = &rk3399_rkvdec_variant,
@@ -1245,6 +1256,7 @@ static int rkvdec_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, rkvdec);
 	rkvdec->dev = &pdev->dev;
 	rkvdec->capabilities = variant->capabilities;
+	rkvdec->quirks = variant->quirks;
 	mutex_init(&rkvdec->vdev_lock);
 	INIT_DELAYED_WORK(&rkvdec->watchdog_work, rkvdec_watchdog_func);
 
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 14ce26a6c618..1d5d405da56c 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -26,6 +26,8 @@
 #define RKVDEC_CAPABILITY_H264		BIT(1)
 #define RKVDEC_CAPABILITY_VP9		BIT(2)
 
+#define RKVDEC_QUIRK_DISABLE_QOS	BIT(0)
+
 struct rkvdec_ctx;
 
 struct rkvdec_ctrl_desc {
@@ -69,6 +71,7 @@ vb2_to_rkvdec_decoded_buf(struct vb2_buffer *buf)
 
 struct rkvdec_variant {
 	unsigned int capabilities;
+	unsigned int quirks;
 };
 
 struct rkvdec_coded_fmt_ops {
@@ -120,6 +123,7 @@ struct rkvdec_dev {
 	struct mutex vdev_lock; /* serializes ioctls */
 	struct delayed_work watchdog_work;
 	unsigned int capabilities;
+	unsigned int quirks;
 };
 
 struct rkvdec_ctx {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
