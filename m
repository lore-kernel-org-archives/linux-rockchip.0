Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89062E66886
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Dec 2025 10:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAV6piS9N8uoQL49Gb+skd6TtelbcuDJPNUgQ4vMHDs=; b=eyhMqpyoc1a4MK
	+t69Z+hKrAjAAISf9v9xrY8tRLhZRt1XFvFr9LxAeT/xyTzgdekk21qFMVLyXE10PPR/ag6CIfDs2
	Bcjv+y6vGQZa1FZ5mYZvmuOw6y92Ao7321norN5eDoA7UIrcgpTlCE0R3IV5PpeeyYHaMq6LHXWFs
	eziHDmUbyMXWhJsXOfLWuPPTMF/EUasxIENFzAD527wyy/cW3jH6CSUOG+qgPJug1gdmehQkMexOv
	h6x+HHqz7QW1brhRvYtDhr35++METlI3tOpR4mJSQJqwdaqrMGHH6yb2R3TeeG9cvMgsYxZtx03V5
	3S2CSlYmWAvWyGCBO6qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGyI-0000000CLOb-20Lq;
	Sun, 21 Dec 2025 10:47:30 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGxy-0000000CKw5-0FVm;
	Sun, 21 Dec 2025 10:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1766314027;
	bh=kDXcyjHMjIrOytzsZ+Lma1zPlSuP3hSoSfDGQ8aV6Wk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=HqHfxUpIR/VQ4vr5TpYaGljM9/Kmxesu0pgHXvKkKBs67iyd8z9Nhvik4fih9OMGd
	 EqfuLlG8bVMmqBJgj5OQHqk+f7MdrbR/7zTtV9x9P2vA9RhVKP6FtrKJl8GHkqXy0E
	 tiWlkkpfjWGcvifPce9DNyFe1SUZwcNirnUiWq4RF29CoboNBLMtzkJ6kuYfoXeWBS
	 2AnuSBU12cS4PEKPDNtJ/ZBpsNKYN8MYckYP00osNv1Coja0U8jKkVWFIBT1srBb0J
	 /lqXu3BY7LWQP4xULAvmIz6U29cui820iR9bt5axwpODL7zFJAvNtxi4TS1da+VjQB
	 a5291X7IaQtQA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9D7DD17E0506;
	Sun, 21 Dec 2025 11:47:07 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sun, 21 Dec 2025 12:46:54 +0200
Subject: [PATCH v5 07/11] phy: rockchip: samsung-hdptx: Compute clk rate
 from PLL config
MIME-Version: 1.0
Message-Id: <20251221-phy-hdptx-frl-v5-7-dac390a780be@collabora.com>
References: <20251221-phy-hdptx-frl-v5-0-dac390a780be@collabora.com>
In-Reply-To: <20251221-phy-hdptx-frl-v5-0-dac390a780be@collabora.com>
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
X-CRM114-CacheID: sfid-20251221_024711_688493_2A85D401 
X-CRM114-Status: GOOD (  11.38  )
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
index 42f0ac5a74b1..c2d2f2468ba2 100644
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
 
 static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,

-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
