Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD0B2C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 21:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mdabbWwkpSTHXDRX6VO8cI7xeU3d5PopCX80DNTIjs=; b=fERsRRXeNLn9hj
	FJHIpo+ssqgmc73r3zmW022mOiaqWc52+nsYgGgIAQ8xcpqE82/HGXnPVETGyoLjEAVCd77YrKz4P
	+n+7uik9VpDENIxgorc1Ky56b2Gbp1y0m/mVKoNHHLmx76/P7hpHYWrz7kwIouTou8Zissa/A2/ip
	8vyIywWUqY69Hc91fAnI7lVsuJdb/WdA/ZvrcohowInnpsKcBe01+5NnsKkikQ8c5MBhQuwILbqHv
	hZJiXE5JGWm3CFGqQCIEKfo4L8Xf2XtA5Rbblq/3wbF4IflPkP/4Qdob4cjAAOqBTevsgQS3LtSG1
	r+9t+zbwhUcbEZLg1+lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shFIZ-0000000ELjq-2TfM;
	Thu, 22 Aug 2024 21:24:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shFIT-0000000ELgr-0oc1;
	Thu, 22 Aug 2024 21:24:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724361876; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=FbD1jRP2lvK7yuhkPZwBvZaI/g2PJkXBYBfW9RY9SjpUjiDSRE3pCyxG7KWe2LmDVddL2ITDIghb6aoG6idGppwuN3mpuHttco9Qpv1Rv7QyXpw9jObmHejB4Avj8O77XoVNiGf+hI07/k0f5Jzw1oWSOrmd+O4Icif/aJKIrVA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724361876; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=7YL5pWtXUp+PHdd3Kfu/uwF045nPBW8u8rSyR+5Ufm4=; 
	b=bakPksguc+oW/3RVSPrvxhP3N+ZFYjGJlX86Iub89DpShq33wDCDf2hBM0XL2vr1vYVjOQUTCRMWUZWGm6Xupu1bi7Ju8NuJSM9vyCQU/GGfK7w0jCDgzYMvxE2r9icF3MEZO935VIVOO+0Nt8Af0yvZupm1RNA+KSIjSYWajhM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724361876;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=7YL5pWtXUp+PHdd3Kfu/uwF045nPBW8u8rSyR+5Ufm4=;
	b=PGR0EcSKha34QXovj2e5Hguizkwl9uGTugPOm+BwTmun8q+IjegLnqS6RDyF3GxC
	gV5PKutb3vM17D9Gf4ocNZhTR5toolbkHD16k1tpTs6hAqrYA+1pOdz8+bqnbzElzry
	nqvSSPWB28yVXTZ+G54vteH7rwWv8Rj9isYa4NIU=
Received: by mx.zohomail.com with SMTPS id 1724361876093426.5821241995659;
	Thu, 22 Aug 2024 14:24:36 -0700 (PDT)
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
	kernel@collabora.com,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v4 2/4] mmc: dw_mmc-rockchip: Add internal phase support
Date: Thu, 22 Aug 2024 17:15:32 -0400
Message-ID: <20240822212418.982927-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240822212418.982927-1-detlev.casanova@collabora.com>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_142445_318334_99DE55DC 
X-CRM114-Status: GOOD (  28.20  )
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

When the feature is present, the ciu-drive and ciu-sample clocks are
not used and the phase configuration is done directly through the mmc
controller.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Acked-by: Shawn Lin <shawn.lin@rock-chips.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 171 +++++++++++++++++++++++++++--
 1 file changed, 160 insertions(+), 11 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index b07190ba4b7a..2748f9bf2691 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -15,7 +15,17 @@
 #include "dw_mmc.h"
 #include "dw_mmc-pltfm.h"
 
-#define RK3288_CLKGEN_DIV	2
+#define RK3288_CLKGEN_DIV		2
+#define SDMMC_TIMING_CON0		0x130
+#define SDMMC_TIMING_CON1		0x134
+#define ROCKCHIP_MMC_DELAY_SEL		BIT(10)
+#define ROCKCHIP_MMC_DEGREE_MASK	0x3
+#define ROCKCHIP_MMC_DEGREE_OFFSET	1
+#define ROCKCHIP_MMC_DELAYNUM_OFFSET	2
+#define ROCKCHIP_MMC_DELAYNUM_MASK	(0xff << ROCKCHIP_MMC_DELAYNUM_OFFSET)
+#define ROCKCHIP_MMC_DELAY_ELEMENT_PSEC	60
+#define HIWORD_UPDATE(val, mask, shift) \
+		((val) << (shift) | (mask) << ((shift) + 16))
 
 static const unsigned int freqs[] = { 100000, 200000, 300000, 400000 };
 
