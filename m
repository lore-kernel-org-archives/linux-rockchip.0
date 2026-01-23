Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5FD6D72372
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 11:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cqyug2Qv+krJvbjJJU9menAW8NIIRe84UgmVQbG/3ws=; b=ptyUju7NB8Zu1k
	83zArSLPtolt6mhR5HIHvZwpNQgfqPdYLP8ZxEHOjFdrmmHJ4hTL8DjElNSY0uAguXGAUw98PJilc
	YDKsQkGMj7bgRKQNSLpw8ToIAf9mb3bdNR6W8Aaiw8eYvcyb+XMjH4ZZ5zpyq9t8jV7YJTBFjtQwW
	Dg0njYbLnasNtGT/FX9jj/dDXLnp5c2TDAxVgoIJX9cfMuKwwM296dU3kaA1EWsCXygtjqXgAjZGG
	71s3APINiquhXsHgIwp9dXZgip5Z3zGB/T++9HOpjKooBzDqJEkLUjY9GKcWrEN6kld6Ccg0mreWL
	PmRrrg4lFBkJSvxdXoQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjEu0-00000008lW1-2a4Q;
	Fri, 23 Jan 2026 11:00:32 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjEtx-00000008lV6-02zj;
	Fri, 23 Jan 2026 11:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Q75ZGBuJxVx+TLZl2i9flltdJqFjAWm+npZcCaXfPOg=; b=b1J7LgmSGp+2uGSN2eCmmEmUMX
	8x8ysbRZn22ud8LDCny4HE62FsPDkfvVCjGdhh/n/xrR00YdKjaPE0azkgOM81gca7d0ks/lx9IoU
	OMKJQRlUkKn20Ufsv7UT006yv/oop/jnsBxKOXDWMgg/MWhj9tJiu03HRZIkqEHZKPrWvuHGEYfoE
	EkfPQAg3pIbvr1k8gk2c1uTDxNi/asMZz1I4/lDIg59Y4l0N3FGjudY2zaPJ1pOj0dLet1t8Em6zy
	CqrpWTK09HAIeAS2zUhXZNoz4d1ihkPX2JRnueWlmj0GXM34PIzo05CS9ZjUr/ZAXH8KxFFpKhsBR
	3CxjwaVQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:56118 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vjEtr-000000001mS-2Cuf;
	Fri, 23 Jan 2026 11:00:23 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vjEtq-00000005gfe-3ILz;
	Fri, 23 Jan 2026 11:00:22 +0000
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
Subject: [PATCH net-next 01/21] net: stmmac: rk: avoid phy_power_on()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vjEtq-00000005gfe-3ILz@rmk-PC.armlinux.org.uk>
Date: Fri, 23 Jan 2026 11:00:22 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_030029_408290_27D6FF4B 
X-CRM114-Status: GOOD (  13.73  )
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

In https://lore.kernel.org/netdev/aDne1Ybuvbk0AwG0@shell.armlinux.org.uk/
I requested that a follow-up patch to change the name of dwmac-rk's
phy_power_on() function, which clashes with the drivers/phy function
of the same name. This can cause confusion when grepping for this
function name, or when reviewing code. Thankfully, stmmac doesn't make
use of drivers/phy which saves this from compile errors.

However, as is the usual case when a request is made as part of a
review, if the review leads to successful application of the patch the
author doesn't bother following up with any such requests, and so the
problem falls back onto the reviewer to address... so here is the
solution.

Rename dwmac-rk's function to rk_phy_power_ctl(), as the function both
powers up and down.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 0a95f54e725e..de420997e21f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1498,7 +1498,7 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
 	return 0;
 }
 
-static int phy_power_on(struct rk_priv_data *bsp_priv, bool enable)
+static int rk_phy_power_ctl(struct rk_priv_data *bsp_priv, bool enable)
 {
 	struct regulator *ldo = bsp_priv->regulator;
 	struct device *dev = bsp_priv->dev;
@@ -1692,7 +1692,7 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 		dev_err(dev, "NO interface defined!\n");
 	}
 
-	ret = phy_power_on(bsp_priv, true);
+	ret = rk_phy_power_ctl(bsp_priv, true);
 	if (ret) {
 		gmac_clk_enable(bsp_priv, false);
 		return ret;
@@ -1713,7 +1713,7 @@ static void rk_gmac_powerdown(struct rk_priv_data *gmac)
 
 	pm_runtime_put_sync(gmac->dev);
 
-	phy_power_on(gmac, false);
+	rk_phy_power_ctl(gmac, false);
 	gmac_clk_enable(gmac, false);
 }
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
