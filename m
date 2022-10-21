Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36D1FFA373D
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T1QLP/An7WYiCZyd5gJhRuVPFJk1C0JQu9HYD0nD1ig=; b=Ytk1H2hDccua+8
	PCZdr+Q3N4obYcnGjzHeB/zUQTLzAOE8lnLZU/WPPoLpUr6xwKufPIG9/53nW4LPk6eeKBrtt5r2C
	fi2d2zviaqzYUd807Fz3Xj4OmYx+Fgxr+ZS4PWsyzC5L32c6acLCj4BWwJ+Nx70G0AvAnJTo7U9cz
	gDUp+/I9ejMIe/2j2yVscVrdQzqKh+u5Hj2V0W/xqYYiGG5KyEMo89YAsdbv4QUTIoc83sgjUb+c1
	Me8DcUZz+eyDXQC4DZJWOcoil+6Hn1uAumhB0GQpKekDdwG3BHLSMYP7RB1Rr+cn2ZEGFyfO3EfDA
	r2PsDqyB8bGxOH2IBfsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvlC-009B2D-VI; Fri, 21 Oct 2022 17:24:42 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvl1-009Azp-Rg; Fri, 21 Oct 2022 17:24:33 +0000
Received: from jupiter.universe (dyndsl-037-138-189-087.ewe-ip-backbone.de [37.138.189.87])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4A5CD660226D;
	Fri, 21 Oct 2022 18:24:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666373070;
	bh=gen1/fy7A3678eOhQrY2FyxvyBfzVMxM5cZuLTNcfxg=;
	h=From:To:Cc:Subject:Date:From;
	b=WjH72eSkpt6cPaaqKOfkiCfZm7nCxegMsTCW4cpKg6l6+touZvz/t+QIYEqZ8U55v
	 /AsRiUhqMzGkF7hLjPZfKzKhK1IqmLf/FNRwprDVYXDDMBXW1kjwkv70RuKQHM8W+p
	 NWKYtRT8TP/WbJWq0do1BKrDdqdID2TchoByABezEq8QhRnxmSTGlHQaRnw/YcnMCO
	 D/kKAU/1SGVU8b8xxwDLzT0ojAEYv5YsRJ7XxbFBAnur5lt7TXnKqth4GV0Z9RhOSk
	 PZTdrDdRCg5EsMNnMmk4V2FhR3dEeJV/t6d0YDVU8R9Es6KgoChvEVyXBS1noI8fZo
	 Tj3x+DlPUNAUw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6E72148082E; Fri, 21 Oct 2022 19:24:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH 1/1] net: stmmac: rk3588: Allow multiple gmac controller
Date: Fri, 21 Oct 2022 19:24:22 +0200
Message-Id: <20221021172422.88534-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_102432_051788_29B71A3E 
X-CRM114-Status: GOOD (  10.33  )
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

From: Benjamin Gaignard <benjamin.gaignard@collabora.com>

RK3588(s) can have multiple gmac controllers.
Re-use rk3568 logic to distinguish them.

Fixes: 2f2b60a0ec28 ("net: ethernet: stmmac: dwmac-rk: Add gmac support for rk3588")
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
This is required to access gmac1, which is the only existing controller
in the rk3588s (slim variant of rk3588).
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index f7269d79a385..6656d76b6766 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1243,6 +1243,12 @@ static const struct rk_gmac_ops rk3588_ops = {
 	.set_rgmii_speed = rk3588_set_gmac_speed,
 	.set_rmii_speed = rk3588_set_gmac_speed,
 	.set_clock_selection = rk3588_set_clock_selection,
+	.regs_valid = true,
+	.regs = {
+		0xfe1b0000, /* gmac0 */
+		0xfe1c0000, /* gmac1 */
+		0x0, /* sentinel */
+	},
 };
 
 #define RV1108_GRF_GMAC_CON0		0X0900
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
