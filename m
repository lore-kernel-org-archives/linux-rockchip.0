Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA4F606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 18:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jvGvIt7j;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=zrXsSPIL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=jXOot5aei5lp0VPxY5M6uXPtp1PXPq8nZfVbdrw3Plo=; b=jvGvIt7j9o9gvTwTxh1j7Ih6rS
	UfmfHFP6wC8VnB3DfyANQNA0o6qxFpZUzQMbP5DMgN4e4TmwsQUzTYAp97xptesx5JcZ6DuFS3LtB
	KA30PV4fzfKRJ89HY69WL1HQau5ZKnPMLI9/5fTDwVSaoqFRrxvCRgwkei/qsfZISTzCL+deQVUh8
	V5oYmMJmvJQDH/8y0zKHYJiys+nnYuTvoBkb3TRY/yJL8JjsSfevTZ/ESChpjg1rheq3Wl0TYrGaS
	rf2kb0rKrIhH0bTbmqHNVZQvhLHSxXSZ+HN789JKilIfJja0J0B5OSYkSZThCuAuH3fD7GOzsdZQS
	XwUqzUgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTNsp-00000006kpv-3017;
	Tue, 17 Nov 2026 18:26:19 +0000
Received: from mail-dy2-x0a.google.com ([2607:f8b0:4864:36::a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTNsn-00000006kpC-12Eh
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 18:26:18 +0000
Received: by mail-dy2-x0a.google.com with SMTP id 5a478bee46e88-36d73027aedso36911eec.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 10:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794939976; x=1795544776; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Ul8avXQobHMQCgtgHYaeZ3hLQKdlpeIZoIBnaJtF8Qg=;
        b=zrXsSPILvXokjVjJNAV/9y+nvQw4jJKHy8rKLOs3xslmF/8MAdR2R2P/wHMvtum2Nl
         TJl+cUDf2zluw4fJELVsVKv2FU/TKDy2X6WTuN5BraTSxUdIhF5uAI+e7RHbv+8UNQBY
         a5sixHmaniFSKww9n3tRfaz/AoZqAZLZHmhiVDxoNDEdDM8ZtaBP4pNdG5vbWhlOPV9R
         U7r+VA3y0goQVvc0SMyhRnIi0TvNVd2m5pF34Q8L5GtHI2H3Qp8XKkkmG6NFpUhtyUE6
         O2tCabGZLIenpLryt06aaGfN7mLgNN/Qh/lu2u9C4lKTD34cXArFJXdH2wqPoS1TzEqq
         UxpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794939976; x=1795544776;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ul8avXQobHMQCgtgHYaeZ3hLQKdlpeIZoIBnaJtF8Qg=;
        b=wj2ngvmy3CptASXAl6eW7AB7JUiHsY7TtgsIC0tyfGWa4NJxFOWDtQCMYOczU5CCQ2
         J+MC8Q0h011MEo6boMZ2vTFyPMzwu1Xi6fF6CqH2pgHC8M90Mga3510IKMKVl7vUiF7b
         w4EsMQ7dA8pR+sZz8X8itbd8z+ztMlZsUIBQJrfR6VKXVuhEj/wHXfawOwI+PKNHnqZb
         yuxKlgNoMJ5m2vQZtQPDi9446cYfuN0HGGGFbTUH4xFX6OG3svkuWsgBK26/rLky3emQ
         VY91uLUlnld/fxEp8GcSIuaNoNhIA0tAbPHYp9BLRnjOcIpHqRRprL0CpdvjjbpbufMz
         VcYg==
X-Forwarded-Encrypted: i=1; AL+hErF0kleeZhmoYmdgXDjEg6Qg26wdo8V4VS4S1417t+r+wjrMR5lsnCb0nvi36A20dBEeqoU8N31K3JxP5zNQmw==@lists.infradead.org
X-Gm-Message-State: APuU4Z8ni/iodO5IqSNokf5eNaeTwfrD9TjRfc/Cs/z+BY5WrNAbNPFC
	jwlA+zjjtWaFAz6kfy+pfU8dUTLLRYHbMm3+B60VMZgzqhpcDVLVW3gF
X-Gm-Gg: AZFdTZdRXl7pm6wleNC6K+hZIjFJN1qf9z1xnLT4RELRmGb9Wj/uQJs6r+XkEsXjIbs
	sDHgxS4u9nlxaqY2mKQPhOlBScplfu0JEMtcb8ek0Vh+6Bz14IcmmlZuOoFM//xPZbJ68lg2X+j
	/mvRbFjTEemqsSv6c6c1lrcYuGCxCsdTueSyv8ulI29CALlTDy3QSq5NuID2pMJy4hcNhw5x8h0
	TBlyC6EQFDdRFW6R8YyS+nOXWmFE/MrDGJSEqDjp7YtNTS/0alXim2bS0aNaGoU37jbMEkEncRy
	9S/gQRRkNtrba4jrQpaVucl8aKatK+nsYSdWPSSnCL7F/Dp9REd+3HXIiz6spsscoEU7sQ+t8bv
	dvJa2EqHxAOVaD8LJxg9+uD9WGeHEwEAD8buB3RfEzzh1sc2Ts1JfPWTleC3qjitdVMIl8fWF+l
	2soyXuYqISaCSSEC0BpR0PSqFbiUXlv3GcWgzyRo/eo4ThfLSPFYt/fZ4AOlq+lfdMkn6YlD93Z
	Ot7qV6xb1TNiQbPUHepXGgRTVRPaVB/HPFqFZeRy8P0e1bVF6UyMHgtfIeXD87Xlk1J8kZx0yQD
	A/PVKp+ftYggA2StZjW/1swPHEfHVgPd0ULXETlFliv75nbq3LibmMAsdJ8=
X-Received: by 2002:a05:7300:4307:b0:376:c352:2fcb with SMTP id 5a478bee46e88-38281020584mr279305eec.9.1794939976302;
        Tue, 17 Nov 2026 10:26:16 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3795378d73dsm45641488eec.2.2026.11.17.10.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 10:26:15 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	Heiko Stuebner <heiko@sntech.de>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next] net: stmmac: dwmac-rk: split gmac_clk_enable into enable/disable
Date: Wed, 18 Nov 2026 02:25:03 +0800
Message-ID: <20261117182502.3045841-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_102617_320740_77465F0D 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

As the great Linus Torvalds once said in
Documentation/process/coding-style.rst:

  "If you need more than 3 levels of indentation, you're screwed anyway,
   and should fix your program."

The gmac_clk_enable() function previously used a 'bool enable' parameter
to handle both clock enabling and disabling. This resulted in deeply
nested if/else blocks, which made the error handling and rollback paths
cumbersome and prone to bugs.

This complexity has led to bugs, such as the bulk clock leak fixed by
commit 8db67bb6a1ff ("net: ethernet: stmmac: dwmac-rk: fix bulk clock leak when the PHY clock fails").

Split the function into two distinct helpers: gmac_clk_enable() and
gmac_clk_disable(). This flattens the code, removes the boolean flag,
makes the caller's intent much clearer, and simplifies the error
unwinding logic.

Additionally, this refactoring aids compiler inlining and CPU branch
prediction (trust me). The reason is simple: no branch, no prediction.
While the compiler might optimize it, there's no guarantee it will :P

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 67 ++++++++++---------
 1 file changed, 36 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index a37df5767d84..78bc8c71ad10 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1178,43 +1178,48 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 	return 0;
 }
 
