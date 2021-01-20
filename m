Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D20DCC433E6
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:45:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6F65623358
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:45:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6F65623358
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rWH3V7xFMitaGQqatOfAH3Qrwq13OMoZS4TejRFus1Y=; b=PHiNrhJDIGcK1fmwOa8jSXxLdG
	dOnyPPMeRcM2OPDxVHbkFH5cLiJJPPNiooFxkf9xqBCNq81EZFi3p2cxjPDmc9sIItS5Aaupd2nbL
	2Zj0WAcfgjX6pqs2I3WqtLQ7Ttqgx0J4tDoBodKA/uH4OCUF9WIcrueh2n9ORpXMN81qreW434raf
	qMvN77YlGAD8WnLNtN8cWTd1xptr2wBE7A9t/GnrUTA2zqSurabCDAbj9yp5CagCxE9MS1VID60I5
	RC1my/uXrH7Lsjr700xiVKwoeW1ukXR9KytWiOs5QxipkZTGr9+9yercv0iJAx06jxWGmCEqDWQo+
	anH0aVYg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2GbV-00051I-Er; Wed, 20 Jan 2021 16:45:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2GbM-0004wp-So
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 16:45:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 93D311F45025
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, heiko.stuebner@theobroma-systems.com,
 heiko@sntech.de
