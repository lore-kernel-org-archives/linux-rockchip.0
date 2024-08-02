Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0046C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 15:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6HfkcHaUnDNnVb+RjYRJxXmgvUioZVqNczRx/beLps=; b=fogeFijDPeDvc3
	Gx4Agxu6Aq9Li9i0EmiApmrY0ua2Oa9Qt2oeMHaChxbl6qYicaZoNqX/kfG3soxNGm58c6wLv2BAm
	GoeFmHlJ9YHK1vsJmDc21ld6vAXDbhC01o1XILBeivOF/t4YIRot89pnseITmrxzKDFb2AmWMtsl4
	PyzhkWv9E5jZ04DoqeEXyLXUnqhyfSicBmDIKYVsn19oWapc7vZxAK2uKnfov70VM5qW81lNTGPUa
	jq5rPeYpcdIozYGo3fifqL1cB8VA1H6TjutMyWOTIiu+0lK2iUkbCV2ZI+IS2RuCS/AY4aww7UKkQ
	Ue3Vxd+yYj5TUksJBJqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZuL2-00000009J15-2SUN;
	Fri, 02 Aug 2024 15:37:04 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZuJE-00000009IUj-1L0c;
	Fri, 02 Aug 2024 15:35:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722612911;
	bh=z2m7rdJRjSSkpgHIp/CcdROPL0hJ/0DvigisgdXbfME=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WEQ5u3DoHjLzMXHRVVfyP/wPVGW6pCIr4lwG58OQU0OsmZiRCin5P8PP4ndm/VDrX
	 /POxb0wVtMP26HkbFT4ZKG8Ht8+zahPJjVIZqjVI4dfeaf0vmPUB2PSNeyeQUtIl7X
	 PJHVymDnKHTtZB0yXlOCUtxUn2nIcSoOXk9eQRgZxyAXb95hfr3+sgk3ml3bZvsm2u
	 mYCWMf6KG6cltIghaMVPsBJ9A2ALwu6HTyfq4Ox9H9C1DIbIXofJYo4POf4ADoYdlp
	 e7tjpkwVHRs5WQDPsPTd7W+XguYXdX6zGRnnOqbzg5JVzZEaSYDV7CIb0tIVP9Fcva
	 isyVCtoukb79Q==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5894C378221B;
	Fri,  2 Aug 2024 15:35:09 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 3/3] mmc: dw_mmc-rockchip: Add internal phase support
Date: Fri,  2 Aug 2024 11:31:29 -0400
Message-ID: <20240802153609.296197-4-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802153609.296197-1-detlev.casanova@collabora.com>
References: <20240802153609.296197-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_083512_519912_FD2479DE 
X-CRM114-Status: GOOD (  30.28  )
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

From: Shawn Lin <shawn.lin@rock-chips.com>

Some Rockchip devices put the phase settings into the dw_mmc controller.

The feature is implemented in devices where the USRID register contains
0x20230002.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 180 +++++++++++++++++++++++++++--
 1 file changed, 169 insertions(+), 11 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index c47b93d99a1b3..2f474e7eb21dc 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -16,6 +16,17 @@
 #include "dw_mmc-pltfm.h"
 
 #define RK3288_CLKGEN_DIV	2
+#define USRID_INTER_PHASE	0x20230001
+#define SDMMC_TIMING_CON0	0x130
+#define SDMMC_TIMING_CON1	0x134
+#define ROCKCHIP_MMC_DELAY_SEL BIT(10)
+#define ROCKCHIP_MMC_DEGREE_MASK 0x3
+#define ROCKCHIP_MMC_DELAYNUM_OFFSET 2
+#define ROCKCHIP_MMC_DELAYNUM_MASK (0xff << ROCKCHIP_MMC_DELAYNUM_OFFSET)
+#define PSECS_PER_SEC 1000000000000LL
+#define ROCKCHIP_MMC_DELAY_ELEMENT_PSEC 60
+#define HIWORD_UPDATE(val, mask, shift) \
+		((val) << (shift) | (mask) << ((shift) + 16))
 
 static const unsigned int freqs[] = { 100000, 200000, 300000, 400000 };
 
@@ -25,9 +36,121 @@ struct dw_mci_rockchip_priv_data {
 	int			default_sample_phase;
 	int			num_phases;
 	bool			use_v2_tuning;
+	int			usrid;
 	int			last_degree;
 };
 
