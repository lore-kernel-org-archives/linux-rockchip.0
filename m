Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD83C1039894
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 20:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azot2d3Ky98fyzgd+kcSKrnwqN4nhxlog5qnGdO2TWs=; b=ggAMX7/7xUzNcR
	VSIkfwOw8FXq0/9vWuKT35PPnYd5u3qvgfkXfmvFcp45O0KacIrx8wGbFpHGIVoGOhK8K7WzEVW7v
	TRCCg9K+fm5fhc6ltSHxJ461oscWdIArVL+r1fgzOTAEYH4qXiv8mTjVUO8ZftHHqj30/mX6NHJLW
	P+3Fwh4FEHy0YU1ZG/GgFr8SlWCiXLMyUDX0rYl/Ns5q7FiPgDV0fZAxiRB+V0hBVT9Rz7GnqUaAE
	HEAqbwOJxfNgzxUalf41kHZYbL/ErcXmDfUzj+3ikehk77RiVu9rxYm++8Q5D776n8/mEwt+ndcTK
	6s9Wv4+v5ezw7oHxpYBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw4nZ-000000099MC-0Eft;
	Fri, 27 Feb 2026 20:50:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw4nV-000000099KW-0ASY;
	Fri, 27 Feb 2026 20:50:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=3TwZAMuNIpLCxf3ZWns0zlIhb2rVNHxflR4h2MvcdK8=; b=djXWOB4OOX89Ic61x5an9J+OJx
	oxtsm0oJVRx1nvbz6+oUdKYNKgUFEA858Iml3QLXBLl0341LYXekzHSj539uiW56JMXhWLlTaDjvU
	AQRwZD72vMp0Yx5bXfDX0AwjgFvIjRx2VzLOjIQ6YoALbtbewPmayzJFfPt3ywe4SoyNzocCZ1QT3
	+sOc2tS3kGNWBU3Cj+sk4I75AEdJIjHXSMg3qluuNXm0iEKf/mF+zV5rCbEsjKv+VK0AfM1LmjVq1
	FBewfZ9DTDSKDhH+h6Lu+ma1dOwgOyObpJDHzrsWzirX1YZTORg/a/knX5HpkwfSOuf8iG7vBTyoD
	JQGQDxtA==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw4m5-0000000Duuh-2awn;
	Fri, 27 Feb 2026 20:50:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772225334;
	bh=l4Su0pklR2T7HnDbslEWlVekgDffWEurFlItFSCNEBU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Lr76XhgT3pF22ZlPP7xtJKrksTgBCAOAvyQRjFushgXOO8GTQByozohUp4P8//dlS
	 TK8rjDL+z+2MvfKWE7ZF45rptLv3RNRnDSkFKSuM0JPWmtekEvBRx76/GuVjrhnnTE
	 4mRkHMiS14gsWnEbaETtfzw/vAYJvcYQ5tB/QVAf3nbCyOb/EsQ+bXR0HcTZIOTBds
	 J+14uE+23WhFsxQOysRYl1n/y9E5RDFNPj+wNq2Sy9+8fNwgybc2YCcT2tzShFDQxD
	 efPFG8nF/6pQ4Qg3urnSZORpaKa2ryHZNG5uw05E40iTS98fDYDLGTb7AVYMhkn2Wh
	 dI/KkSAwrct0w==
Received: from localhost (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3F16817E0F33;
	Fri, 27 Feb 2026 21:48:54 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 27 Feb 2026 22:48:47 +0200
Subject: [PATCH 3/6] phy: rockchip: samsung-hdptx: Drop TMDS rate setup
 workaround
MIME-Version: 1.0
Message-Id: <20260227-hdptx-clk-fixes-v1-3-f998f2762d0f@collabora.com>
References: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
In-Reply-To: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_205021_806925_D40E121E 
X-CRM114-Status: GOOD (  12.29  )
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

Since commit ba9c2fe18c17 ("drm/rockchip: dw_hdmi_qp: Switch to
phy_configure()") the TMDS rate setup doesn't rely anymore on the
unconventional usage of the bus width, instead it is managed exclusively
through the HDMI PHY configuration API.

Drop the now obsolete workaround to retrieve the TMDS character rate via
phy_get_bus_width() during power_on().

While at it, get rid of the extra call to rk_hdptx_phy_consumer_put() by
moving the statement at the end of the function.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 26 ++++++-----------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 14d266c8df5c..b56360b5df78 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1655,22 +1655,6 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 	enum phy_mode mode = phy_get_mode(phy);
 	int ret, lane;
 
-	if (mode != PHY_MODE_DP) {
-		if (!hdptx->hdmi_cfg.rate && hdptx->hdmi_cfg.mode != PHY_HDMI_MODE_FRL) {
-			/*
-			 * FIXME: Temporary workaround to setup TMDS char rate
-			 * from the RK DW HDMI QP bridge driver.
-			 * Will be removed as soon the switch to the HDMI PHY
-			 * configuration API has been completed on both ends.
-			 */
-			hdptx->hdmi_cfg.rate = phy_get_bus_width(hdptx->phy) & 0xfffffff;
-			hdptx->hdmi_cfg.rate *= 100;
-		}
-
-		dev_dbg(hdptx->dev, "%s rate=%llu bpc=%u\n", __func__,
-			hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
-	}
-
 	ret = rk_hdptx_phy_consumer_get(hdptx);
 	if (ret)
 		return ret;
@@ -1696,9 +1680,10 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 		rk_hdptx_dp_pll_init(hdptx);
 
 		ret = rk_hdptx_dp_aux_init(hdptx);
-		if (ret)
-			rk_hdptx_phy_consumer_put(hdptx, true);
 	} else {
+		dev_dbg(hdptx->dev, "%s rate=%llu bpc=%u\n", __func__,
+			hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
+
 		if (hdptx->pll_config_dirty)
 			ret = rk_hdptx_pll_cmn_config(hdptx);
 
@@ -1710,11 +1695,12 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 				ret = rk_hdptx_frl_lcpll_mode_config(hdptx);
 			else
 				ret = rk_hdptx_tmds_ropll_mode_config(hdptx);
-		} else {
-			rk_hdptx_phy_consumer_put(hdptx, true);
 		}
 	}
 
+	if (ret)
+		rk_hdptx_phy_consumer_put(hdptx, true);
+
 	return ret;
 }
 

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