Subject: [PATCH v7 5/5] media: rockchip: rkisp1: extend uapi array sizes
Date: Wed, 20 Jan 2021 17:44:46 +0100
Message-Id: <20210120164446.1220-6-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
References: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_114501_108876_31FD3F5D 
X-CRM114-Status: GOOD (  16.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Later variants of the rkisp1 block use more entries in some arrays:

RKISP1_CIF_ISP_AE_MEAN_MAX                 25 -> 81
RKISP1_CIF_ISP_HIST_BIN_N_MAX              16 -> 32
RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       17 -> 34
RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 25 -> 81

and we can still extend the uapi during the 5.11-rc cycle, so do that
now to be on the safe side.

V10 and V11 only need the smaller sizes, while V12 and V13 needed
the larger sizes.

When adding the bigger sizes make sure, values filled from hardware
values and transmitted to userspace don't leak kernel data by zeroing
them beforehand.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
 .../platform/rockchip/rkisp1/rkisp1-params.c  |  2 +-
 .../platform/rockchip/rkisp1/rkisp1-stats.c   | 12 +++-
 include/uapi/linux/rkisp1-config.h            | 66 ++++++++++++++++---
 3 files changed, 67 insertions(+), 13 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index 021939466b24..aa5f45749543 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -391,7 +391,7 @@ static void rkisp1_goc_config(struct rkisp1_params *params,
 				RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
 	rkisp1_write(params->rkisp1, arg->mode, RKISP1_CIF_ISP_GAMMA_OUT_MODE);
 
-	for (i = 0; i < RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES; i++)
+	for (i = 0; i < RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V10; i++)
 		rkisp1_write(params->rkisp1, arg->gamma_y[i],
 			     RKISP1_CIF_ISP_GAMMA_OUT_Y_0 + i * 4);
 }
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
index 4cdb180fa64d..0f36e12e7533 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
@@ -202,8 +202,12 @@ static void rkisp1_stats_get_aec_meas(struct rkisp1_stats *stats,
 	struct rkisp1_device *rkisp1 = stats->rkisp1;
 	unsigned int i;
 
+	/* the global max can be bigger than the version-specific one */
+	memset(pbuf->params.ae.exp_mean, 0, RKISP1_CIF_ISP_AE_MEAN_MAX *
+					    sizeof(*pbuf->params.ae.exp_mean));
+
 	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_AUTOEXP;
-	for (i = 0; i < RKISP1_CIF_ISP_AE_MEAN_MAX; i++)
+	for (i = 0; i < RKISP1_CIF_ISP_AE_MEAN_MAX_V10; i++)
 		pbuf->params.ae.exp_mean[i] =
 			(u8)rkisp1_read(rkisp1,
 					RKISP1_CIF_ISP_EXP_MEAN_00 + i * 4);
@@ -232,8 +236,12 @@ static void rkisp1_stats_get_hst_meas(struct rkisp1_stats *stats,
 	struct rkisp1_device *rkisp1 = stats->rkisp1;
 	unsigned int i;
 
+	/* the global max can be bigger than the version-specific one */
+	memset(pbuf->params.hist.hist_bins, 0, RKISP1_CIF_ISP_HIST_BIN_N_MAX *
+					       sizeof(*pbuf->params.hist.hist_bins));
+
 	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
-	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
+	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX_V10; i++)
 		pbuf->params.hist.hist_bins[i] =
 			rkisp1_read(rkisp1, RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
 }
diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index 17217c55708f..340011359968 100644
--- a/include/uapi/linux/rkisp1-config.h
+++ b/include/uapi/linux/rkisp1-config.h
@@ -49,8 +49,14 @@
 #define RKISP1_CIF_ISP_CTK_COEFF_MAX            0x100
 #define RKISP1_CIF_ISP_CTK_OFFSET_MAX           0x800
 
-#define RKISP1_CIF_ISP_AE_MEAN_MAX              25
-#define RKISP1_CIF_ISP_HIST_BIN_N_MAX           16
+#define RKISP1_CIF_ISP_AE_MEAN_MAX_V10		25
+#define RKISP1_CIF_ISP_AE_MEAN_MAX_V12		81
+#define RKISP1_CIF_ISP_AE_MEAN_MAX		RKISP1_CIF_ISP_AE_MEAN_MAX_V12
+
+#define RKISP1_CIF_ISP_HIST_BIN_N_MAX_V10	16
+#define RKISP1_CIF_ISP_HIST_BIN_N_MAX_V12	32
+#define RKISP1_CIF_ISP_HIST_BIN_N_MAX		RKISP1_CIF_ISP_HIST_BIN_N_MAX_V12
+
 #define RKISP1_CIF_ISP_AFM_MAX_WINDOWS          3
 #define RKISP1_CIF_ISP_DEGAMMA_CURVE_SIZE       17
 
@@ -86,7 +92,9 @@
  * Gamma out
  */
 /* Maximum number of color samples supported */
-#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       17
+#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V10   17
+#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V12   34
+#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V12
 
 /*
  * Lens shade correction
@@ -102,7 +110,9 @@
 /*
  * Histogram calculation
  */
-#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 25
+#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V10 25
+#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V12 81
+#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE     RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V12
 
 /*
  * Defect Pixel Cluster Correction
@@ -524,6 +534,15 @@ enum rkisp1_cif_isp_goc_mode {
  *
  * @mode: goc mode (from enum rkisp1_cif_isp_goc_mode)
  * @gamma_y: gamma out curve y-axis for all color components
+ *
+ * The number of entries of @gamma_y depends on the hardware revision
+ * as is reported by the hw_revision field of the struct media_device_info
+ * that is returned by ioctl MEDIA_IOC_DEVICE_INFO.
+ *
+ * Versions <= V11 have RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V10
+ * entries, versions >= V12 have RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V12
+ * entries. RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES is equal to the maximum
+ * of the two.
  */
 struct rkisp1_cif_isp_goc_config {
 	__u32 mode;
@@ -538,6 +557,15 @@ struct rkisp1_cif_isp_goc_config {
  *			  skipped
  * @meas_window: coordinates of the measure window
  * @hist_weight: weighting factor for sub-windows
+ *
+ * The number of entries of @hist_weight depends on the hardware revision
+ * as is reported by the hw_revision field of the struct media_device_info
+ * that is returned by ioctl MEDIA_IOC_DEVICE_INFO.
+ *
+ * Versions <= V11 have RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V10
+ * entries, versions >= V12 have RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V12
+ * entries. RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE is equal to the maximum
+ * of the two.
  */
 struct rkisp1_cif_isp_hst_config {
 	__u32 mode;
@@ -825,7 +853,15 @@ struct rkisp1_cif_isp_bls_meas_val {
  * @exp_mean: Mean luminance value of block xx
  * @bls_val:  BLS measured values
  *
- * Image is divided into 5x5 blocks.
+ * The number of entries of @exp_mean depends on the hardware revision
+ * as is reported by the hw_revision field of the struct media_device_info
+ * that is returned by ioctl MEDIA_IOC_DEVICE_INFO.
+ *
+ * Versions <= V11 have RKISP1_CIF_ISP_AE_MEAN_MAX_V10 entries,
+ * versions >= V12 have RKISP1_CIF_ISP_AE_MEAN_MAX_V12 entries.
+ * RKISP1_CIF_ISP_AE_MEAN_MAX is equal to the maximum of the two.
+ *
+ * Image is divided into 5x5 blocks on V10 and 9x9 blocks on V12.
  */
 struct rkisp1_cif_isp_ae_stat {
 	__u8 exp_mean[RKISP1_CIF_ISP_AE_MEAN_MAX];
@@ -861,11 +897,21 @@ struct rkisp1_cif_isp_af_stat {
  * @hist_bins: measured bin counters. Each bin is a 20 bits unsigned fixed point type.
  *	       Bits 0-4 are the fractional part and bits 5-19 are the integer part.
  *
- * The window of the measurements area is divided to 5x5 sub-windows. The histogram
- * is then computed for each sub-window independently and the final result is a weighted
- * average of the histogram measurements on all sub-windows.
- * The window of the measurements area and the weight of each sub-window are configurable
- * using struct @rkisp1_cif_isp_hst_config.
+ * The window of the measurements area is divided to 5x5 sub-windows for V10/V11 and
+ * to 9x9 sub-windows for V12. The histogram is computed for each sub-window
+ * independently and the final result is a weighted average of the histogram measurements
+ * on all sub-windows. The window of the measurements area and the weight of each
+ * sub-window are configurable using struct @rkisp1_cif_isp_hst_config.
+ *
+ * The histogram contains 16 bins in V10/V11 and 32 bins in V12/V13.
+ *
+ * The number of entries of @hist_bins depends on the hardware revision
+ * as is reported by the hw_revision field of the struct media_device_info
+ * that is returned by ioctl MEDIA_IOC_DEVICE_INFO.
+ *
+ * Versions <= V11 have RKISP1_CIF_ISP_HIST_BIN_N_MAX_V10 entries,
+ * versions >= V12 have RKISP1_CIF_ISP_HIST_BIN_N_MAX_V12 entries.
+ * RKISP1_CIF_ISP_HIST_BIN_N_MAX is equal to the maximum of the two.
  */
 struct rkisp1_cif_isp_hist_stat {
 	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
