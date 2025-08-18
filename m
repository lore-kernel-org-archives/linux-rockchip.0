Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B175CA0ED1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Aug 2025 19:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOfXK28MtcRUrwQAe2qM7esWfVixJKuMkFZvMoN4yHc=; b=ZSejyfGGhy1Mye
	YrCdUE3vfnMXjO+g2lldCnQLqDU4YIPQUstFWK4OHidQgWJdKTTZcABxM0rkF6QgqVgpUrJoi+Eec
	kahV9MReZUvzMO32+LFrmdFM6IdafACFkBaCQMap0CnBh15B5Y6HJArgyIODoCOF9VU9pU102bCxr
	RrLpqLeXAycydlA4P5kIU8eksRxjx9CASz3poi9ZigTydre9YMXvDby39mbX8W825aG37KCX3x6lr
	rsGplg9BoavvwV+HSYMm5/7LhK83yLEWVCPfwkc49dp4elOXmN3vy7HwuUXgsQvVtdZbOwNmQn6XB
	5gpmO+0KZA0+1UVhSnzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo5fo-00000008XUh-1wWo;
	Mon, 18 Aug 2025 19:37:40 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo54l-00000008Qz1-0Fb1;
	Mon, 18 Aug 2025 18:59:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1755543561;
	bh=z2OM3+rx83A3V9ym7RSXQfddzzsMXYLBw5vA4FCqwJo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=af9MmNf8KQjzKABMu+lGlhCMKVHVynoRq+6yr5SnXN0maz6/5YCoOxXGcSQj+P38k
	 nnEGNGt8iLYNu6TacIIA8cWBq8NPoFKYkgoraHgFxgkVvCyPJeSjTkYjgVn0adRikJ
	 24PsqwDXzXN3EY42mL8R7tk/vRr4P7Lb2uIRCtODgsCCnC8oNHrnhASXwP7EU10oC9
	 MpiKmZsWpUBixkmvL1rX0VibFru6jaudhi5Zf2Nd2a6Iao0fc+CAWikdi3nQzhxelZ
	 tpl2GxCO5LIOZFmAxHr1QRMCSEQ3ktNeV0mf/eZAB9gvJfOzKDrUvTOWum8snNcQNF
	 9VFrfu999qWYQ==
Received: from localhost (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 7A12017E090E;
	Mon, 18 Aug 2025 20:59:21 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 18 Aug 2025 21:59:02 +0300
Subject: [PATCH v3 02/14] phy: rockchip: samsung-hdptx: Fix reported clock
 rate in high bpc mode
MIME-Version: 1.0
Message-Id: <20250818-phy-hdptx-frl-v3-2-c79997d8bb2b@collabora.com>
References: <20250818-phy-hdptx-frl-v3-0-c79997d8bb2b@collabora.com>
In-Reply-To: <20250818-phy-hdptx-frl-v3-0-c79997d8bb2b@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_115923_249373_EEB8D08E 
X-CRM114-Status: GOOD (  12.37  )
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

When making use of the clock provider functionality, the output clock
does normally match the TMDS character rate, which is what the PHY PLL
gets configured to.

However, this is only applicable for default color depth of 8 bpc.  For
higher depths, the output clock is further divided by the hardware
according to the formula:

  output_clock_rate = tmds_char_rate * 8 / bpc

Since the existence of the clock divider wasn't taken into account when
support for high bpc has been introduced, make the necessary adjustments
to report the correct clock rate.

Fixes: 9d0ec51d7c22 ("phy: rockchip: samsung-hdptx: Add high color depth management")
Reported-by: Andy Yan <andy.yan@rock-chips.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 79db57ee90d1487b51f4ddadde870a275dd7b17b..8adf6e84fc0b762a7a6042459601c3271572de8e 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1038,7 +1038,8 @@ static int rk_hdptx_ropll_tmds_cmn_config(struct rk_hdptx_phy *hdptx)
 
 	ret = rk_hdptx_post_enable_pll(hdptx);
 	if (!ret)
-		hdptx->hw_rate = hdptx->hdmi_cfg.tmds_char_rate;
+		hdptx->hw_rate = DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.tmds_char_rate * 8,
+						       hdptx->hdmi_cfg.bpc);
 
 	return ret;
 }
@@ -1896,19 +1897,20 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
 	 * a different rate argument.
 	 */
-	return hdptx->hdmi_cfg.tmds_char_rate;
+	return DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.tmds_char_rate * 8, hdptx->hdmi_cfg.bpc);
 }
 
 static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
 				     unsigned long parent_rate)
 {
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
+	unsigned long long tmds_rate = DIV_ROUND_CLOSEST_ULL(rate * hdptx->hdmi_cfg.bpc, 8);
 
 	/* Revert any unlikely TMDS char rate change since round_rate() */
-	if (hdptx->hdmi_cfg.tmds_char_rate != rate) {
-		dev_warn(hdptx->dev, "Reverting unexpected rate change from %lu to %llu\n",
-			 rate, hdptx->hdmi_cfg.tmds_char_rate);
-		hdptx->hdmi_cfg.tmds_char_rate = rate;
+	if (hdptx->hdmi_cfg.tmds_char_rate != tmds_rate) {
+		dev_warn(hdptx->dev, "Reverting unexpected rate change from %llu to %llu\n",
+			 tmds_rate, hdptx->hdmi_cfg.tmds_char_rate);
+		hdptx->hdmi_cfg.tmds_char_rate = tmds_rate;
 	}
 
 	/*

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
