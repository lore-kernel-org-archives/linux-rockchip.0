Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 253F5C282C6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 02:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1GQCbnTkt7wWj5Kbh3mR2/4Ggi0tlTEyLKfpHvUWhP8=; b=hl8tNFVJwkI9Zz
	OcCLD2//srDXwRMeE844TJCa0ekCvs+4pEBOsZKGvvo0FFc4OQ4YEEuwHYVjdtJiAwpmwKWV/QSOG
	iUEmFPMOdhuno7uU24vbFMOV3ow/yebcZEOiZZGfziXStEZ9vlEhPEGT2Hpk1QpbvV9m3aOJdmDNe
	C4TGvOu2u/naE/ly+aVmDX/J1rSnOaDdNUojX/hhLV99JPceuOFQYlYytsD/6Ef8us1aXYNeP0jDJ
	yaCmu8QAbGcwqNV3CNt1cZ5XYzHp305RchaGUVVFU1l4kFKtUh30CIszNg+IdajqYmp4QC49hXhpB
	3LTKrZbvEW1q/Ia38LkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpHpm-00000002sfw-0E6D;
	Tue, 04 Mar 2025 02:16:38 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpHKd-00000002o6d-1UPD;
	Tue, 04 Mar 2025 01:44:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741052666;
	bh=jfd6p5DWajkPySB9m0l6HI8kDxxg6TaqMhpM/+vLwpc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=aocf8aFwkn5pRO7JxffV2FcYXh0n3dwMbuEDHijiSRdEByw+KtvJaDGFZg5C+dQcL
	 6auLv7WG34W3q1C5nIrj8cBXjAUD52JG+FmDMg3R0Kd/D0J9FIJ/sYTjunqJ6v4CPg
	 jIxSCMRvhYa+aeQG4h++1WTOWR3j3zfRLnOadjc6458gk79nBq5+j1vyIg/+iwc8Zp
	 wMGcnkJTNZLAfHuKQH/Xh9yVufB6YWVuBBa0hxZYfV81FJwgl7iST2XcX7vxa+oEDz
	 v/89ozT/8cTwT+jQzRBIOV91zs7uylo/YNjZLKDgDiT9k52UTDArH5QlE2O18FtVnN
	 GgmrLN11gRU4g==
Received: from localhost (unknown [188.27.58.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id D791317E1048;
	Tue,  4 Mar 2025 02:44:25 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 04 Mar 2025 03:44:09 +0200
Subject: [PATCH v4 10/12] phy: rockchip: samsung-hdptx: Add high color
 depth management
MIME-Version: 1.0
Message-Id: <20250304-phy-sam-hdptx-bpc-v4-10-8657847c13f7@collabora.com>
References: <20250304-phy-sam-hdptx-bpc-v4-0-8657847c13f7@collabora.com>
In-Reply-To: <20250304-phy-sam-hdptx-bpc-v4-0-8657847c13f7@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_174427_548014_DE2C1A0E 
X-CRM114-Status: GOOD (  11.45  )
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

Add support for 8-bit, 10-bit, 12-bit and 16-bit color depth setup.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 29 +++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index b4d2f04842b5c5b425c5b73a8b27fabecbbbd6bb..c2ad1cb94614711bea13b7259a6b66dbd72d663d 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1027,6 +1027,9 @@ static int rk_hdptx_ropll_tmds_cmn_config(struct rk_hdptx_phy *hdptx,
 	regmap_update_bits(hdptx->regmap, CMN_REG(0086), PLL_PCG_POSTDIV_SEL_MASK,
 			   FIELD_PREP(PLL_PCG_POSTDIV_SEL_MASK, cfg->pms_sdiv));
 
+	regmap_update_bits(hdptx->regmap, CMN_REG(0086), PLL_PCG_CLK_SEL_MASK,
+			   FIELD_PREP(PLL_PCG_CLK_SEL_MASK, (hdptx->hdmi_cfg.bpc - 8) >> 1));
+
 	regmap_update_bits(hdptx->regmap, CMN_REG(0086), PLL_PCG_CLK_EN_MASK,
 			   FIELD_PREP(PLL_PCG_CLK_EN_MASK, 0x1));
 
@@ -1428,7 +1431,8 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 		} else {
 			rate = hdptx->hdmi_cfg.tmds_char_rate / 100;
 		}
-		dev_dbg(hdptx->dev, "%s rate=%u\n", __func__, rate);
+		dev_dbg(hdptx->dev, "%s rate=%u bpc=%u\n",
+			__func__, rate, hdptx->hdmi_cfg.bpc);
 	}
 
 	ret = rk_hdptx_phy_consumer_get(hdptx, rate);
@@ -1480,12 +1484,12 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
 static int rk_hdptx_phy_verify_hdmi_config(struct rk_hdptx_phy *hdptx,
 					   struct phy_configure_opts_hdmi *hdmi)
 {
-	if (!hdmi->tmds_char_rate || hdmi->tmds_char_rate > HDMI20_MAX_RATE)
-		return -EINVAL;
-
 	u32 bit_rate = hdmi->tmds_char_rate / 100;
 	int i;
 
+	if (!hdmi->tmds_char_rate || hdmi->tmds_char_rate > HDMI20_MAX_RATE)
+		return -EINVAL;
+
 	for (i = 0; i < ARRAY_SIZE(ropll_tmds_cfg); i++)
 		if (bit_rate == ropll_tmds_cfg[i].bit_rate)
 			break;
@@ -1494,6 +1498,19 @@ static int rk_hdptx_phy_verify_hdmi_config(struct rk_hdptx_phy *hdptx,
 	    !rk_hdptx_phy_clk_pll_calc(bit_rate, NULL))
 		return -EINVAL;
 
+	if (!hdmi->bpc)
+		hdmi->bpc = 8;
+
+	switch (hdmi->bpc) {
+	case 8:
+	case 10:
+	case 12:
+	case 16:
+		break;
+	default:
+		return -EINVAL;
+	};
+
 	return 0;
 }
 
@@ -1766,6 +1783,9 @@ static int rk_hdptx_phy_configure(struct phy *phy, union phy_configure_opts *opt
 			hdptx->hdmi_cfg = opts->hdmi;
 			hdptx->restrict_rate_change = true;
 		}
+
+		dev_dbg(hdptx->dev, "%s tmds_rate=%llu bpc=%u\n", __func__,
+			hdptx->hdmi_cfg.tmds_char_rate, hdptx->hdmi_cfg.bpc);
 		return ret;
 	}
 
@@ -1974,6 +1994,7 @@ static int rk_hdptx_phy_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	hdptx->dev = dev;
+	hdptx->hdmi_cfg.bpc = 8;
 
 	regs = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
 	if (IS_ERR(regs))

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
