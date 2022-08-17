Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95528C32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 02:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4r4Pd5xwkiRkWw7KoK2KpQJkjbu1TCTwIVZNECGAu0=; b=Fe427wABDxaE5X
	qzYsTDD1ZPgEplEDqr1usykgq7/3qJkVV2mrYEqBIRJd6PpXaasTLJY4hYcsNCI5iNTShzAWkq7An
	Cuq6ILNFx6N5/WHg8FP5PPK0CBYdn+wCOZ4C8KoDer4Yuf94tRKznOe+hybJT1eyeu116oR8l51n/
	h+divrKPYReR8KLRHfoTr3rqMZJU9MZATlHhmSa0vwcGpOVYs+nzLVySGVdO7gdDkrJ6dMMuzxa12
	bUJWrKE6VCX9mlIwBSlY5v1ml7X/ytTlZsp9Fuvc6P2jZd4lxub0IYVKUt1f2cpLPXrV4ZuLSr/j4
	kaES0jVvToERgrUUf/9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO8eK-0090sx-Au; Wed, 17 Aug 2022 02:19:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO8eG-0090oo-Aq
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 02:19:14 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2270E49C;
	Wed, 17 Aug 2022 04:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1660702746;
	bh=UgBFpceUKYINrF0hnK0qCTKp04e7QXz354ww3hAKJV4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=wUbs5oONblMC/bO+XYB9ilSSUE0/KzX6EEJQcqBOTQA9DO6HBFFE6KkIlm42KGVQm
	 rl2W/4rkhyF/E2KBkaOUEzS9Jbkn89A0QzIT6HO5v8bEFG7H8puZAPlPBqyLrDT+ws
	 SWMAof9Bzoz7bNJ7CswbZZYXHrtXGyYFcMAFDuwI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: [PATCH 1/5] media: rkisp1: Clean up LSC configuration code
Date: Wed, 17 Aug 2022 05:18:46 +0300
Message-Id: <20220817021850.20460-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_191912_564912_E17932B9 
X-CRM114-Status: GOOD (  11.71  )
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

Clean up the LSC configuration code to improve its readability by
shortening lines, using extra local variables and renaming long
variables. No functional change intended.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-params.c  | 199 ++++++++----------
 1 file changed, 86 insertions(+), 113 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index 246a6faa1fc1..fbbaf5505291 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -198,149 +198,129 @@ static void
 rkisp1_lsc_matrix_config_v10(struct rkisp1_params *params,
 			     const struct rkisp1_cif_isp_lsc_config *pconfig)
 {
-	unsigned int isp_lsc_status, sram_addr, isp_lsc_table_sel, i, j, data;
+	struct rkisp1_device *rkisp1 = params->rkisp1;
+	unsigned int lsc_status, sram_addr, lsc_table_sel, i, j;
 
-	isp_lsc_status = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_LSC_STATUS);
+	lsc_status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_LSC_STATUS);
 
 	/* RKISP1_CIF_ISP_LSC_TABLE_ADDRESS_153 = ( 17 * 18 ) >> 1 */
