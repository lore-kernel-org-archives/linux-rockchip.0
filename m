Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8217DC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8geb6Ok4enXN8yGbYl6dhjW0Ftu8WHRdbJwilC7Tg/U=; b=JJRh0qsfbbrW8g
	lF2yqnX9jHWcINmcGysbAoUwSkiXvniSXXZ3QfhRw0h7u37nAyJ42wL6d/L05d+1Q3x0Mu1SMo3n9
	6RNqGwR6R0bAu3j0Bq56qNxXllOTYaxNoGBojNh6tKou+mpqPcBOFsI/uOqHuvL0n4c/S5JTpo+DI
	lUsLzC7TXpWXPAI60O6D5aDObigIw4qqLJZJR9xWc4AHNnJK+cN0THdg4G1uooTUjDcHSLtaJNCpd
	gttHafBdRM8/vyljdt/3aatjWB68djzIcJpbl9axmnP04fflCzMpaktz3580ZGOcv/lNODxvUZ3Fv
	SWmTWEkyvL50Xwkchx6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsyP-001fr9-Ph; Mon, 11 Jul 2022 12:57:13 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslB-001YBh-S1
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:37 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id ED53718D7;
	Mon, 11 Jul 2022 14:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543412;
	bh=irOAr0Ashf+lP12jO0A4TBb+Sa3v0y4shSk64TgiPC8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HIxZqF44SO63yjQOW9/s6dDAHUM+ECO0tc2qnHr8lSQR4Oi8W6ePHzPYtavpA3W5u
	 feIG4xdDfRpevJ3+iwqvXlSPayJUW08Uz4y37eogIZoWmvoLJZepWFQX7mn0ypUwMR
	 i0odbGmBnz5yzNn3MklMRNfWgWbWzoQXn6aztYVI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 21/46] media: rkisp1: csi: Handle CSI-2 RX configuration fully in rkisp1-csi.c
Date: Mon, 11 Jul 2022 15:42:23 +0300
Message-Id: <20220711124248.2683-22-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054334_134983_F67D89A3 
X-CRM114-Status: GOOD (  17.27  )
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

The ISP layer now calls multiple functions of the CSI-2 RX layer to
configure, start and stop it, with the steps for the last two
operations. Move those calls to rkisp1_mipi_csi2_start() and
rkisp1_mipi_csi2_stop() to simplify the ISP code and the API exposed by
the CSI-2 receiver component.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-csi.c     | 59 +++++++++++--------
 .../platform/rockchip/rkisp1/rkisp1-csi.h     |  4 --
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 10 +---
 3 files changed, 35 insertions(+), 38 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index b5732511459f..25e1183cdbac 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -18,7 +18,7 @@
 #include "rkisp1-common.h"
 #include "rkisp1-csi.h"
 
-int rkisp1_config_mipi(struct rkisp1_csi *csi)
+static int rkisp1_config_mipi(struct rkisp1_csi *csi)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
@@ -69,6 +69,30 @@ int rkisp1_config_mipi(struct rkisp1_csi *csi)
 	return 0;
 }
 
