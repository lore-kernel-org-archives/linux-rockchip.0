Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7986AC48BF8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 20:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSyVop+GOypAtpeqkKhe1nKZhjOHouwDyT/hQQQFFIA=; b=O3aQeekhFJSSoe
	QqMqvlTkWlpRow83UuO4G+hLv2YjCeGK+oztVHT249bMUxDbQLYX6xzvnPi+qP4qfPZwv8h/aUvln
	PSOg6faV/mCc/Lgzr0DBikLzTmA1moDCvDluYYGVrEwVVooeAh5zNLpQnvdJrt2e+QuIOiekWI7W2
	Mx9LzrgpCSK/RdceUC4dJi3YbrVz/Sq2hchMVD35UMKbIh3Na3M1rUWw4O9Xsq4TnzBP+iywZLj/C
	hAO3Gn7tyIUScemS0UHgqsiaAiuW8DK9zmlDMEjEWV+6IlstbSP2uKAmy7m2ZMBv50vc85ILXvYyW
	oR3yTjhWvNylRLECLXwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo12-00000008PNn-3hpN;
	Sun, 18 Feb 2024 20:44:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo0x-00000008PIQ-44R3
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Feb 2024 20:43:57 +0000
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BCCA91C42;
	Sun, 18 Feb 2024 21:43:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708289029;
	bh=OC0mQkPUdulodtG7ZPltjjVGbNlALjHSu3YZQme0GXI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GLHUPIK1Njczz3Qwc8S9SotaQ0+0H+UoeQh2x4NMd3iF0SbJ3dH4BRN3PkdGjgW6g
	 38c2SEzAR5isMbfI+iWTwfH/6ensd8noX2UEXutDs/YIuZH7yMjcEc9H2jYILqvJMe
	 JagBN3yfE+C/+vScVrfIO63yiV9/XSIYYFkHpa58=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Adam Ford <aford173@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v13 06/12] media: rkisp1: Add version enum for i.MX8MP ISP