-	sram_addr = (isp_lsc_status & RKISP1_CIF_ISP_LSC_ACTIVE_TABLE) ?
+	sram_addr = lsc_status & RKISP1_CIF_ISP_LSC_ACTIVE_TABLE ?
 		    RKISP1_CIF_ISP_LSC_TABLE_ADDRESS_0 :
 		    RKISP1_CIF_ISP_LSC_TABLE_ADDRESS_153;
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_R_TABLE_ADDR, sram_addr);
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_GR_TABLE_ADDR, sram_addr);
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_GB_TABLE_ADDR, sram_addr);
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_B_TABLE_ADDR, sram_addr);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_R_TABLE_ADDR, sram_addr);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GR_TABLE_ADDR, sram_addr);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GB_TABLE_ADDR, sram_addr);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_B_TABLE_ADDR, sram_addr);
 
 	/* program data tables (table size is 9 * 17 = 153) */
 	for (i = 0; i < RKISP1_CIF_ISP_LSC_SAMPLES_MAX; i++) {
+		const __u16 *r_tbl = pconfig->r_data_tbl[i];
+		const __u16 *gr_tbl = pconfig->gr_data_tbl[i];
+		const __u16 *gb_tbl = pconfig->gb_data_tbl[i];
+		const __u16 *b_tbl = pconfig->b_data_tbl[i];
+
 		/*
 		 * 17 sectors with 2 values in one DWORD = 9
 		 * DWORDs (2nd value of last DWORD unused)
 		 */
 		for (j = 0; j < RKISP1_CIF_ISP_LSC_SAMPLES_MAX - 1; j += 2) {
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(pconfig->r_data_tbl[i][j],
-								 pconfig->r_data_tbl[i][j + 1]);
-			rkisp1_write(params->rkisp1,
-				     RKISP1_CIF_ISP_LSC_R_TABLE_DATA, data);
-
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(pconfig->gr_data_tbl[i][j],
-								 pconfig->gr_data_tbl[i][j + 1]);
-			rkisp1_write(params->rkisp1,
-				     RKISP1_CIF_ISP_LSC_GR_TABLE_DATA, data);
-
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(pconfig->gb_data_tbl[i][j],
-								 pconfig->gb_data_tbl[i][j + 1]);
-			rkisp1_write(params->rkisp1,
-				     RKISP1_CIF_ISP_LSC_GB_TABLE_DATA, data);
-
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(pconfig->b_data_tbl[i][j],
-								 pconfig->b_data_tbl[i][j + 1]);
-			rkisp1_write(params->rkisp1,
-				     RKISP1_CIF_ISP_LSC_B_TABLE_DATA, data);
+			rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_R_TABLE_DATA,
+				     RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(
+					r_tbl[j], r_tbl[j + 1]));
+			rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GR_TABLE_DATA,
+				     RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(
+					gr_tbl[j], gr_tbl[j + 1]));
+			rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GB_TABLE_DATA,
+				     RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(
+					gb_tbl[j], gb_tbl[j + 1]));
+			rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_B_TABLE_DATA,
+				     RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(
+					b_tbl[j], b_tbl[j + 1]));
 		}
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(pconfig->r_data_tbl[i][j], 0);
-		rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_R_TABLE_DATA,
-			     data);
 
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(pconfig->gr_data_tbl[i][j], 0);
-		rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_GR_TABLE_DATA,
-			     data);
-
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(pconfig->gb_data_tbl[i][j], 0);
-		rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_GB_TABLE_DATA,
-			     data);
-
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(pconfig->b_data_tbl[i][j], 0);
-		rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_B_TABLE_DATA,
-			     data);
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_R_TABLE_DATA,
+			     RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(r_tbl[j], 0));
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GR_TABLE_DATA,
+			     RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(gr_tbl[j], 0));
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GB_TABLE_DATA,
+			     RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(gb_tbl[j], 0));
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_B_TABLE_DATA,
+			     RKISP1_CIF_ISP_LSC_TABLE_DATA_V10(b_tbl[j], 0));
 	}
-	isp_lsc_table_sel = (isp_lsc_status & RKISP1_CIF_ISP_LSC_ACTIVE_TABLE) ?
-			    RKISP1_CIF_ISP_LSC_TABLE_0 :
-			    RKISP1_CIF_ISP_LSC_TABLE_1;
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_TABLE_SEL,
-		     isp_lsc_table_sel);
+
+	lsc_table_sel = lsc_status & RKISP1_CIF_ISP_LSC_ACTIVE_TABLE ?
+			RKISP1_CIF_ISP_LSC_TABLE_0 : RKISP1_CIF_ISP_LSC_TABLE_1;
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_TABLE_SEL, lsc_table_sel);
 }
 
 static void
 rkisp1_lsc_matrix_config_v12(struct rkisp1_params *params,
 			     const struct rkisp1_cif_isp_lsc_config *pconfig)
 {
-	unsigned int isp_lsc_status, sram_addr, isp_lsc_table_sel, i, j, data;
+	struct rkisp1_device *rkisp1 = params->rkisp1;
+	unsigned int lsc_status, sram_addr, lsc_table_sel, i, j;
 
-	isp_lsc_status = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_LSC_STATUS);
+	lsc_status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_LSC_STATUS);
 
 	/* RKISP1_CIF_ISP_LSC_TABLE_ADDRESS_153 = ( 17 * 18 ) >> 1 */
