Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C04F6CCA480
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C36O8ilUv9i/1HN78CO0Cm4/BghNsKHmbkq+mddoXAs=; b=MI6jBTuZtv2GX8
	PJcW8jnAL0mHAt+bzxc1KriF2ZLO5O6hXsbt13NbssqQ9DJsf7mNl4kUHBnW5NIErjRcW3XJ7lg4F
	m/VR71TGLXme8wNF7HW16DfRUYN5hRzkc26rSu1jU96+q43KdCXO1Gb+MNDm4q80yU9ZxG2e4h/AW
	mfSfPivxqQifL6hcK2Of8OJQ/OT7iCAQdkn8RmL3nyeYV6awv2ofELbU0p2Y3PQcl42t6PFgngDVf
	4vOKzHLFWPlNnoVW4i2gwZKAbfrwTth9cvaorJRUOMAQwr2yNOcuyh0rdU4r4m+/CO22wTtSKxiVI
	UTqjyH5DCqQ2I55jcp8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KG-0028NR-OH; Fri, 01 Jul 2022 00:16:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GM-0020GL-HK
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:02 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C904425C;
	Fri,  1 Jul 2022 01:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630471;
	bh=1gnWTfQPlHBwqtiI1RSXDNm3+y65nEyAe5aBA3W9vVw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Xt+f2Z1Oc7M4TkrWGXPe55V0TbDYkG1eY7fxvezp3Y5+Y+6pcqLGJztX1Asmx4vO2
	 2Vbk17CL+4lCaHVXkwqWQPy+dB6FnwsXP4TFP9cys7IC11FvluyDrSUgHun0T6CrJ+
	 WRETe9W7flzEu0dgEMTOVMoOEqEk+T0bgW1E2h0Y=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 21/55] media: rkisp1: csi: Handle CSI-2 RX configuration fully in rkisp1-csi.c
Date: Fri,  1 Jul 2022 02:06:39 +0300
Message-Id: <20220630230713.10580-22-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160754_912146_247B6AFC 
X-CRM114-Status: GOOD (  17.21  )
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
index d97a4ee5c002..1f921d534865 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
@@ -17,12 +17,8 @@ struct rkisp1_sensor_async;
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
