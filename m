Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54753D116F1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 14:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GdVY+ZDcM+w3jZ7z729koKYD6T8ZMhtUxm2xm0lwN4=; b=ut+OzVxz9aKL3+
	4T+KlKnjcq8oXMnEPt2dju8GjA0aTGCcvMbY6KDCuE0ag/JtaoXEcyW1gc7e/twuVF0sFiSTtpRr2
	wEQVhreiHL4UeKEXu+hTYl9C+sc7W3Xetp8T+t0q3JL8GXbvma5IHxh71htK52cjGM4OPxPYC48IB
	k7Pmol8jIj1ajtL1zKbcXmiW+lswbHM57kxhCQWy5Jw5XH5sRTHnTz7iaR4KnZWPpdjo3f3T6XtRW
	YYmDekXEKIWIz0W3HFvIL682RVZTlokk/HuKcHbTzoU/DmYnoEZ/Jyb8X0W0Ud42/IT2ehQIuDihO
	LMJI+Ka2FBMo1s9rA6pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ5ML-000000048Xo-2SKJ;
	Mon, 01 Dec 2025 14:58:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ5MK-000000048XK-2KX6;
	Mon, 01 Dec 2025 14:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description;
	bh=1M9Aw6+4PnORpHnM9Lf4LhatF/jhH5DF9wJ5HB6NrDw=; b=UxN030uR7R4SroPgh7b23LsFCE
	C02Uapb+cPUBQ4D8sS8bdaayUxgMX2vzqG7hb2h6o1VVRL7f8kJExK5wC6DaibpWa5TCOIBMkfz19
	0ncLD5r265TXKYJV3tO2xAOehs8n2VGG7s+Vs6ocZdofIQtZCMC4jNEHFZcRmYhXtDu0LAicy9PbC
	Dogtgb8rFD0ypqg6mc86CBjpnErXnwprpq2V9lGiuSch8/gB+3YE/ILwPO0HhzzpQV7KgUJieKNTx
	9nWxeVgXV9SCgYpx5wEMpI2vhZqb731N2Szrayr+WQZBxvX9bR6ye9FJirMCR6zEzaQiC0awAANvK
	Uyo0PWhQ==;
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4Ui-0000000G2sn-1qf3;
	Mon, 01 Dec 2025 14:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1M9Aw6+4PnORpHnM9Lf4LhatF/jhH5DF9wJ5HB6NrDw=; b=SMuwFPsEJ76041T/tAMKyZJkag
	ez6mlZpNTGw9fB0OD2woNUTV3zZVo9tRXo3fMVkUnHWxlvX+jjpbYS4mBA4JZ9TIhtYwpq8/Sz024
	Df+zk6ixBEzaORli7qD6dAUNOIhxGBH/5FTotaiBfS8EwtMgAD8ZCQ6ItxEcWblkzug4qLHlFciP1
	jNjqHwqBasalG5drN+ZoG2f7HyCIjd9ug+waJg6kCTN9TSsLgaOf3uh2vEuIaTp+JQVPnGgZ3MB6k
	8Ky4thCgy5E2Yr6ZVuBgQ4GrDnuuDkdeM5MUKTC15yI0vkLzVpzot6lkUPkH3KwZKGNYO1gbSSVzB
	0n6UqVvQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:39992 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vQ5G6-000000000iK-2Edg;
	Mon, 01 Dec 2025 14:52:11 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vQ5Fv-0000000GNwr-1xfQ;
	Mon, 01 Dec 2025 14:51:59 +0000
In-Reply-To: <aS2rFBlz1jdwXaS8@shell.armlinux.org.uk>
References: <aS2rFBlz1jdwXaS8@shell.armlinux.org.uk>
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
Subject: [PATCH RFC net-next 15/15] net: stmmac: rk: rk3528: gmac0 only
 supports RMII
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vQ5Fv-0000000GNwr-1xfQ@rmk-PC.armlinux.org.uk>
Date: Mon, 01 Dec 2025 14:51:59 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_140312_647219_668BEA29 
X-CRM114-Status: UNSURE (   8.09  )
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

RK3528 gmac0 dtsi contains:

                gmac0: ethernet@ffbd0000 {
                        phy-handle = <&rmii0_phy>;
                        phy-mode = "rmii";

                        mdio0: mdio {
                                rmii0_phy: ethernet-phy@2 {
                                        phy-is-integrated;
                                };
                        };
                };

This follows the same pattern as rk3328, where this gmac instance
only supports RMII. Disable RGMII in phylink's supported_interfaces
mask for this gmac instance.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index c04a115beb98..290fd5f06267 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -701,6 +701,7 @@ static int rk3528_init(struct rk_priv_data *bsp_priv)
 	case 0:
 		bsp_priv->speed_grf_reg = RK3528_VO_GRF_GMAC_CON;
 		bsp_priv->rmii_clk_sel_mask = BIT_U16(3);
+		bsp_priv->supports_rgmii = false;
 		return 0;
 
 	case 1:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
