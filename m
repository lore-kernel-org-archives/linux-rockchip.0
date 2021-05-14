Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03105C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 11:37:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7332361451
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 11:37:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7332361451
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7VtglHJNyu28sEeh3OOoIjAbu0E3K/WpXKT2m+EWQcE=; b=pHME6nZAdD1BEc0KdF3+wWULp
	7Cy3W3d/ODlDs3jiBFrrbjNg+KrIQI/b8OeVwZ52T4WTkYBDxdB1bQ2W744A+tr8auxpDazqBRHTV
	jAqzUmSG3lLE7KEv446VCSf3kTEzIwjFhQwj1dVY8Ezta6Y6PhbsPE5KLfzYfv4EaRR8U0rYypjFl
	eCxyUL7envE+dlmMzmatLCin+uuy1RN7RMDJK+Qem9CiVoUVv2HPfYB3BG1R7Q9pA8AKL/VaGP1ra
	p7+dZ5tCDZ/FxcN2vqXFXWuiZT3GDWzgef2iGFSfECR2N/Ygkja2JAeyVeeoxah1Kq+CgCdW2P6AC
	UBQOGq+mg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhW8M-007vJS-RO; Fri, 14 May 2021 11:37:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhW7q-007vAw-0L; Fri, 14 May 2021 11:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=U94mi1TBzrRVcSaidd6uZprpowusYmo06FzDkd6Tj7Y=; b=SniPi1GUEYRMEtWW+o+eZn7/hl
 UklDeLjhHHS49c/plWAwcEfRmlx6GxMew+PrVI1T/NbdB35f4Ds1UlmJp3v2FoNGLpfc9CssR1aRC
 fz/bW6Mhfgy+DUgIDi2y2fH1j08/9ZMTFBXktXoeXNT3HCzV9ywvMTEEpOxdKG7FbJLqvB04HL8Es
 LvH6DUQj1JuLenNfDhlI1QfFNqeIqnZp2FullEqca0EmXxOIKFxgGIZiR0+7BanI7o+FxHywgFph+
 3btT90uTQKM699mi8zGs1Da1or+KHctBF10RmPW0iIr2YsjWk0QqXdVXcHy0O5tRqUPb/4v9TO21U
 1V+kYYYg==;
Received: from mail.manjaro.org ([2a01:4f8:150:448b::1])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhW7n-00BwQE-BG; Fri, 14 May 2021 11:37:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 4C64D22118F;
 Fri, 14 May 2021 13:36:57 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sDY3N2aaJo1G; Fri, 14 May 2021 13:36:53 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Cc: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 David Wu <david.wu@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 2/3] net: stmmac: dwmac-rk: add support for rk3308 gmac
Date: Fri, 14 May 2021 13:38:12 +0200
Message-Id: <20210514113813.2093534-3-t.schramm@manjaro.org>
In-Reply-To: <20210514113813.2093534-1-t.schramm@manjaro.org>
References: <20210514113813.2093534-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_043659_557652_A8B93F7B 
X-CRM114-Status: GOOD (  13.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Rockchip RK3308 SoC has a gmac with only the RMII interface signals
exposed.
This patch adds support for it.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 8d28a536e1bb..584db4ce6e39 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -482,6 +482,54 @@ static const struct rk_gmac_ops rk3288_ops = {
 	.set_rmii_speed = rk3288_set_rmii_speed,
 };
 
+#define RK3308_GRF_MAC_CON0		0x04a0
+
+/* RK3308_GRF_MAC_CON0 */
+#define RK3308_GMAC_PHY_INTF_SEL_RMII	(GRF_CLR_BIT(2) | GRF_CLR_BIT(3) | \
+					GRF_BIT(4))
+#define RK3308_GMAC_FLOW_CTRL		GRF_BIT(3)
+#define RK3308_GMAC_FLOW_CTRL_CLR	GRF_CLR_BIT(3)
+#define RK3308_GMAC_SPEED_10M		GRF_CLR_BIT(0)
+#define RK3308_GMAC_SPEED_100M		GRF_BIT(0)
+
+static void rk3308_set_to_rmii(struct rk_priv_data *bsp_priv)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "Missing rockchip,grf property\n");
+		return;
+	}
+
+	regmap_write(bsp_priv->grf, RK3308_GRF_MAC_CON0,
+		     RK3308_GMAC_PHY_INTF_SEL_RMII);
+}
+
+static void rk3308_set_rmii_speed(struct rk_priv_data *bsp_priv, int speed)
+{
+	struct device *dev = &bsp_priv->pdev->dev;
+
+	if (IS_ERR(bsp_priv->grf)) {
+		dev_err(dev, "Missing rockchip,grf property\n");
+		return;
+	}
+
+	if (speed == 10) {
+		regmap_write(bsp_priv->grf, RK3308_GRF_MAC_CON0,
+			     RK3308_GMAC_SPEED_10M);
+	} else if (speed == 100) {
+		regmap_write(bsp_priv->grf, RK3308_GRF_MAC_CON0,
+			     RK3308_GMAC_SPEED_100M);
+	} else {
+		dev_err(dev, "unknown speed value for RMII! speed=%d", speed);
+	}
+}
+
+static const struct rk_gmac_ops rk3308_ops = {
+	.set_to_rmii = rk3308_set_to_rmii,
+	.set_rmii_speed = rk3308_set_rmii_speed,
+};
+
 #define RK3328_GRF_MAC_CON0	0x0900
 #define RK3328_GRF_MAC_CON1	0x0904
 #define RK3328_GRF_MAC_CON2	0x0908
@@ -1477,6 +1525,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,rk3128-gmac", .data = &rk3128_ops },
 	{ .compatible = "rockchip,rk3228-gmac", .data = &rk3228_ops },
 	{ .compatible = "rockchip,rk3288-gmac", .data = &rk3288_ops },
+	{ .compatible = "rockchip,rk3308-gmac", .data = &rk3308_ops },
 	{ .compatible = "rockchip,rk3328-gmac", .data = &rk3328_ops },
 	{ .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
 	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