@@ -24,8 +34,143 @@ struct dw_mci_rockchip_priv_data {
 	struct clk		*sample_clk;
 	int			default_sample_phase;
 	int			num_phases;
+	int			internal_phase;
 };
 
+/*
+ * Each fine delay is between 44ps-77ps. Assume each fine delay is 60ps to
+ * simplify calculations. So 45degs could be anywhere between 33deg and 57.8deg.
+ */
+static int rockchip_mmc_get_internal_phase(struct dw_mci *host, bool sample)
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
+		raw_value = mci_readl(host, TIMING_CON1);
+	else
+		raw_value = mci_readl(host, TIMING_CON0);
+
+	raw_value >>= ROCKCHIP_MMC_DEGREE_OFFSET;
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
+static int rockchip_mmc_get_phase(struct dw_mci *host, bool sample)
+{
+	struct dw_mci_rockchip_priv_data *priv = host->priv;
+	struct clk *clock = sample ? priv->sample_clk : priv->drv_clk;
+
+	if (priv->internal_phase)
+		return rockchip_mmc_get_internal_phase(host, sample);
+	else
+		return clk_get_phase(clock);
+}
+
+static int rockchip_mmc_set_internal_phase(struct dw_mci *host, bool sample, int degrees)
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
+static int rockchip_mmc_set_phase(struct dw_mci *host, bool sample, int degrees)
+{
+	struct dw_mci_rockchip_priv_data *priv = host->priv;
+	struct clk *clock = sample ? priv->sample_clk : priv->drv_clk;
+
+	if (priv->internal_phase)
+		return rockchip_mmc_set_internal_phase(host, sample, degrees);
+	else
+		return clk_set_phase(clock, degrees);
+}
+
 static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 {
 	struct dw_mci_rockchip_priv_data *priv = host->priv;
@@ -64,7 +209,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 
 	/* Make sure we use phases which we can enumerate with */
 	if (!IS_ERR(priv->sample_clk) && ios->timing <= MMC_TIMING_SD_HS)
-		clk_set_phase(priv->sample_clk, priv->default_sample_phase);
+		rockchip_mmc_set_phase(host, true, priv->default_sample_phase);
 
 	/*
 	 * Set the drive phase offset based on speed mode to achieve hold times.
@@ -127,7 +272,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 			break;
 		}
 
-		clk_set_phase(priv->drv_clk, phase);
+		rockchip_mmc_set_phase(host, false, phase);
 	}
 }
 
@@ -151,6 +296,7 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 	int longest_range_len = -1;
 	int longest_range = -1;
 	int middle_phase;
+	int phase;
 
 	if (IS_ERR(priv->sample_clk)) {
 		dev_err(host->dev, "Tuning clock (sample_clk) not defined.\n");
@@ -164,8 +310,10 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 
 	/* Try each phase and extract good ranges */
 	for (i = 0; i < priv->num_phases; ) {
-		clk_set_phase(priv->sample_clk,
-			      TUNING_ITERATION_TO_PHASE(i, priv->num_phases));
+		rockchip_mmc_set_phase(host, true,
+				       TUNING_ITERATION_TO_PHASE(
+						i,
+						priv->num_phases));
 
 		v = !mmc_send_tuning(mmc, opcode, NULL);
 
@@ -211,7 +359,8 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 	}
 
 	if (ranges[0].start == 0 && ranges[0].end == priv->num_phases - 1) {
-		clk_set_phase(priv->sample_clk, priv->default_sample_phase);
+		rockchip_mmc_set_phase(host, true, priv->default_sample_phase);
+
 		dev_info(host->dev, "All phases work, using default phase %d.",
 			 priv->default_sample_phase);
 		goto free;
@@ -248,12 +397,10 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 
 	middle_phase = ranges[longest_range].start + longest_range_len / 2;
 	middle_phase %= priv->num_phases;
-	dev_info(host->dev, "Successfully tuned phase to %d\n",
-		 TUNING_ITERATION_TO_PHASE(middle_phase, priv->num_phases));
+	phase = TUNING_ITERATION_TO_PHASE(middle_phase, priv->num_phases);
+	dev_info(host->dev, "Successfully tuned phase to %d\n", phase);
 
-	clk_set_phase(priv->sample_clk,
-		      TUNING_ITERATION_TO_PHASE(middle_phase,
-						priv->num_phases));
+	rockchip_mmc_set_phase(host, true, phase);
 
 free:
 	kfree(ranges);
@@ -287,6 +434,8 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
 
 	host->priv = priv;
 
+	priv->internal_phase = false;
+
 	return 0;
 }
 
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