-	sram_addr = (isp_lsc_status & RKISP1_CIF_ISP_LSC_ACTIVE_TABLE) ?
-		     RKISP1_CIF_ISP_LSC_TABLE_ADDRESS_0 :
-		     RKISP1_CIF_ISP_LSC_TABLE_ADDRESS_153;
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_R_TABLE_ADDR, sram_addr);
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_GR_TABLE_ADDR, sram_addr);
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_GB_TABLE_ADDR, sram_addr);
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_B_TABLE_ADDR, sram_addr);
+	sram_addr = lsc_status & RKISP1_CIF_ISP_LSC_ACTIVE_TABLE ?
+		    RKISP1_CIF_ISP_LSC_TABLE_ADDRESS_0 :
+		    RKISP1_CIF_ISP_LSC_TABLE_ADDRESS_153;
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_R_TABLE_ADDR, sram_addr);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GR_TABLE_ADDR, sram_addr);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GB_TABLE_ADDR, sram_addr);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_B_TABLE_ADDR, sram_addr);
 
 	/* program data tables (table size is 9 * 17 = 153) */
 	for (i = 0; i < RKISP1_CIF_ISP_LSC_SAMPLES_MAX; i++) {
+		const __u16 *r_tbl = pconfig->r_data_tbl[i];
+		const __u16 *gr_tbl = pconfig->gr_data_tbl[i];
+		const __u16 *gb_tbl = pconfig->gb_data_tbl[i];
+		const __u16 *b_tbl = pconfig->b_data_tbl[i];
+
 		/*
 		 * 17 sectors with 2 values in one DWORD = 9
 		 * DWORDs (2nd value of last DWORD unused)
 		 */
 		for (j = 0; j < RKISP1_CIF_ISP_LSC_SAMPLES_MAX - 1; j += 2) {
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(
-					pconfig->r_data_tbl[i][j],
-					pconfig->r_data_tbl[i][j + 1]);
-			rkisp1_write(params->rkisp1,
-				     RKISP1_CIF_ISP_LSC_R_TABLE_DATA, data);
-
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(
-					pconfig->gr_data_tbl[i][j],
-					pconfig->gr_data_tbl[i][j + 1]);
-			rkisp1_write(params->rkisp1,
-				     RKISP1_CIF_ISP_LSC_GR_TABLE_DATA, data);
-
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(
-					pconfig->gb_data_tbl[i][j],
-					pconfig->gb_data_tbl[i][j + 1]);
-			rkisp1_write(params->rkisp1,
-				     RKISP1_CIF_ISP_LSC_GB_TABLE_DATA, data);
-
-			data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(
-					pconfig->b_data_tbl[i][j],
-					pconfig->b_data_tbl[i][j + 1]);
-			rkisp1_write(params->rkisp1,
-				     RKISP1_CIF_ISP_LSC_B_TABLE_DATA, data);
+			rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_R_TABLE_DATA,
+				     RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(
+					r_tbl[j], r_tbl[j + 1]));
+			rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GR_TABLE_DATA,
+				     RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(
+					gr_tbl[j], gr_tbl[j + 1]));
+			rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GB_TABLE_DATA,
+				     RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(
+					gb_tbl[j], gb_tbl[j + 1]));
+			rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_B_TABLE_DATA,
+				     RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(
+					b_tbl[j], b_tbl[j + 1]));
 		}
 
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(pconfig->r_data_tbl[i][j], 0);
-		rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_R_TABLE_DATA,
-			     data);
-
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(pconfig->gr_data_tbl[i][j], 0);
-		rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_GR_TABLE_DATA,
-			     data);
-
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(pconfig->gb_data_tbl[i][j], 0);
-		rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_GB_TABLE_DATA,
-			     data);
-
-		data = RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(pconfig->b_data_tbl[i][j], 0);
-		rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_B_TABLE_DATA,
-			     data);
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_R_TABLE_DATA,
+			     RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(r_tbl[j], 0));
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GR_TABLE_DATA,
+			     RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(gr_tbl[j], 0));
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_GB_TABLE_DATA,
+			     RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(gb_tbl[j], 0));
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_B_TABLE_DATA,
+			     RKISP1_CIF_ISP_LSC_TABLE_DATA_V12(b_tbl[j], 0));
 	}
