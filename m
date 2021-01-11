Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDB2AC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 23:41:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 36ED622BED
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 23:41:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 36ED622BED
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZQAoWUfvvpF67/AdDKZz2Jx5OLTny29Gc7dBKXJs2Tc=; b=xFbqZXkpMoTBrwr8NNgQj1+wE
	Yx+7p0M5frBwkdJUBH/agxwtcN4PrPDSdYgw9E28kejCGqWM6nfJkCasGzKzOzkQkrgf2mJ5+08X4
	5iYE5d/ZEXPWWdTrrkeKfsAQCRzz15nxcWdrHFbowPeleQNlcboryUCJZqRqISox2nkqMyz1x3R/c
	ercn6DCg8M9yVZ4AKqs7suvGIZ1URLP5FhedvifvcfeeEFToYb2D1kN5xLaeCzu05AcE+Q856X9ok
	lnKk94id9dMNLw84N9AF5Jez47mTN3UYk/Vz4aCLbV+kcb3dLvkgPDJvyhKnN4jJdgyK4dttz9rPO
	TfNXOgnww==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kz6o1-0000oC-2h; Mon, 11 Jan 2021 23:41:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kz6ny-0000l3-Bb
 for linux-rockchip@lists.infradead.org; Mon, 11 Jan 2021 23:40:59 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kz6nm-0001p6-Pl; Tue, 12 Jan 2021 00:40:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
Subject: [PATCH 2/2] media: rockchip: rkisp1: extend uapi array sizes
Date: Tue, 12 Jan 2021 00:40:11 +0100
Message-Id: <20210111234011.3642481-3-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111234011.3642481-1-heiko@sntech.de>
References: <20210111234011.3642481-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_184058_439054_D24C367E 
X-CRM114-Status: GOOD (  10.67  )
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com, heiko@sntech.de,
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

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
changes since rfc:
- introduce constants for versions and make max use the biggest

 include/uapi/linux/rkisp1-config.h | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index bad46aadf838..20d24656a8b7 100644
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
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
