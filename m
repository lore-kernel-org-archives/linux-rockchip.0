Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AF0CC61DA4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 04:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UN7Q2Ytl6JW8v3gFJJylqe1gDo3+Y91YEkRhBSCea3g=; b=0L8113FgXFA7Qe
	L6nVQebx6N1COpE5zzpa0Ih08FUaAB3Q6QDvwSxCk9UFxqyeajHSOn/b6oIqBj2/zBUxA5Tcv546s
	/TIUK2V8rSKWuhE/Zr7X+llW2qwTrxfyWxeh3YW2hobfWi9RFDVpb2fjN5OlYfQ1I1ejC1aiFUVqr
	JJvmpc+fUXBHZ9AVhxt5PywOfT+vAOMtH6MQwUXnZrnjI2dDVfwRMLlgxpsabHmx7YXeNnm3l/xo4
	PA/E8+5Xtf9zF71bKT1pIpy63Lix3V/JiFJz1ep2ni/FO0oYuZfYIopeCZpeWL1PrCu3hEVA/t8yG
	gzBo5GHJK8aihl4SMc0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNnMW-000HPc-3Y; Fri, 03 Feb 2023 04:07:44 +0000
Received: from smtp-out2.suse.de ([2001:67c:2178:6::1d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNnMI-000HKR-Ss; Fri, 03 Feb 2023 04:07:32 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 172C22096D;
	Fri,  3 Feb 2023 04:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1675397247; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=W6LAf+G09vuz70hUJuoAiRBEY/ntes/Sp44R/HbLWyw=;
	b=RfGzxTh7rF5uFvZsTCfjb8DOj+k9fRkybTKL22tunx10Ww9hgRVIBCjlwbMZGtaIsgvYqc
	34fLOS4GZqbxYhHNIXOeYOUIEGCPpeX9YyWoZPyW9benN3QzGBI4Z5x+UPaBRm/nAC6vx7
	5KP/JBRqd7AEz2drNWfZT71a+Lgci1A=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 0A5C81346D;
	Fri,  3 Feb 2023 04:07:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id sTqsMX2I3GOsHQAAMHmgww
	(envelope-from <wqu@suse.com>); Fri, 03 Feb 2023 04:07:25 +0000
From: Qu Wenruo <wqu@suse.com>
To: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: sebastian.reichel@collabora.com
Subject: [PATCH] phy: rockchip: remove 24M and 24M clock handling for naneng combphy
Date: Fri,  3 Feb 2023 12:07:08 +0800
Message-Id: <550a7ba2ebdbd6ea2a717ee82ba7f0244638c692.1675397136.git.wqu@suse.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_200731_116728_7C714EDE 
X-CRM114-Status: GOOD (  12.72  )
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

Although the combphy supports 24M and 25M clocks, they are not utilized
at any upstream dts (RK3568) nor downstream vendor kernel (RK3568,
RK3588S, RK3588).

Another thing is, with those two clocks removed, it's easier to port the
rk3588 combphy, as 3588 combphy needs to write into cfg->pipe_clk_24m
for 24M clock case.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
REASON FOR RFC:

I'm not familiar with the arm realm at all, thus I don't know if it's a
common practice to support unutilized features.

But if it's OK for upstream kernel drivers to support functionality that
may never be utilized, please ignore this patch.
---
 .../phy/rockchip/phy-rockchip-naneng-combphy.c  | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 7b213825fb5d..ae7083ae17a2 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -94,7 +94,6 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg pipe_rxterm_set;
 	struct combphy_reg pipe_txelec_set;
 	struct combphy_reg pipe_txcomp_set;
-	struct combphy_reg pipe_clk_25m;
 	struct combphy_reg pipe_clk_100m;
 	struct combphy_reg pipe_phymode_sel;
 	struct combphy_reg pipe_rate_sel;
@@ -454,21 +453,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 	rate = clk_get_rate(priv->refclk);
 
 	switch (rate) {
-	case REF_CLOCK_24MHz:
-		if (priv->type == PHY_TYPE_USB3 || priv->type == PHY_TYPE_SATA) {
-			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz. */
-			val = PHYREG15_SSC_CNT_VALUE << PHYREG15_SSC_CNT_SHIFT;
-			rockchip_combphy_updatel(priv, PHYREG15_SSC_CNT_MASK,
-						 val, PHYREG15);
-
-			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
-		}
-		break;
-
-	case REF_CLOCK_25MHz:
-		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
-		break;
-
 	case REF_CLOCK_100MHz:
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
 		if (priv->type == PHY_TYPE_PCIE) {
@@ -530,7 +514,6 @@ static const struct rockchip_combphy_grfcfg rk3568_combphy_grfcfgs = {
 	.pipe_rxterm_set	= { 0x0000, 12, 12, 0x00, 0x01 },
 	.pipe_txelec_set	= { 0x0004, 1, 1, 0x00, 0x01 },
 	.pipe_txcomp_set	= { 0x0004, 4, 4, 0x00, 0x01 },
-	.pipe_clk_25m		= { 0x0004, 14, 13, 0x00, 0x01 },
 	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
 	.pipe_phymode_sel	= { 0x0008, 1, 1, 0x00, 0x01 },
 	.pipe_rate_sel		= { 0x0008, 2, 2, 0x00, 0x01 },
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