+/*
+ * Each fine delay is between 44ps-77ps. Assume each fine delay is 60ps to
+ * simplify calculations. So 45degs could be anywhere between 33deg and 57.8deg.
+ */
+static int rockchip_mmc_get_phase(struct dw_mci *host, bool sample)
+{
+	unsigned long rate = clk_get_rate(host->ciu_clk);
+	u32 raw_value;
+	u16 degrees;
+	u32 delay_num = 0;
+
+	/* Constant signal, no measurable phase shift */
+	if (!rate)
+		return 0;
+
+	if (sample)
+		raw_value = mci_readl(host, TIMING_CON1) >> 1;
+	else
+		raw_value = mci_readl(host, TIMING_CON0) >> 1;
+
+	degrees = (raw_value & ROCKCHIP_MMC_DEGREE_MASK) * 90;
+
+	if (raw_value & ROCKCHIP_MMC_DELAY_SEL) {
+		/* degrees/delaynum * 1000000 */
+		unsigned long factor = (ROCKCHIP_MMC_DELAY_ELEMENT_PSEC / 10) *
+					36 * (rate / 10000);
+
+		delay_num = (raw_value & ROCKCHIP_MMC_DELAYNUM_MASK);
+		delay_num >>= ROCKCHIP_MMC_DELAYNUM_OFFSET;
+		degrees += DIV_ROUND_CLOSEST(delay_num * factor, 1000000);
+	}
+
+	return degrees % 360;
+}
+
+static int rockchip_mmc_set_phase(struct dw_mci *host, bool sample, int degrees)
+{
+	unsigned long rate = clk_get_rate(host->ciu_clk);
+	u8 nineties, remainder;
+	u8 delay_num;
+	u32 raw_value;
+	u32 delay;
+
+	/*
+	 * The below calculation is based on the output clock from
+	 * MMC host to the card, which expects the phase clock inherits
+	 * the clock rate from its parent, namely the output clock
+	 * provider of MMC host. However, things may go wrong if
+	 * (1) It is orphan.
+	 * (2) It is assigned to the wrong parent.
+	 *
+	 * This check help debug the case (1), which seems to be the
+	 * most likely problem we often face and which makes it difficult
+	 * for people to debug unstable mmc tuning results.
+	 */
+	if (!rate) {
+		dev_err(host->dev, "%s: invalid clk rate\n", __func__);
+		return -EINVAL;
+	}
+
+	nineties = degrees / 90;
+	remainder = (degrees % 90);
+
+	/*
+	 * Due to the inexact nature of the "fine" delay, we might
+	 * actually go non-monotonic.  We don't go _too_ monotonic
+	 * though, so we should be OK.  Here are options of how we may
+	 * work:
+	 *
+	 * Ideally we end up with:
+	 *   1.0, 2.0, ..., 69.0, 70.0, ...,  89.0, 90.0
+	 *
+	 * On one extreme (if delay is actually 44ps):
+	 *   .73, 1.5, ..., 50.6, 51.3, ...,  65.3, 90.0
+	 * The other (if delay is actually 77ps):
+	 *   1.3, 2.6, ..., 88.6. 89.8, ..., 114.0, 90
+	 *
+	 * It's possible we might make a delay that is up to 25
+	 * degrees off from what we think we're making.  That's OK
+	 * though because we should be REALLY far from any bad range.
+	 */
+
+	/*
+	 * Convert to delay; do a little extra work to make sure we
+	 * don't overflow 32-bit / 64-bit numbers.
+	 */
+	delay = 10000000; /* PSECS_PER_SEC / 10000 / 10 */
+	delay *= remainder;
+	delay = DIV_ROUND_CLOSEST(delay,
+			(rate / 1000) * 36 *
+				(ROCKCHIP_MMC_DELAY_ELEMENT_PSEC / 10));
+
+	delay_num = (u8) min_t(u32, delay, 255);
+
+	raw_value = delay_num ? ROCKCHIP_MMC_DELAY_SEL : 0;
+	raw_value |= delay_num << ROCKCHIP_MMC_DELAYNUM_OFFSET;
+	raw_value |= nineties;
+
+	if (sample)
+		mci_writel(host, TIMING_CON1, HIWORD_UPDATE(raw_value, 0x07ff, 1));
+	else
+		mci_writel(host, TIMING_CON0, HIWORD_UPDATE(raw_value, 0x07ff, 1));
+
+	dev_dbg(host->dev, "set %s_phase(%d) delay_nums=%u actual_degrees=%d\n",
+		sample ? "sample" : "drv", degrees, delay_num,
+		rockchip_mmc_get_phase(host, sample)
+	);
+
+	return 0;
+}
+
 static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 {
 	struct dw_mci_rockchip_priv_data *priv = host->priv;
@@ -65,8 +188,12 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 	}
 
 	/* Make sure we use phases which we can enumerate with */