Date: Sun, 18 Feb 2024 22:43:44 +0200
Message-ID: <20240218204350.10916-7-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
References: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_124356_213887_80CC4061 
X-CRM114-Status: GOOD (  18.23  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

The NXP i.MX8MP integrates an ISP8000Nano from VeriSilicon, which is a
derivative of the ISP found in earlier Rockchip SoCs. It isn't clear at
which exact point the two product lines have diverged, and there is no
public information regarding the version numbering scheme of the
ISP8000Nano. Nonetheless, this ISP is close enough to the V10 found in
the RK3399 to be supported by the same driver.

Add an entry for the ISP found in the NXP i.MX8MP to the version enum.
Given the lack of information on the version numbering scheme, and on
whether or not the version in the i.MX8MP is identical to other
ISP8000Nano versions or has been customized for the i.MX8MP, depart from
the number-based versions and name this new version V_IMX8MP.

Update comments for the other versions and for relevant parameters
blocks to clearly indicate the size of grids and histogram for the
different versions.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v12:

- Update comments

New in v12:

- Split out from "media: rkisp1: Add match data for i.MX8MP ISP"
- Changed the version enum name
---
 include/uapi/linux/rkisp1-config.h | 50 ++++++++++++++++--------------
 1 file changed, 27 insertions(+), 23 deletions(-)

diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index 730673ecc63d..6eeaf8bf2362 100644
--- a/include/uapi/linux/rkisp1-config.h
+++ b/include/uapi/linux/rkisp1-config.h
@@ -175,16 +175,21 @@
 /**
  * enum rkisp1_cif_isp_version - ISP variants
  *
- * @RKISP1_V10: used at least in rk3288 and rk3399
- * @RKISP1_V11: declared in the original vendor code, but not used
- * @RKISP1_V12: used at least in rk3326 and px30
- * @RKISP1_V13: used at least in rk1808
+ * @RKISP1_V10: Used at least in RK3288 and RK3399.
+ * @RKISP1_V11: Declared in the original vendor code, but not used. Same number
+ *	of entries in grids and histogram as v10.
+ * @RKISP1_V12: Used at least in RK3326 and PX30.
+ * @RKISP1_V13: Used at least in RK1808. Same number of entries in grids and
+ *	histogram as v12.
+ * @RKISP1_V_IMX8MP: Used in at least i.MX8MP. Same number of entries in grids
+ *	and histogram as v10.
  */
 enum rkisp1_cif_isp_version {
 	RKISP1_V10 = 10,
 	RKISP1_V11,
 	RKISP1_V12,
 	RKISP1_V13,
+	RKISP1_V_IMX8MP,
 };
 
 enum rkisp1_cif_isp_histogram_mode {
@@ -584,10 +589,9 @@ enum rkisp1_cif_isp_goc_mode {
  * as is reported by the hw_revision field of the struct media_device_info
  * that is returned by ioctl MEDIA_IOC_DEVICE_INFO.
  *
- * Versions <= V11 have RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V10
- * entries, versions >= V12 have RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V12
- * entries. RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES is equal to the maximum
- * of the two.
+ * V10 has RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V10 entries, V12 has
+ * RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V12 entries.
+ * RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES is equal to the maximum of the two.
  */
 struct rkisp1_cif_isp_goc_config {
 	__u32 mode;
@@ -607,10 +611,10 @@ struct rkisp1_cif_isp_goc_config {
  * as is reported by the hw_revision field of the struct media_device_info
  * that is returned by ioctl MEDIA_IOC_DEVICE_INFO.
  *
- * Versions <= V11 have RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V10
- * entries, versions >= V12 have RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V12
- * entries. RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE is equal to the maximum
- * of the two.
+ * V10 has RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V10 entries, V12 has
+ * RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V12 entries.
+ * RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE is equal to the maximum of the
+ * two.
  */
 struct rkisp1_cif_isp_hst_config {
 	__u32 mode;
@@ -902,9 +906,9 @@ struct rkisp1_cif_isp_bls_meas_val {
  * as is reported by the hw_revision field of the struct media_device_info
  * that is returned by ioctl MEDIA_IOC_DEVICE_INFO.
  *
- * Versions <= V11 have RKISP1_CIF_ISP_AE_MEAN_MAX_V10 entries,
- * versions >= V12 have RKISP1_CIF_ISP_AE_MEAN_MAX_V12 entries.
- * RKISP1_CIF_ISP_AE_MEAN_MAX is equal to the maximum of the two.
+ * V10 has RKISP1_CIF_ISP_AE_MEAN_MAX_V10 entries, V12 has
+ * RKISP1_CIF_ISP_AE_MEAN_MAX_V12 entries. RKISP1_CIF_ISP_AE_MEAN_MAX is equal
+ * to the maximum of the two.
  *
  * Image is divided into 5x5 blocks on V10 and 9x9 blocks on V12.
  */
@@ -944,21 +948,21 @@ struct rkisp1_cif_isp_af_stat {
  *	       integer part.
  *
  * The window of the measurements area is divided to 5x5 sub-windows for
- * V10/V11 and to 9x9 sub-windows for V12. The histogram is then computed for
- * each sub-window independently and the final result is a weighted average of
- * the histogram measurements on all sub-windows. The window of the
- * measurements area and the weight of each sub-window are configurable using
+ * V10 and to 9x9 sub-windows for V12. The histogram is then computed for each
+ * sub-window independently and the final result is a weighted average of the
+ * histogram measurements on all sub-windows. The window of the measurements
+ * area and the weight of each sub-window are configurable using
  * struct @rkisp1_cif_isp_hst_config.
  *
- * The histogram contains 16 bins in V10/V11 and 32 bins in V12/V13.
+ * The histogram contains 16 bins in V10 and 32 bins in V12.
  *
  * The number of entries of @hist_bins depends on the hardware revision
  * as is reported by the hw_revision field of the struct media_device_info
  * that is returned by ioctl MEDIA_IOC_DEVICE_INFO.
  *
- * Versions <= V11 have RKISP1_CIF_ISP_HIST_BIN_N_MAX_V10 entries,
- * versions >= V12 have RKISP1_CIF_ISP_HIST_BIN_N_MAX_V12 entries.
- * RKISP1_CIF_ISP_HIST_BIN_N_MAX is equal to the maximum of the two.
+ * V10 has RKISP1_CIF_ISP_HIST_BIN_N_MAX_V10 entries, V12 has
+ * RKISP1_CIF_ISP_HIST_BIN_N_MAX_V12 entries. RKISP1_CIF_ISP_HIST_BIN_N_MAX is
+ * equal to the maximum of the two.
  */
 struct rkisp1_cif_isp_hist_stat {
 	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
