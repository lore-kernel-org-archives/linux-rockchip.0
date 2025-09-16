Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 733EACAC597
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Sep 2025 01:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qp8uxiUYCUqMZgYFkSN87tOjIs97BGeYg18Pt1drDRI=; b=P+Mc4FLmLLSbL6
	6eJ5CEYxUTkDtUg5NJ3pedUySFMkzQkW1gEK8fl3dMwFlC51cJ77czhAQiCY+wVcBlfF7gpp6g6dA
	BsJf7GDUdYqw9GRu2aH5XNAn0XQgp0odezl3BJN6N6WIO+23BR1z2BNZPsWJtfeWX6MdqdIstcTfj
	V8NX75njJ83ITEY8WmE576eBuczjgdYe1B/LMjYA9Gr3DPrH1wKVMCBOywteloeemu8Ly4e+yp5Ch
	0lGhZMbZNfy49lYsPNIoifXtQAJlL2pmnJhOqoelCaEN7KSgsDvOOHfEe226HLCt9acJYNscSPj0d
	4fc26JRUkwP64wyLHyAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyKTO-000000069SG-2ILk;
	Tue, 16 Sep 2025 01:27:10 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyKTL-000000069QG-1G7X
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Sep 2025 01:27:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1757986002;
	bh=r40/9/byFQ5Kdho5bSZgFzvBLnr6GNZb9hi7qVjYjLk=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=J98MyLcbMRG94NEiVPEjeSXACyzHlGMhioQe+AoZz+U5Pl5VQ3tvrizeCPZchXSH0
	 d2rMdEy5H/PcgpFTo13OzEfrZ4GonSnL1tUb0wvZGI64BXUf/kaItCe4zy6dRa1XJM
	 oVipO6zCRqLqhivuCR8IJ8o6LMSpaqpg8K/p6Q98=
X-QQ-mid: esmtpgz16t1757985994tb691f01f
X-QQ-Originating-IP: 9WqvNV5m81o9OAQGGCKKLjLtxMwpN1LWrrj43UnBIq8=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 16 Sep 2025 09:26:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13026834714890684059
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Jonas Karlman <jonas@kwiboo.se>,
	David Wu <david.wu@rock-chips.com>
Cc: sebastian.reichel@collabora.com,
	ziyao@disroot.org,
	netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH net-next] Revert "net: ethernet: stmmac: dwmac-rk: Make the clk_phy could be used for external phy"
Date: Tue, 16 Sep 2025 09:26:28 +0800
Message-ID: <0A3F1D1604FEE424+20250916012628.1819-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NpSUeF22LnzDaMKYiEuFqevqeK1MYzf4iSkkCu3fQqOjrNgyfGsywGra
	GMwsWfxhO5M0UlGrG374jH3Xa17Hadfevx69JtfBFyquyr68EHvK2gqjtNyOyGoN5N/9Ypm
	kv2vOCH1CMFRpEpIgjYRQ4sSB5udtTSTunJKOV7T8qxujPtCch7tkg2wkeh3aY97izqA7zs
	fNXf6auP3iTDII0WIJKE9Vltww++i4bLigltiLAncAP7lsgqPay9ChFGa2sxFMpXFSxkRUY
	IwLGia11ARql5Ns2AvaY2uG+nPJpXN/KnzHaVl2+I5OI0r6qtg7kXLjJN1i0dPSHDedKhUd
	T+PdR1TWVAMpVmesdSinSeyyZDWVmffXSDAgV88zwpKYQ8Gq6yuQr+VyVwoSM8+h96Tm+z+
	2KutP7P6l+B5dU/6fULMPT4BnM+MQr7iNsYP19RJm79bjmiepNqfxbjs6b21AsjrcnsLrnJ
	EAKuVCXTj5X7ze5uXsIQBXeYa2SDOSrXiUEFiE50dqj5xOV9znX4FbpLeCNQXvnFBkRelAB
	FsVObfsXPkF0WkkL+619MIYdebgIOFIBx3c2t5Xe2VjtDokOc4Xitf2eprN8YvgcVULfnLa
	OlnhGfIoX2E9URDE+Lrbj7S/f8plgVl/ok2vV/W0LOcD3WCS3S3ez6xM0rfr2A/QCpPuBex
	8XGoTFjaDSUilnJkOizFTOeG2SavuAvNPlzPjAB0DYksyIVmUE9Om69N8nL9S0zyVez7No1
	XQU4G9/uczKgpSlwBVZqiM2LIaucy41R4WKSeefH/4j+mu1JCf+n2horpNVZCsaNmG3QQWC
	zo5Bu9MIFGZxBHe3foojnFqdZ02SDzWGyEdxAcdwwNmhG6SfD5zwaND74VHf5UzjvZpFty+
	AhYAiM9/If3Q55L+HCWcd5BbrrCEb9ZMzW8zlvJ0wcflYp8sT3LiBQwYwAx4fDtI4IdkAys
	xRiJLq952WEZ+uDHpDt5/KlbJma6R/bcVeWasD1XDg7yJeg==
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_182707_729337_ECEBBD02 
X-CRM114-Status: GOOD (  10.80  )
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

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

This reverts commit da114122b83149d1f1db0586b1d67947b651aa20.

As discussed, the PHY clock should be managed by PHY driver instead
of other driver like dwmac-rk.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 266c53379236..49f92cd79aa8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1410,15 +1410,12 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 		clk_set_rate(plat->stmmac_clk, 50000000);
 	}
 
-	if (plat->phy_node) {
+	if (plat->phy_node && bsp_priv->integrated_phy) {
 		bsp_priv->clk_phy = of_clk_get(plat->phy_node, 0);
 		ret = PTR_ERR_OR_ZERO(bsp_priv->clk_phy);
-		/* If it is not integrated_phy, clk_phy is optional */
-		if (bsp_priv->integrated_phy) {
-			if (ret)
-				return dev_err_probe(dev, ret, "Cannot get PHY clock\n");
-			clk_set_rate(bsp_priv->clk_phy, 50000000);
-		}
+		if (ret)
+			return dev_err_probe(dev, ret, "Cannot get PHY clock\n");
+		clk_set_rate(bsp_priv->clk_phy, 50000000);
 	}
 
 	return 0;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
