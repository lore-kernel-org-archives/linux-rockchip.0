Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CA84CCA47E
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaRY0oU69bzHH9GdctuKPSHg/z1z1SQq9rwaUb++2pk=; b=e1GKhji9x2Nvg3
	3ZhavSXiKQ/LJJqe7IBU6IV/LUJPeqgrT9GSDtvPCqzSwM3wyOBGiunDEqDvzcJsy0YUiE58I8zU5
	bb6eI2mXtqYMvL4hJ5mDg62xxPzhTQOXzJ3Rf8Nq1vZYtUMaWXDZvCYo9AbQgMmCNaG0a9ZLsUkHE
	OeHIy0T1k7LoVoL5hebp6tDjD3b3L0fySWGnIxZdv0+LPTDyUle7BlexQ9HrYntIHKM/ozbRTPGL3
	c8aZFdhoL8lPVfhXTII1nVjmOuGX8ozAQiI9wMK4EI4YxXebkvJ7O9vAQDnycVJS8ODF18FILeHfZ
	t1rE7BIhjuQHpV5Tf8tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bye-00Att5-GU; Tue, 14 Jun 2022 19:13:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ByV-00Atir-B3
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:13:17 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C9DB1D96;
	Tue, 14 Jun 2022 21:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233994;
	bh=Dj3w8Yy6C+KPFthDULRS9YCi+MtkmY+sGf1KnXve3io=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=K9GVPI2dJJo528hN6KtSqfFP9wIk5AMwmu/1m6gi/BQAutcRPrekdMNqBaEtT1N2f
	 D7poQohWjtjPUhM2lAlq6E80WRbW1JT8GeR02FEcdgb/OnvDjNOxpLhwlCx0sW4yYA
	 14o78uE2pPslGuilCFpbr8drqPARbcvK0zFfhxv8=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 21/55] media: rkisp1: csi: Rename CSI functions with a common rkisp1_csi prefix
Date: Wed, 15 Jun 2022 04:10:53 +0900
Message-Id: <20220614191127.3420492-22-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121315_582852_C6563321 
X-CRM114-Status: GOOD (  14.17  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The CSI-related functions are not named consistently. Fix it by using a
common rkisp1_csi prefix.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 +-
 .../platform/rockchip/rkisp1/rkisp1-csi.c     | 20 +++++++++----------
 .../platform/rockchip/rkisp1/rkisp1-csi.h     |  6 +++---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  4 ++--
 .../platform/rockchip/rkisp1/rkisp1-isp.c     |  6 +++---
 5 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index a52fa9e0dd66..dbf1baca623a 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -555,7 +555,7 @@ void rkisp1_params_disable(struct rkisp1_params *params);
 
 /* irq handlers */
 irqreturn_t rkisp1_isp_isr(int irq, void *ctx);
-irqreturn_t rkisp1_mipi_isr(int irq, void *ctx);
+irqreturn_t rkisp1_csi_isr(int irq, void *ctx);
 irqreturn_t rkisp1_capture_isr(int irq, void *ctx);
 void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris);
 void rkisp1_params_isr(struct rkisp1_device *rkisp1);
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index f19513a601e8..c1bb8c05543d 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -18,7 +18,7 @@
 #include "rkisp1-common.h"
 #include "rkisp1-csi.h"
 
-static int rkisp1_config_mipi(struct rkisp1_csi *csi)
+static int rkisp1_csi_config(struct rkisp1_csi *csi)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
@@ -68,7 +68,7 @@ static int rkisp1_config_mipi(struct rkisp1_csi *csi)
 	return 0;
 }
 
-void rkisp1_mipi_start(struct rkisp1_csi *csi)
+static void rkisp1_csi_enable(struct rkisp1_csi *csi)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	u32 val;
@@ -78,7 +78,7 @@ void rkisp1_mipi_start(struct rkisp1_csi *csi)
 		     val | RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA);
 }
 