-	if (!IS_ERR(priv->sample_clk) && ios->timing <= MMC_TIMING_SD_HS)
-		clk_set_phase(priv->sample_clk, priv->default_sample_phase);
+	if (!IS_ERR(priv->sample_clk) && ios->timing <= MMC_TIMING_SD_HS) {
+		if (priv->usrid == USRID_INTER_PHASE)
+			rockchip_mmc_set_phase(host, true, priv->default_sample_phase);
+		else
+			clk_set_phase(priv->sample_clk, priv->default_sample_phase);
+	}
 
 	/*
 	 * Set the drive phase offset based on speed mode to achieve hold times.
@@ -129,7 +256,10 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 			break;
 		}
 
-		clk_set_phase(priv->drv_clk, phase);
+		if (priv->usrid == USRID_INTER_PHASE)
+			rockchip_mmc_set_phase(host, false, phase);
+		else
+			clk_set_phase(priv->drv_clk, phase);
 	}
 }
 
@@ -147,7 +277,10 @@ static int dw_mci_v2_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 
 	if (inherit) {
 		inherit = false;
-		i = clk_get_phase(priv->sample_clk) / 90 - 1;
+		if (priv->usrid == USRID_INTER_PHASE)
+			i = rockchip_mmc_get_phase(host, true) / 90;
+		else
+			i = clk_get_phase(priv->sample_clk) / 90 - 1;
 		goto done;
 	}
 
@@ -156,7 +289,12 @@ static int dw_mci_v2_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 		if (degrees[i] == priv->last_degree)
 			continue;
 
-		clk_set_phase(priv->sample_clk, degrees[i]);
+		u32 degree = degrees[i] + priv->last_degree + 90;
+		degree = degree % 360;
+		if (priv->usrid == USRID_INTER_PHASE)
+			rockchip_mmc_set_phase(host, true, degree);
+		else
+			clk_set_phase(priv->sample_clk, degree);
 		if (!mmc_send_tuning(mmc, opcode, NULL))
 			break;
 	}
@@ -209,8 +347,15 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 
 	/* Try each phase and extract good ranges */
 	for (i = 0; i < priv->num_phases; ) {
-		clk_set_phase(priv->sample_clk,
-			      TUNING_ITERATION_TO_PHASE(i, priv->num_phases));
+		/* Cannot guarantee any phases larger than 270 would work well */
+		if (TUNING_ITERATION_TO_PHASE(i, priv->num_phases) > 270)
+			break;
+		if (priv->usrid == USRID_INTER_PHASE)
+			rockchip_mmc_set_phase(host, true,
+				TUNING_ITERATION_TO_PHASE(i, priv->num_phases));
+		else
+			clk_set_phase(priv->sample_clk,
+				TUNING_ITERATION_TO_PHASE(i, priv->num_phases));
 
 		v = !mmc_send_tuning(mmc, opcode, NULL);
 
@@ -256,7 +401,10 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 	}
 
 	if (ranges[0].start == 0 && ranges[0].end == priv->num_phases - 1) {
-		clk_set_phase(priv->sample_clk, priv->default_sample_phase);
+		if (priv->usrid == USRID_INTER_PHASE)
+			rockchip_mmc_set_phase(host, true, priv->default_sample_phase);
+		else
+			clk_set_phase(priv->sample_clk, priv->default_sample_phase);
 		dev_info(host->dev, "All phases work, using default phase %d.",
 			 priv->default_sample_phase);
 		goto free;
@@ -296,9 +444,12 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 	dev_info(host->dev, "Successfully tuned phase to %d\n",
 		 TUNING_ITERATION_TO_PHASE(middle_phase, priv->num_phases));
 
-	clk_set_phase(priv->sample_clk,
-		      TUNING_ITERATION_TO_PHASE(middle_phase,
-						priv->num_phases));
+	if (priv->usrid == USRID_INTER_PHASE)
+		rockchip_mmc_set_phase(host, true, TUNING_ITERATION_TO_PHASE(middle_phase,
+                                                priv->num_phases));
+	else
+		clk_set_phase(priv->sample_clk, TUNING_ITERATION_TO_PHASE(middle_phase,
+                                                priv->num_phases));
 
 free:
 	kfree(ranges);
@@ -341,6 +492,7 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
 static int dw_mci_rockchip_init(struct dw_mci *host)
 {
 	int ret, i;
+	struct dw_mci_rockchip_priv_data *priv = host->priv;
 
 	/* It is slot 8 on Rockchip SoCs */
 	host->sdio_id0 = 8;
@@ -364,6 +516,12 @@ static int dw_mci_rockchip_init(struct dw_mci *host)
 			dev_warn(host->dev, "no valid minimum freq: %d\n", ret);
 	}
 
+	priv->usrid = mci_readl(host, USRID);
+	if (priv->usrid == USRID_INTER_PHASE) {
+		priv->sample_clk = NULL;
+		priv->drv_clk = NULL;
+	}
+
 	return 0;
 }
 
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
