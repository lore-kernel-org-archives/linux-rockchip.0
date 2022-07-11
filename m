Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B78F7C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMEjK0IZavUuXro8EdO5mfl6Zys3epdUKlt3hKo1PK4=; b=wJEIPwnh9CjSnS
	IIqxE+zjQk9TgOtKaimrRXisGus9MC/P+dP7TZTVha6BYbudRy9uSM1UvWSdOp0VDVdy5+zah+82p
	NA5WIeIYC1SU8OScAyjEZunVZhUsfWzHWD1uqToG1I7jAoXYxRrxPiEJJAYMqBfPDzEMh0PTADrvQ
	JOQTPbutDrPYOC3k8iiViLhflsarHG0RWdtFv5ugeHNXSySXau/g2tap1n1ts/SkkSvrq26VhYGLD
	aa/DpjWwEn9D/GHMIVp00skg2r2RPJBSyYJ3dqjMlVlb9n8uu6ExIQnWtVnLJYZ2rSE3wYTXZubyy
	bQ7zduI4OWVL0zIQgVgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsyU-001fvh-CN; Mon, 11 Jul 2022 12:57:18 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslC-001YCI-FY
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:39 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 92E80236F;
	Mon, 11 Jul 2022 14:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543413;
	bh=+2SN4BVTZW95tG1xW7g1CUPRg2RteON30gtiuh4kJqo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Kz73uW22zksvDy/JIsCmqsg85vm4kpsK37IEfRwM6G3+W36WidCKUVuj/l5PZpSFX
	 V4qcFEiUvrSTt0jKymmloeC8EWwPYkE9yGUu1Ol9W4Ycsr4AC8QGPXeK2lCQIvuQAg
	 azZyf5LReJq3oM+YRjEpR3IDK9ZheExHRM3jEMdE=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 22/46] media: rkisp1: csi: Rename CSI functions with a common rkisp1_csi prefix
Date: Mon, 11 Jul 2022 15:42:24 +0300
Message-Id: <20220711124248.2683-23-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054334_738140_1F1C7E90 
X-CRM114-Status: GOOD (  14.60  )
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

The CSI-related functions are not named consistently. Fix it by using a
common rkisp1_csi prefix.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 +-
 .../platform/rockchip/rkisp1/rkisp1-csi.c     | 20 +++++++++----------
 .../platform/rockchip/rkisp1/rkisp1-csi.h     |  6 +++---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  4 ++--
 .../platform/rockchip/rkisp1/rkisp1-isp.c     |  6 +++---
 5 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 4ba30f172c8b..d07c5c8e5b0d 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -541,7 +541,7 @@ void rkisp1_params_disable(struct rkisp1_params *params);
 
 /* irq handlers */
 irqreturn_t rkisp1_isp_isr(int irq, void *ctx);
-irqreturn_t rkisp1_mipi_isr(int irq, void *ctx);
+irqreturn_t rkisp1_csi_isr(int irq, void *ctx);
 irqreturn_t rkisp1_capture_isr(int irq, void *ctx);
 void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris);
 void rkisp1_params_isr(struct rkisp1_device *rkisp1);
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 25e1183cdbac..102deb877aa4 100644
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
@@ -69,7 +69,7 @@ static int rkisp1_config_mipi(struct rkisp1_csi *csi)
 	return 0;
 }
 
-void rkisp1_mipi_start(struct rkisp1_csi *csi)
+static void rkisp1_csi_enable(struct rkisp1_csi *csi)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	u32 val;
@@ -79,7 +79,7 @@ void rkisp1_mipi_start(struct rkisp1_csi *csi)
 		     val | RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA);
 }
 
-void rkisp1_mipi_stop(struct rkisp1_csi *csi)
+static void rkisp1_csi_disable(struct rkisp1_csi *csi)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	u32 val;
@@ -93,8 +93,8 @@ void rkisp1_mipi_stop(struct rkisp1_csi *csi)
 		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
 }
 
-int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
-			   struct rkisp1_sensor_async *sensor)
+int rkisp1_csi_start(struct rkisp1_csi *csi,
+		     struct rkisp1_sensor_async *sensor)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	union phy_configure_opts opts;
@@ -102,7 +102,7 @@ int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
 	s64 pixel_clock;
 	int ret;
 
-	ret = rkisp1_config_mipi(csi);
+	ret = rkisp1_csi_config(csi);
 	if (ret)
 		return ret;
 
@@ -119,19 +119,19 @@ int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
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
index 26d8be2ee178..180e2f39606e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
@@ -18,8 +18,8 @@ struct rkisp1_sensor_async;
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
index 2afaa9f26f29..2c441665c017 100644
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
index f477368dcec9..d2343f166f42 100644
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