-void rkisp1_mipi_stop(struct rkisp1_csi *csi)
+static void rkisp1_csi_disable(struct rkisp1_csi *csi)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	u32 val;
@@ -92,8 +92,8 @@ void rkisp1_mipi_stop(struct rkisp1_csi *csi)
 		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
 }
 
-int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
-			   struct rkisp1_sensor_async *sensor)
+int rkisp1_csi_start(struct rkisp1_csi *csi,
+		     struct rkisp1_sensor_async *sensor)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	union phy_configure_opts opts;
@@ -101,7 +101,7 @@ int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
 	s64 pixel_clock;
 	int ret;
 
-	ret = rkisp1_config_mipi(csi);
+	ret = rkisp1_csi_config(csi);
 	if (ret)
 		return ret;
 
@@ -118,19 +118,19 @@ int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
 	phy_configure(csi->dphy, &opts);
 	phy_power_on(csi->dphy);
 
-	rkisp1_mipi_start(csi);
+	rkisp1_csi_enable(csi);
 
 	return 0;
 }
 
-void rkisp1_mipi_csi2_stop(struct rkisp1_csi *csi)
+void rkisp1_csi_stop(struct rkisp1_csi *csi)
 {
-	rkisp1_mipi_stop(csi);
+	rkisp1_csi_disable(csi);
 
 	phy_power_off(csi->dphy);
 }
 
-irqreturn_t rkisp1_mipi_isr(int irq, void *ctx)
+irqreturn_t rkisp1_csi_isr(int irq, void *ctx)
 {
 	struct device *dev = ctx;
 	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
index 1f921d534865..7d3f01cfb49f 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
@@ -17,8 +17,8 @@ struct rkisp1_sensor_async;
 int rkisp1_csi_init(struct rkisp1_device *rkisp1);
 void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
 
-int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
-			   struct rkisp1_sensor_async *sensor);
-void rkisp1_mipi_csi2_stop(struct rkisp1_csi *csi);
+int rkisp1_csi_start(struct rkisp1_csi *csi,
+		     struct rkisp1_sensor_async *sensor);
+void rkisp1_csi_stop(struct rkisp1_csi *csi);
 
 #endif /* _RKISP1_CSI_H */
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 373a1f00c10a..253220188abd 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -383,7 +383,7 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
 	 */
 	rkisp1_capture_isr(irq, ctx);
 	rkisp1_isp_isr(irq, ctx);
-	rkisp1_mipi_isr(irq, ctx);
+	rkisp1_csi_isr(irq, ctx);
 
 	return IRQ_HANDLED;
 }
@@ -398,7 +398,7 @@ static const char * const px30_isp_clks[] = {
 static const struct rkisp1_isr_data px30_isp_isrs[] = {
 	{ "isp", rkisp1_isp_isr },
 	{ "mi", rkisp1_capture_isr },
-	{ "mipi", rkisp1_mipi_isr },
+	{ "mipi", rkisp1_csi_isr },
 };
 
 static const struct rkisp1_info px30_isp_info = {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 208c68aa52ea..ecb8ca0ad670 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -763,7 +763,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
 				 false);
 
-		rkisp1_mipi_csi2_stop(&rkisp1->csi);
+		rkisp1_csi_stop(&rkisp1->csi);
 		rkisp1_isp_stop(rkisp1);
 
 		return 0;
@@ -789,7 +789,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 
 	rkisp1_isp_start(rkisp1);
 
-	ret = rkisp1_mipi_csi2_start(&rkisp1->csi, rkisp1->active_sensor);
+	ret = rkisp1_csi_start(&rkisp1->csi, rkisp1->active_sensor);
 	if (ret) {
 		rkisp1_isp_stop(rkisp1);
 		goto mutex_unlock;
@@ -799,7 +799,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 			       true);
 	if (ret) {
 		rkisp1_isp_stop(rkisp1);
-		rkisp1_mipi_csi2_stop(&rkisp1->csi);
+		rkisp1_csi_stop(&rkisp1->csi);
 		goto mutex_unlock;
 	}
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
