Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D69AEE83EF9
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 09:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsX0YnRWxWIp+4e23jz9mzLAf2t9lLHM7/u6eggRUtM=; b=UMMF3VhaTR6Jl7
	AtmFaLzNTkElPmz9GEoi/vVdkEEoQp8JCmaI+5KVYWiLhr+p8MYNbb/QiyeM+SjonYpGZYRH2Jx6n
	qHZ2Rg7oD5Ve19mzouDCzN7M9HdsNTRBtWEGXZ/2E5soPgF73hb3sBThhW7DBHu+7qy0ezp1Wmz8c
	N7QmU9KtSz5xYBDIChUw1oIHmquOG+ntqEdAyIG3z7rTGjARhQ69i4cQ3lIhC16cxOAX5qqfZn69I
	hneWIfAEs9qvLBpoNyAU8C0cLFXBI37KcOmfmK+cxHQl8eJTvhAWJPjiODAfViZOVB1y7MDcExFpo
	hnBu924CI4ENX/3pG9dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnYyB-00000008BJq-3A0K;
	Wed, 04 Feb 2026 09:14:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnYyA-00000008BII-3md4;
	Wed, 04 Feb 2026 09:14:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description;
	bh=7TSRF7WZoqnRQnTja+WFXyN3MOyNdQg+eTr0GwsZAls=; b=mEKTzkNxYZVJSzl5x+rwjDmzyn
	NXsOyhd3gQ+GXtzYjC/qB9C+Y2vwx1WycDicHqcxrD3fDaNEP2q8K81x29p0gmwNbjHxmN9f1jpiS
	NlIuhdRRAtnCLi8LjpxY+9teAF8BHV7hpDBmajjzqk2UYn1lDcNpj6FI3TfmBuW+Zv6fG1SHxdjwQ
	me0znd5GmFaVklBdguHpI5hq/cJFbR4w4s0cLwNRDUWzMQLI8H3zRWKEMHB1jZ8l+eJlCT1u7/04F
	h+8RCnbtCyM75qRY+XOs9DRa+N3VE34vg8NYsOPbE6uWVRQ6AUfT5trGWh04ODd2JYlIxlR5Msycu
	oIfrLisw==;
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnYy7-00000000C5K-2znS;
	Wed, 04 Feb 2026 09:14:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7TSRF7WZoqnRQnTja+WFXyN3MOyNdQg+eTr0GwsZAls=; b=b5FcVssnAwafedKihPway4FlWj
	EwsluI/MyxcZRqqlsIzw+9OBnr/BTitG5mOCDNBHoGvH3nOCuAKpr5HtE/Lefj2sU8Q9Au29EXDQb
	xjKusK+MJhUQzE6MtSNUYzFrA9IKP69mnQVjW71FiNjPmRibAG0qY+749+nll61xMjS7eDIkRt2dl
	YuKdNyr+YDLrfA7PKe+Qh2UVDRF9nP2nxnbkbaUpZQQDBwmMlUvY73lu4m1D6Pa5/OeTHu8rqn2Zh
	mbfD0EJGpeHG6hr0BbtqgSsdje+lciNLvd/KBf6IvU82TQw0oiAJWA9WK/BcqOHiaHT1S3abBEJLK
	GgJS+Tzg==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:44436 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vnYy2-0000000067A-08vJ;
	Wed, 04 Feb 2026 09:14:34 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vnYy1-00000007hp3-0hKm;
	Wed, 04 Feb 2026 09:14:33 +0000
In-Reply-To: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
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
Subject: [PATCH net-next 4/6] net: stmmac: rk: rk3528: gmac0 only supports
 RMII
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vnYy1-00000007hp3-0hKm@rmk-PC.armlinux.org.uk>
Date: Wed, 04 Feb 2026 09:14:33 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_091439_940710_8A4D73D1 
X-CRM114-Status: UNSURE (   8.60  )
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
index 8dd2122fd9b1..4099cbc5d0de 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -728,6 +728,7 @@ static int rk3528_init(struct rk_priv_data *bsp_priv)
 	case 0:
 		bsp_priv->clock_grf_reg = RK3528_VO_GRF_GMAC_CON;
 		bsp_priv->clock.rmii_clk_sel_mask = BIT_U16(3);
+		bsp_priv->supports_rgmii = false;
 		return 0;
 
 	case 1:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