-	isp_lsc_table_sel = (isp_lsc_status & RKISP1_CIF_ISP_LSC_ACTIVE_TABLE) ?
-			    RKISP1_CIF_ISP_LSC_TABLE_0 :
-			    RKISP1_CIF_ISP_LSC_TABLE_1;
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_LSC_TABLE_SEL,
-		     isp_lsc_table_sel);
+
+	lsc_table_sel = lsc_status & RKISP1_CIF_ISP_LSC_ACTIVE_TABLE ?
+			RKISP1_CIF_ISP_LSC_TABLE_0 : RKISP1_CIF_ISP_LSC_TABLE_1;
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_TABLE_SEL, lsc_table_sel);
 }
 
 static void rkisp1_lsc_config(struct rkisp1_params *params,
 			      const struct rkisp1_cif_isp_lsc_config *arg)
 {
+	struct rkisp1_device *rkisp1 = params->rkisp1;
 	unsigned int i, data;
 	u32 lsc_ctrl;
 
 	/* To config must be off , store the current status firstly */
-	lsc_ctrl = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_LSC_CTRL);
+	lsc_ctrl = rkisp1_read(rkisp1, RKISP1_CIF_ISP_LSC_CTRL);
 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_LSC_CTRL,
 				RKISP1_CIF_ISP_LSC_CTRL_ENA);
 	params->ops->lsc_matrix_config(params, arg);
@@ -349,38 +329,31 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
 		/* program x size tables */
 		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->x_size_tbl[i * 2],
 						    arg->x_size_tbl[i * 2 + 1]);
-		rkisp1_write(params->rkisp1,
-			     RKISP1_CIF_ISP_LSC_XSIZE_01 + i * 4, data);
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XSIZE_01 + i * 4, data);
 
 		/* program x grad tables */
 		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->x_grad_tbl[i * 2],
 						    arg->x_grad_tbl[i * 2 + 1]);
-		rkisp1_write(params->rkisp1,
-			     RKISP1_CIF_ISP_LSC_XGRAD_01 + i * 4, data);
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XGRAD_01 + i * 4, data);
 
 		/* program y size tables */
 		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->y_size_tbl[i * 2],
 						    arg->y_size_tbl[i * 2 + 1]);
-		rkisp1_write(params->rkisp1,
-			     RKISP1_CIF_ISP_LSC_YSIZE_01 + i * 4, data);
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YSIZE_01 + i * 4, data);
 
 		/* program y grad tables */
 		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->y_grad_tbl[i * 2],
 						    arg->y_grad_tbl[i * 2 + 1]);
-		rkisp1_write(params->rkisp1,
-			     RKISP1_CIF_ISP_LSC_YGRAD_01 + i * 4, data);
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YGRAD_01 + i * 4, data);
 	}
 
 	/* restore the lsc ctrl status */
-	if (lsc_ctrl & RKISP1_CIF_ISP_LSC_CTRL_ENA) {
-		rkisp1_param_set_bits(params,
-				      RKISP1_CIF_ISP_LSC_CTRL,
+	if (lsc_ctrl & RKISP1_CIF_ISP_LSC_CTRL_ENA)
+		rkisp1_param_set_bits(params, RKISP1_CIF_ISP_LSC_CTRL,
 				      RKISP1_CIF_ISP_LSC_CTRL_ENA);
-	} else {
-		rkisp1_param_clear_bits(params,
-					RKISP1_CIF_ISP_LSC_CTRL,
+	else
+		rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_LSC_CTRL,
 					RKISP1_CIF_ISP_LSC_CTRL_ENA);
-	}
 }
 
 /* ISP Filtering function */
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
