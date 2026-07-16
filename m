Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B79C44511
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 06:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:From:Cc:Subject:To:
	Message-Id:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qRiXoYdXRF8q0oJ51MPHzfKH8b0L6TxSeqhQMXyc3js=; b=pwn
	bT7rx4tbb24hHaOG8PCLhk/vKQO1fePn62K1QnJ8trLSqVjzjy3qprNp5gEXZxlMIol4b2vus4uJa
	pAijBfBmBcHMgeB6oj8GLGE593Nu2IUHmbYFpeMDFavAXn8dg3BZGk/ch+IVW+5eLxKIANmtLkmSJ
	OCyKtof2SXn+DjzVWkrrHqJsX+Wm1tqHPaKe1Y9dP5A7z5RjyVqJuDuLYgWlr2A7EiRB5tzAyGHge
	xMmczul503BQ6o/GeGKbwZQG+L5SopdYji2xionMHbm1iiz6+LGqherk5v+SU7E4MPVJWIHqWZbdm
	dlPU8RHVPSrodfpEyAXFk+WsroPvLTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkG11-0000000GahF-2T0H;
	Thu, 16 Jul 2026 06:56:15 +0000
Received: from gy.d.sender-sib.com ([77.32.148.25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkG0z-0000000GaP2-1Q4p
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 06:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
 q=dns/txt; s=brevo2; bh=YEZA28DCAkovTIOKhUBwjAgpO1kMhVmk8JXg7hYn5rw=;
 h=from:subject:date:to:cc:mime-version:content-transfer-encoding:list-unsubscribe:x-csa-complaints:list-unsubscribe-post:message-id:x-sib-id:feedback-id;
        b=Cj6QXQqZTL8scJu46Fg5G9vowIg1ZO+FWDJ4nI1XJ27jdO1dSoBZ0MZeztBuAL+D1Wwr+SvHqb1t
        rWtqvUR3bk57KlqQEXdgF2JGVSPYbpHpzJiovi0vworp0JntebVlPqr7uVkqRW1I3LjZIUCnSZNr
        SjErpq5le0SqDviAOHoQsDLtSzd1Zm3j89/uS7DHVhJA0uXD1O17kFu4iT8cU/XfRyYhJhTCkGMG
        QFAnenlJrLi8DNYSkWl4JKnC1iG+Cq2aTeo9YX5A16Xd0hq3KCDRjPcLQ39VcycimxL8Rp2HL7cN
        TBJ0Adx4a4VsNERCO1Dd5uZ7kuikJ2a/HtZThw==
X-Mailin-EID: NDg1NjE3NDAyfmxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmd%2BPDIwMjYwNzE2MDY1NjA2LjI0NjYyNjctMS1nYWhpbmdAZ2FoaW5nd29vLmNvbT5%2BZ3kuZC5zZW5kZXItc2liLmNvbQ%3D%3D
Date: Thu, 16 Jul 2026 18:56:06 +1200
X-sib-id: OulKRve-J8kq6dyQ2ohY9ApIbhlg5xCM7Fk0hq3YcO8tex6zYdlHe7bhwnmBz3vV6oTkewa1t7l0JORN9qZ6CHKQ74FMaJPbUx3_fHK6vs-JlKZc_bjX6Pl-z-lvjy-jPSN1tgyn8S7ZcWhZwwHHbtEP0MXAkXdj0pgdgT_IqfO0F7BrioA4t5gFI5KOIY9BQw
Message-Id: <012bfbac-5148-456a-bba0-69fb4ad61d62@smtp-relay.sendinblue.com>
Origin-messageId: <20260716065606.2466267-1-gahing@gahingwoo.com>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Feedback-ID: 77.32.148.25:11677070_-1:11677070:Sendinblue
X-CSA-Complaints: csa-complaints@eco.de
To: <andrew+netdev@lunn.ch>,<davem@davemloft.net>,<edumazet@google.com>,<kuba@kernel.org>,<pabeni@redhat.com>,<heiko@sntech.de>,<mcoquelin.stm32@gmail.com>,<alexandre.torgue@foss.st.com>
Subject: [PATCH net-next] net: stmmac: dwmac-rk: enable the reference clock for output mode
Cc: <netdev@vger.kernel.org>,  <linux-rockchip@lists.infradead.org>,  <linux-arm-kernel@lists.infradead.org>,  <linux-stm32@st-md-mailman.stormreply.com>,  <linux-kernel@vger.kernel.org>
From: "Jiaxing Hu" <gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_235613_538429_AD9D78DD 
X-CRM114-Status: UNSURE (   8.69  )
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


rk_gmac_clk_init() only requests the refout clock group for RMII. The
ArmSoM CM5 has an on-module YT8531 RGMII PHY with no crystal that needs
the SoC 25 MHz reference (clk_mac_refout), so in RGMII the clock was
never enabled and the PHY did not respond on MDIO.

Request the group whenever the SoC drives the clock (clock_in_out =
"output"), not just for RMII. The clocks are optional, so other boards
are unaffected.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 8d7042e68..dd060e4b8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1112,7 +1112,7 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 	bsp_priv->clk_enabled = false;
 
 	bsp_priv->num_clks = ARRAY_SIZE(rk_clocks);
-	if (phy_iface == PHY_INTERFACE_MODE_RMII)
+	if (phy_iface == PHY_INTERFACE_MODE_RMII || !bsp_priv->clock_input)
 		bsp_priv->num_clks += ARRAY_SIZE(rk_rmii_clocks);
 
 	bsp_priv->clks = devm_kcalloc(dev, bsp_priv->num_clks,
@@ -1123,7 +1123,7 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 	for (i = 0; i < ARRAY_SIZE(rk_clocks); i++)
 		bsp_priv->clks[i].id = rk_clocks[i];
 
-	if (phy_iface == PHY_INTERFACE_MODE_RMII) {
+	if (phy_iface == PHY_INTERFACE_MODE_RMII || !bsp_priv->clock_input) {
 		for (j = 0; j < ARRAY_SIZE(rk_rmii_clocks); j++)
 			bsp_priv->clks[i++].id = rk_rmii_clocks[j];
 	}
-- 
2.43.0




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
