Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1501DCCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 15:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ois3GaUugVKsuM/1YMFKZ8Ewc9F9HuQtU4lw4fO7VJY=; b=m9vLU2BZEXG/Dm
	qYioXJtsbYkJEpDw2mSDS0E8OfMgJjrHT0yCOGM1kQaig1UPfFxH/rP4IBVJpiSfVCQiTLN75o/f5
	Lh4nFE3QQNoEDZ5wE6/e+YG9NyhzV99pRlQhJuC8coz3mhvN1ZKgb+QVBDyQS1RrntONo5Oehw60P
	gIb/GSgvQ+34cT0CERz+hWmfrGemzhDwp2kuo54QYBEU64Q6Pz0rWEWxG2IkkYoXt9Zdz+GGLiDoh
	61S/rGaRnRpXsr3AENowCRzA/TKz3iByyLxsXIaQD6LI3abgwOYsJRhY8fGsp8AN2q1hoA/hd/UB5
	A9/VMw+tUEELc6zalBxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8hHb-0000000GuL8-2RkI;
	Tue, 14 Oct 2025 15:49:51 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8hHZ-0000000GuKK-0pmo
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 15:49:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760456987;
	bh=O2OnOz5scUDSd+QFrf/tvNMYuICl3jWPJOhwXXYif2c=;
	h=From:Date:Subject:To:Cc:From;
	b=GX+yctSwy6m7W9I4+JzKb3R4HW7aDUAyt/mwtGFQlJEWqFbA3pyAC/lsNAcMdaJEg
	 ytEZeHKXOE8nVkaeMSpoym697Y3LMcOJq48f52J/rDwtVCh4K31E3d9lvzb52FX+Fq
	 baqnVCBJzPLwoFV/QYHl2+p1DtAD4RDbocqA3mvmE0xGEq6YIHlajUSsESS46DyoTs
	 DITm5FqB2WbwuTvcSZgETgzwECjyeYZKjMNX4K0HbymnvM6uOU5iRGuSh3+GFXP4ls
	 NapHKToYf+lwlI4MRl65y/v4h10GefoDlhelFcJi0H5jYUZAOwjkCdu9Q/eKoFmjNo
	 ra45orkWevLkg==
Received: from jupiter.universe (dyndsl-091-248-212-042.ewe-ip-backbone.de [91.248.212.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 10E6F17E0FC2;
	Tue, 14 Oct 2025 17:49:47 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id C7D4B480044; Tue, 14 Oct 2025 17:49:46 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 14 Oct 2025 17:49:34 +0200
Subject: [PATCH net] net: stmmac: dwmac-rk: Fix disabling
 set_clock_selection
MIME-Version: 1.0
Message-Id: <20251014-rockchip-network-clock-fix-v1-1-c257b4afdf75@collabora.com>
X-B4-Tracking: v=1; b=H4sIAA1x7mgC/x2M0QqDMAwAf0XybKAt2jF/RXzQmM3gaCWVTRD/3
 bDHO447obAKF+iqE5S/UiQnA19XQMuY3owyG0NwofXON6iZVlpkw8T7L+uK9DGDLzkw0MPF5xi
 nyAQ22JRN/+c9WA7Ddd10TxPpcQAAAA==
X-Change-ID: 20251014-rockchip-network-clock-fix-2c7069a6b6ec
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 David Wu <david.wu@rock-chips.com>
Cc: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, stable@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1840;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=O2OnOz5scUDSd+QFrf/tvNMYuICl3jWPJOhwXXYif2c=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGjucRo2uFWL3tpG3umZXtieNofXO4nAVctBy
 5GLiCh0M1e+rYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJo7nEaAAoJENju1/PI
 O/qaMRgP/iHJbV5a//GQfdq66WDDNHayu81bXQstYRXDdc/7YdmVEcv0rb8N0XNFrKluxH9R0bR
 sQ4PWok9aNKOApOWZ08lrrbr4IgNP0oMfR4CRiIEn6p28TI+jjKkq9/639UPolu+/iPapqnkSF6
 rE2ooV/kOppR6SQrB9+wLisBqnT3QShTnaq7HWhn6jJPWT9u+el0CbscGum+IYuJ/K3iUw2QTJM
 KgpF4PnJyNCb6V3Et6gOhT67VIU7CFWi/8sAMy0Q3nQrl5wJl1UxFjeHf6KmVxq6Mgs5Q6vpRJf
 MSvEtO86J9cBNFmgcrcVOasDrgnvvX9ZRbJbfbg4yzOG8C2MBUZ3ZmzOazQTAVqMoIybmZlPvoR
 nj0khD6HikFTzc9vWa536n1ZuuJH0IIzbX9qZtSvp202bu5nJ7I6k5dvaAfDlHHwPQTMIbKdx4J
 rzBYGfRYUNusTavH45VWs+4pJed1PIvGJAJ2cm5iVTh0kup4eUS7iPTzDO6uyKVXDrGmLJQmRFC
 mSY3nIlCJpvo02UCAncaD3OLR7165ubeG+pD1p3pLDQhyQO91xgydGwpXYj1aq6xT04jdgJH5V/
 B8aO3l2FIdl2KMrX8GYf0ji7K5J9qoiJ0l+R05gQ4rt1GK+BfBsZitLWjW47/3KpUAAQ58gCARc
 t70WWOTk/R/hbaOtx56g2KQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_084949_413314_773A9048 
X-CRM114-Status: GOOD (  12.35  )
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

On all platforms set_clock_selection() writes to a GRF register. This
requires certain clocks running and thus should happen before the
clocks are disabled.

This has been noticed on RK3576 Sige5, which hangs during system suspend
when trying to suspend the second network interface. Note, that
suspending the first interface works, because the second device ensures
that the necessary clocks for the GRF are enabled.

Cc: stable@vger.kernel.org
Fixes: 2f2b60a0ec28 ("net: ethernet: stmmac: dwmac-rk: Add gmac support for rk3588")
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 51ea0caf16c1..0786816e05f0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1446,14 +1446,15 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
 		}
 	} else {
 		if (bsp_priv->clk_enabled) {
+			if (bsp_priv->ops && bsp_priv->ops->set_clock_selection) {
+				bsp_priv->ops->set_clock_selection(bsp_priv,
+					      bsp_priv->clock_input, false);
+			}
+
 			clk_bulk_disable_unprepare(bsp_priv->num_clks,
 						   bsp_priv->clks);
 			clk_disable_unprepare(bsp_priv->clk_phy);
 
-			if (bsp_priv->ops && bsp_priv->ops->set_clock_selection)
-				bsp_priv->ops->set_clock_selection(bsp_priv,
-					      bsp_priv->clock_input, false);
-
 			bsp_priv->clk_enabled = false;
 		}
 	}

---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20251014-rockchip-network-clock-fix-2c7069a6b6ec

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