-static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
+static int gmac_clk_enable(struct rk_priv_data *bsp_priv)
 {
 	int ret;
 
-	if (enable) {
-		if (!bsp_priv->clk_enabled) {
-			ret = clk_bulk_prepare_enable(bsp_priv->num_clks,
-						      bsp_priv->clks);
-			if (ret)
-				return ret;
-
-			ret = clk_prepare_enable(bsp_priv->clk_phy);
-			if (ret) {
-				clk_bulk_disable_unprepare(bsp_priv->num_clks,
-							   bsp_priv->clks);
-				return ret;
-			}
+	if (bsp_priv->clk_enabled)
+		return 0;
 
-			rk_configure_io_clksel(bsp_priv);
-			rk_ungate_rmii_clock(bsp_priv);
+	ret = clk_bulk_prepare_enable(bsp_priv->num_clks,
+				      bsp_priv->clks);
+	if (ret)
+		return ret;
 
-			mdelay(5);
-			bsp_priv->clk_enabled = true;
-		}
-	} else {
-		if (bsp_priv->clk_enabled) {
-			rk_gate_rmii_clock(bsp_priv);
+	ret = clk_prepare_enable(bsp_priv->clk_phy);
+	if (ret)
+		goto err_clk_phy;
 
-			clk_bulk_disable_unprepare(bsp_priv->num_clks,
-						   bsp_priv->clks);
-			clk_disable_unprepare(bsp_priv->clk_phy);
+	rk_configure_io_clksel(bsp_priv);
+	rk_ungate_rmii_clock(bsp_priv);
 
-			bsp_priv->clk_enabled = false;
-		}
-	}
+	mdelay(5);
+	bsp_priv->clk_enabled = true;
 
 	return 0;
+
+err_clk_phy:
+	clk_bulk_disable_unprepare(bsp_priv->num_clks,
+				   bsp_priv->clks);
+	return ret;
+}
+
+static void gmac_clk_disable(struct rk_priv_data *bsp_priv)
+{
+	if (!bsp_priv->clk_enabled)
+		return;
+
+	rk_gate_rmii_clock(bsp_priv);
+
+	clk_bulk_disable_unprepare(bsp_priv->num_clks,
+				   bsp_priv->clks);
+	clk_disable_unprepare(bsp_priv->clk_phy);
+
+	bsp_priv->clk_enabled = false;
 }
 
 static int rk_phy_powerup(struct rk_priv_data *bsp_priv)
@@ -1453,7 +1458,7 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 	if (ret)
 		return ret;
 
-	ret = gmac_clk_enable(bsp_priv, true);
+	ret = gmac_clk_enable(bsp_priv);
 	if (ret)
 		return ret;
 
@@ -1544,7 +1549,7 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 	return 0;
 
 clk_disable:
-	gmac_clk_enable(bsp_priv, false);
+	gmac_clk_disable(bsp_priv);
 	return ret;
 }
 
@@ -1556,7 +1561,7 @@ static void rk_gmac_powerdown(struct rk_priv_data *gmac)
 	pm_runtime_put_sync(gmac->dev);
 
 	rk_phy_powerdown(gmac);
-	gmac_clk_enable(gmac, false);
+	gmac_clk_disable(gmac);
 }
 
 static void rk_get_interfaces(struct stmmac_priv *priv, void *bsp_priv,
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
