Return-Path: <SRS0=MHCR=GS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61559C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 16:38:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9CE2F2313E
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 16:38:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9CE2F2313E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=asbLKYolvXiCB0xO+j7Wpup9lif2r+d6AyuUaw8PFDE=; b=JORE1fl+tD9qH+3BcplqlzaP1
	9oK8SOfAAQUm0Q5nHobDyUQeuQrreYImGjInJHuGK2SjuQU6XhxKEPuOm8oohEEMvpqxyRMnfguDs
	SQb4sOOJHNYoEZAGeXX0mdNnKhIodi0ebtekD4W8dlxZT+Lj5il+eg8pKkH5J+T/scXlbvkjz19x5
	6W9ivUDUCkOItXtTq6cVD8lTG4k/xPfWerf4JtJwRUfqhLV6ws05+KU9y+vtPGM+6LrBip2qpATfY
	yZ+k+t5UlVTIANPHkwAdrw6H4hjSJNAgpbN2Qh7nq41nSEvr0PrzryPRWIe8/xNoV2VILrtvwYhDE
	IgESZ90Ig==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0S7c-0004Ff-Nd; Fri, 15 Jan 2021 16:38:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0S7V-0004C8-9p
 for linux-rockchip@lists.infradead.org; Fri, 15 Jan 2021 16:38:45 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l0S7O-0006YA-Lw; Fri, 15 Jan 2021 17:38:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
Subject: [PATCH v4 3/3] media: rockchip: rkisp1: extend uapi array sizes
Date: Fri, 15 Jan 2021 17:38:29 +0100
Message-Id: <20210115163829.217131-4-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115163829.217131-1-heiko@sntech.de>
References: <20210115163829.217131-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210115_113841_519560_0C50BE8B 
X-CRM114-Status: GOOD (  16.05  )
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Later variants of the rkisp1 block use more entries in some arrays:

RKISP1_CIF_ISP_AE_MEAN_MAX                 25 -> 81
RKISP1_CIF_ISP_HIST_BIN_N_MAX              16 -> 32
RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       17 -> 34
RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 28 -> 81

and we can still extend the uapi during the 5.11-rc cycle, so do that
now to be on the safe side.

V10 and V11 only need the smaller sizes, while V12 and V13 needed
the larger sizes.

When adding the bigger sizes make sure, values filled from hardware
values and transmitted to userspace don't leak kernel data by zeroing
them beforehand.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 .../platform/rockchip/rkisp1/rkisp1-params.c  |  2 +-
 .../platform/rockchip/rkisp1/rkisp1-stats.c   | 12 +++-
 include/uapi/linux/rkisp1-config.h            | 58 ++++++++++++++++---
 3 files changed, 62 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index 6af4d551ffb5..fa47fe2a02d0 100644
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
index 3ddab8fa8f2d..a26de388ca13 100644
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
 
+	/* the global max can be bigger then the version-specific one */
+	memset(pbuf->params.hist.hist_bins, 0, RKISP1_CIF_ISP_HIST_BIN_N_MAX *
+					       sizeof(*pbuf->params.hist.hist_bins));
+
 	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
-	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
+	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX_V10; i++)
 		pbuf->params.hist.hist_bins[i] =
 			(u8)rkisp1_read(rkisp1,
 					RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index 9fecb6bc457d..e566069275cf 100644
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
@@ -103,7 +111,9 @@
  * Histogram calculation
  */
 /* Last 3 values unused. */
-#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 28
+#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V10 28
+#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V12 81
+#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE     RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V12
 
 /*
  * Defect Pixel Cluster Correction
@@ -526,6 +536,15 @@ enum rkisp1_cif_isp_goc_mode {
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
@@ -540,6 +559,15 @@ struct rkisp1_cif_isp_goc_config {
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
@@ -827,7 +855,15 @@ struct rkisp1_cif_isp_bls_meas_val {
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
@@ -862,8 +898,16 @@ struct rkisp1_cif_isp_af_stat {
  *
  * @hist_bins: measured bin counters
  *
- * Measurement window divided into 16 sub-windows, set
- * with ISP_HIST_XXX
+ * Measurement window divided into 16 sub-windows for V10/V10
+ * and 32 sub-windows for V12/V13, set with ISP_HIST_XXX
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
 	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