+void rkisp1_mipi_start(struct rkisp1_csi *csi)
+{
+	struct rkisp1_device *rkisp1 = csi->rkisp1;
+	u32 val;
+
+	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
+	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL,
+		     val | RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA);
+}
+
+void rkisp1_mipi_stop(struct rkisp1_csi *csi)
+{
+	struct rkisp1_device *rkisp1 = csi->rkisp1;
+	u32 val;
+
+	/* Mask and clear interrupts. */
+	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_IMSC, 0);
+	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_ICR, ~0);
+
+	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
+	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL,
+		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
+}
+
 int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
 			   struct rkisp1_sensor_async *sensor)
 {
@@ -76,6 +100,11 @@ int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
 	union phy_configure_opts opts;
 	struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
 	s64 pixel_clock;
+	int ret;
+
+	ret = rkisp1_config_mipi(csi);
+	if (ret)
+		return ret;
 
 	pixel_clock = v4l2_ctrl_g_ctrl_int64(sensor->pixel_rate_ctrl);
 	if (!pixel_clock) {
@@ -90,38 +119,18 @@ int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
 	phy_configure(csi->dphy, &opts);
 	phy_power_on(csi->dphy);
 
+	rkisp1_mipi_start(csi);
+
 	return 0;
 }
 
 void rkisp1_mipi_csi2_stop(struct rkisp1_csi *csi)
 {
+	rkisp1_mipi_stop(csi);
+
 	phy_power_off(csi->dphy);
 }
 
-void rkisp1_mipi_start(struct rkisp1_csi *csi)
-{
-	struct rkisp1_device *rkisp1 = csi->rkisp1;
-	u32 val;
-
-	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
-	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL,
-		     val | RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA);
-}
-
-void rkisp1_mipi_stop(struct rkisp1_csi *csi)
-{
-	struct rkisp1_device *rkisp1 = csi->rkisp1;
-	u32 val;
-
-	/* Mask and clear interrupts. */
-	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_IMSC, 0);
-	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_ICR, ~0);
-
-	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
-	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL,
-		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
-}
-
 irqreturn_t rkisp1_mipi_isr(int irq, void *ctx)
 {
 	struct device *dev = ctx;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
index 4ff41b88ab95..26d8be2ee178 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
@@ -18,12 +18,8 @@ struct rkisp1_sensor_async;
 int rkisp1_csi_init(struct rkisp1_device *rkisp1);
 void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
 
-int rkisp1_config_mipi(struct rkisp1_csi *csi);
-
 int rkisp1_mipi_csi2_start(struct rkisp1_csi *csi,
 			   struct rkisp1_sensor_async *sensor);
 void rkisp1_mipi_csi2_stop(struct rkisp1_csi *csi);
-void rkisp1_mipi_start(struct rkisp1_csi *csi);
-void rkisp1_mipi_stop(struct rkisp1_csi *csi);
 
 #endif /* _RKISP1_CSI_H */
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 81c4eb48baab..f477368dcec9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -276,7 +276,6 @@ static int rkisp1_config_path(struct rkisp1_device *rkisp1)
 		ret = rkisp1_config_dvp(rkisp1);
 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_PARALLEL;
 	} else if (sensor->mbus_type == V4L2_MBUS_CSI2_DPHY) {
-		ret = rkisp1_config_mipi(&rkisp1->csi);
 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_MIPI;
 	}
 
@@ -309,15 +308,13 @@ static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
 	 * ISP(mi) stop in mi frame end -> Stop ISP(mipi) ->
 	 * Stop ISP(isp) ->wait for ISP isp off
 	 */
-	/* stop and clear MI, MIPI, and ISP interrupts */
+	/* stop and clear MI and ISP interrupts */
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IMSC, 0);
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ICR, ~0);
 
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_IMSC, 0);
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_ICR, ~0);
 
-	rkisp1_mipi_stop(&rkisp1->csi);
-
 	/* stop ISP */
 	val = rkisp1_read(rkisp1, RKISP1_CIF_ISP_CTRL);
 	val &= ~(RKISP1_CIF_ISP_CTRL_ISP_INFORM_ENABLE |
@@ -358,15 +355,10 @@ static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
 
 static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
 {
-	struct rkisp1_sensor_async *sensor = rkisp1->active_sensor;
 	u32 val;
 
 	rkisp1_config_clk(rkisp1);
 
-	/* Activate MIPI */
-	if (sensor->mbus_type == V4L2_MBUS_CSI2_DPHY)
-		rkisp1_mipi_start(&rkisp1->csi);
-
 	/* Activate ISP */
 	val = rkisp1_read(rkisp1, RKISP1_CIF_ISP_CTRL);
 	val |= RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD |
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
