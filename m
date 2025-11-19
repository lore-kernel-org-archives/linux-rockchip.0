Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D00EFCF31A9
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 11:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=egGyFJz4hepWfcWB7I6OKntpgrIa4SujC3YrNE7Fn4c=; b=4xIHiwVTddyzXz
	/cHzP7jM9DBkXehxBiVQyDS53nRBqsBSqmB/5/4D521YNPh7YZxhdBhxC5cVoUyfhknMJcP/k+t4K
	RNfmOQLdBLdCMABpKp2TZpcJ2f0q3s1SvL0a+W+htfT2yyqAe6EuAQi1MiRFUYhrKoSUWp1P6Eez7
	6wtqlYMdUt5TULaUNRsiSHewEYcg6zPXvKYXxQRc63Xya4HtoEN52GwOETM/Gt7I8H1sOPhVeeict
	eX/OFormUUOnKAt8yXEkIMMXTKmSILuQGWPOcXiURb0OtK+TOcOTYjmRtmfiyFmOzxHIeVQQ+rK0f
	PDnU7qsEcmDgCzGiccSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgNM-000000031lQ-43aG;
	Wed, 19 Nov 2025 11:29:28 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgNJ-000000031kl-2TGg;
	Wed, 19 Nov 2025 11:29:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=r2DrchsSMJsw6gBUK4BX08ZijAjAZGrjaBRDLmbqutk=; b=n81tuClDJ3OLrzVmm47rB823Ln
	rFhLXfubGPK8H/auYA+vVqWctV+ZczPoFi9WHcgIg7kJbIAhqtDZ7+gRt6FRza06B0cXivW3EICJj
	BZ4WnP2M37Xqra/HKxY1kt0GLR+4QCwrsWXcnEoA+kmcVjqdLkHMlhN6U+x+TYwROIdMWES9lb1kh
	IYsvhlDXeN1HXQ40tpgF7L17JDgl1pY1HiVkmjo87bH9wf5L87B7ezIbEMg0P9C4fIOxvWBiMssQP
	yvJtIXg8nQCKt1P0uATGCsmXdMu0RXXbFk36QGM8Nm2X+VXhcJKkBF6SfVI3pFrLW77E3ET1rVfM1
	oNGzfMLw==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:36016 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vLgNA-000000004aH-3K0b;
	Wed, 19 Nov 2025 11:29:16 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vLgNA-0000000FMjN-0DSS;
	Wed, 19 Nov 2025 11:29:16 +0000
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next] net: stmmac: rk: use phylink's interface mode for
 set_clk_tx_rate()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vLgNA-0000000FMjN-0DSS@rmk-PC.armlinux.org.uk>
Date: Wed, 19 Nov 2025 11:29:16 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_032925_649753_40FC76DC 
X-CRM114-Status: UNSURE (   9.86  )
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

rk_set_clk_tx_rate() is passed the interface mode from phylink which
will be the same as bsp_priv->phy_iface. Use the passed-in interface
mode rather than bsp_priv->phy_iface.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 6bfe82d7001a..0a95f54e725e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1735,8 +1735,7 @@ static int rk_set_clk_tx_rate(void *bsp_priv_, struct clk *clk_tx_i,
 	struct rk_priv_data *bsp_priv = bsp_priv_;
 
 	if (bsp_priv->ops->set_speed)
-		return bsp_priv->ops->set_speed(bsp_priv, bsp_priv->phy_iface,
-						speed);
+		return bsp_priv->ops->set_speed(bsp_priv, interface, speed);
 
 	return -EINVAL;
 }
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
