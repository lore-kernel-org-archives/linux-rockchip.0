Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F5A6CF45DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 23:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xx/ATPwLpECk5c2nYx7iHQvFYuKJrDLq1v5AyhWWPQk=; b=Dn2wBv+U5GM5cA
	UAjTy1Hn+7ck1Et9LbRa2ElBFZwQVNIVA6Ef6sY+KXHUNSedlglaTS43Ngkn+qtqspjU0X3KJqj/d
	40FgjR5WqAOGPvXjH2ojd2UnsP68hT1e0EYBo5lih7LTgcCfbN/tzIQ/bg+GE77NrkAiHwKDhCU/3
	GkOE0OaM5gdXXIOZgnvGfH1Q6nM0DoMkXrFnUSGWYttEyBepBN6HvUhD486V1Oa6w/KQPl7H5Nbqs
	3eknTdvDuU6U22RlI9VtVFs+QURtgFk6OB6H7/on94bNUMdTsuB09eCJ0YZW3mKzXoidh7QejNAWo
	Kvj+9amwOv7VeDd/GzQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfRDt-00000006I8I-0369;
	Mon, 12 Jan 2026 23:21:21 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfRDh-00000006Hsv-3PAa;
	Mon, 12 Jan 2026 23:21:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768260064;
	bh=Y+2x1RSmDhbqa6DC9GsZuIWSyQ9SFNKmBDhqwXnzI6g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JhEeEyjlrqvoRf+l039d6GhmmD30HTYJYhITb/pCnuVwaIsRrAa0XIa+rasqL8omT
	 RlXyFWDLcZgwUgylh6Tq1rcy5t6b9jO/km6/DCth9ZK6GlmgpgnFWlgmgxjGpcZpO/
	 ooNnCTUSBE2Bz28qpEVbvWAODhjbGOMW9HH6V9DwrGMrL1hGZKVQQWU0kHtflGaKr9
	 sEPJZlesUXLrQgfEomXcAcnVZPq+5epV71V7NkVxj1fcziPiVw7AdZewJpjv/c+Myz
	 u9Sv2D6JDqf03Jz4R5CYXtFMhFvYezBy+hqPSahv/hBWQRdfQpKVVqrB97o4+I4hUF
	 EiqqJzVJ8tfIQ==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1DF7517E1523;
	Tue, 13 Jan 2026 00:21:04 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 13 Jan 2026 01:20:54 +0200
Subject: [PATCH v6 07/11] phy: rockchip: samsung-hdptx: Compute clk rate
 from PLL config
MIME-Version: 1.0
Message-Id: <20260113-phy-hdptx-frl-v6-7-8d5f97419c0b@collabora.com>
References: <20260113-phy-hdptx-frl-v6-0-8d5f97419c0b@collabora.com>
In-Reply-To: <20260113-phy-hdptx-frl-v6-0-8d5f97419c0b@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_152110_050232_EAF2D731 
X-CRM114-Status: GOOD (  12.49  )
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

Improve ->recalc_rate() callback of hdptx_phy_clk_ops to calculate the
initial clock rate based on the actual PHY PLL configuration as
retrieved from the related hardware registers.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 91 ++++++++++++++++++++++-
 1 file changed, 90 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 0a0e38e95a37..3cc8976e10e6 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1818,12 +1818,101 @@ static void rk_hdptx_phy_clk_unprepare(struct clk_hw *hw)
 	rk_hdptx_phy_consumer_put(hdptx, true);
 }
 
+#define PLL_REF_CLK 24000000ULL
+
+static u64 rk_hdptx_phy_clk_calc_rate_from_pll_cfg(struct rk_hdptx_phy *hdptx)
+{
+	struct ropll_config ropll_hw;
+	u64 fout, sdm;
+	u32 mode, val;
+	int ret;
+
+	ret = regmap_read(hdptx->regmap, CMN_REG(0008), &mode);
+	if (ret)
+		return 0;
+
+	if (mode & LCPLL_LCVCO_MODE_EN_MASK)
+		return 0;
+
+	ret = regmap_read(hdptx->regmap, CMN_REG(0051), &val);
+	if (ret)
+		return 0;
+	ropll_hw.pms_mdiv = val;
+
+	ret = regmap_read(hdptx->regmap, CMN_REG(005E), &val);
+	if (ret)
+		return 0;
+	ropll_hw.sdm_en = val & ROPLL_SDM_EN_MASK;
+
+	ret = regmap_read(hdptx->regmap, CMN_REG(0064), &val);
+	if (ret)
+		return 0;
+	ropll_hw.sdm_num_sign = val & ROPLL_SDM_NUM_SIGN_RBR_MASK;
+
+	ret = regmap_read(hdptx->regmap, CMN_REG(0065), &val);
+	if (ret)
+		return 0;
+	ropll_hw.sdm_num = val;
+
+	ret = regmap_read(hdptx->regmap, CMN_REG(0060), &val);
+	if (ret)
+		return 0;
+	ropll_hw.sdm_deno = val;
+
+	ret = regmap_read(hdptx->regmap, CMN_REG(0069), &val);
+	if (ret)
+		return 0;
+	ropll_hw.sdc_n = (val & ROPLL_SDC_N_RBR_MASK) + 3;
+
+	ret = regmap_read(hdptx->regmap, CMN_REG(006c), &val);
+	if (ret)
+		return 0;
+	ropll_hw.sdc_num = val;
+
+	ret = regmap_read(hdptx->regmap, CMN_REG(0070), &val);
+	if (ret)
+		return 0;
+	ropll_hw.sdc_deno = val;
+
+	ret = regmap_read(hdptx->regmap, CMN_REG(0086), &val);
+	if (ret)
+		return 0;
+	ropll_hw.pms_sdiv = ((val & PLL_PCG_POSTDIV_SEL_MASK) >> 4) + 1;
+
+	fout = PLL_REF_CLK * ropll_hw.pms_mdiv;
+	if (ropll_hw.sdm_en) {
+		sdm = div_u64(PLL_REF_CLK * ropll_hw.sdc_deno *
+			      ropll_hw.pms_mdiv * ropll_hw.sdm_num,
+			      16 * ropll_hw.sdm_deno *
+			      (ropll_hw.sdc_deno * ropll_hw.sdc_n - ropll_hw.sdc_num));
+
+		if (ropll_hw.sdm_num_sign)
+			fout = fout - sdm;
+		else
+			fout = fout + sdm;
+	}
+
+	return div_u64(fout * 2, ropll_hw.pms_sdiv * 10);
+}
+
 static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
 						  unsigned long parent_rate)
 {
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
+	u32 status;
+	u64 rate;
+	int ret;
+
+	if (hdptx->hw_rate)
+		return hdptx->hw_rate;
+
+	ret = regmap_read(hdptx->grf, GRF_HDPTX_CON0, &status);
+	if (ret || !(status & HDPTX_I_PLL_EN))
+		return 0;
+
+	rate = rk_hdptx_phy_clk_calc_rate_from_pll_cfg(hdptx);
 
-	return hdptx->hw_rate;
+	return DIV_ROUND_CLOSEST_ULL(rate * 8, hdptx->hdmi_cfg.bpc);
 }
 
 static int rk_hdptx_phy_clk_determine_rate(struct clk_hw *hw,

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
