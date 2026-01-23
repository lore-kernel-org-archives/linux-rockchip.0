Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D27D72373
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 11:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fu6rXxF5O94rfSJzymW0Xa0DEzNdeWwff+5JgqBVKo=; b=sJL8zE0Mtt+oWI
	h4PvSsHMYGO4RZGUmRP4ZMt9QHapN3a6ZGEKoSZaNkFvslAWUOnlPcacUXAi5OW5k6tN/Yhvk8XMd
	4rFCemVNdIjLzUy+xkdun5EgCrvmC49gREDh+ifkju7RgGopQquWMBGvO3Uxqir253Hvaukcbjcon
	jjPn18QTdH95jyHeXRDagRZvvgcxj5sl9ik5i/rHtTVvEk5EKShD8xpeDeCQSok77p8pWoZVg8Zqx
	vjt2XL5ZeWhKsBhx0w0ItNIAPjC8CEbqxcOohNSS9+dcVm5vyz9Ow0GSlh8fTnca0JU7znBeabpIL
	e050Jg9m2hFfIZyfVoOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjEuJ-00000008lgD-1JmH;
	Fri, 23 Jan 2026 11:00:51 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjEuE-00000008lco-3vLY;
	Fri, 23 Jan 2026 11:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jVLFfVd3X1JU5vZWQqTSvIV4WWcbPJ1JZLcb+HxFgbA=; b=Nrhya/4SaAjCO5DqTlff+X/rgN
	Vr4HtO7KKm7srX/nwv0mIOlsF6hzUoDrQCt7NK2txSTHBCSSaUtqUfrP0ys1Rvzi4vg09CNZhFz9A
	MUacWBSgXCtpSzNZlwuq5znFofF03Dc5TPjlfCrBVZBMbH5f8dRt1tuO6met/q4Cb7meAWtcT1uZt
	SSOAbEGaNqL0rHJoOMV+aC2zIW1ZsoVxWB+ohUEhpLjZtdVwFw+szp9sXc1v1IK8iD8aIep7j8tnK
	GHsjz1RJe1Oiq9DH2T53n7zhX7bt3EkTC6iHiLfgQNZVMp3OBNnTeuL90irHeIDChzMBts+icTF0z
	43Wrjw8A==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:49826 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vjEu7-000000001nG-1aCz;
	Fri, 23 Jan 2026 11:00:39 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vjEu6-00000005gfw-0Y88;
	Fri, 23 Jan 2026 11:00:38 +0000
In-Reply-To: <aXNUlVZilT-CTgph@shell.armlinux.org.uk>
References: <aXNUlVZilT-CTgph@shell.armlinux.org.uk>
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next 04/21] net: stmmac: rk: group MACPHY register offset
 and fields together
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vjEu6-00000005gfw-0Y88@rmk-PC.armlinux.org.uk>
Date: Fri, 23 Jan 2026 11:00:38 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_030048_488164_3163D9BD 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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

Group the MACPHY register offsets and associated bitfields together
to become self-documenting which definitions are associated with
which register.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index c8b49ed2064a..5f8d2031b97c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -162,15 +162,17 @@ static int rk_set_clk_mac_speed(struct rk_priv_data *bsp_priv,
 	 ((rx) ? soc##_GMAC_RXCLK_DLY_ENABLE : soc##_GMAC_RXCLK_DLY_DISABLE))
 
 #define RK_GRF_MACPHY_CON0		0xb00
-#define RK_GRF_MACPHY_CON1		0xb04
-#define RK_GRF_MACPHY_CON2		0xb08
-#define RK_GRF_MACPHY_CON3		0xb0c
-
 #define RK_MACPHY_ENABLE		GRF_BIT(0)
 #define RK_MACPHY_DISABLE		GRF_CLR_BIT(0)
 #define RK_MACPHY_CFG_CLK_50M		GRF_BIT(14)
 #define RK_GMAC2PHY_RMII_MODE		GRF_FIELD(7, 6, 1)
+
+#define RK_GRF_MACPHY_CON1		0xb04
+
+#define RK_GRF_MACPHY_CON2		0xb08
 #define RK_GRF_CON2_MACPHY_ID		GRF_FIELD(15, 0, 0x1234)
+
+#define RK_GRF_MACPHY_CON3		0xb0c
 #define RK_GRF_CON3_MACPHY_ID		GRF_FIELD(5, 0, 0x35)
 
 static void rk_gmac_integrated_ephy_powerup(struct rk_priv_data *priv)
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
