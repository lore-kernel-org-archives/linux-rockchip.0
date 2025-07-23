Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 718B4C83F25
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 07:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gI0zYU4y/8HDv6bxAvjzfAm7TkfgTX/3hSBpWl4qW58=; b=rzThl7+dRI4+td
	JTN+GlX5ruKs+BF1ujnUXsrQDS40Wo7q+fxo9tZLx2klClCNnJd6VsOwrAp/bOYgn9VK8Tfny+Tlc
	Npm2H0q+XX+SAW8csKnksLv2MSiIgfL2QoHT5+U30nIfZl/EAOHWxbPvzwU1XfP8pUXNuzTJo2h3T
	+0CksY3hCmAYZOr5OAezrPr/1FzBWgDkVyhK6/iFc5CKTXiEYpJLtPBQuF/KkDlnuNuvKhf4e8vBJ
	SIFotmO9+bfAB9DiR9IFPR7lDXv9Hu7YcTnV0coDiFIiKftpGQbK1cDeIvxuB6sNpJPaFpH++2P4A
	bQq3KGb6tkiqb7UgrXFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueTpD-00000004EbB-2uGA;
	Wed, 23 Jul 2025 07:23:39 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueTpA-00000004EZI-10vO
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 07:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1753255416;
 bh=0C0aN8MLHW4J4HYuVSaQCCwJddLZcpEJzicpIxJWh/Y=;
 b=rbeHNk8WhPXHajluZpWAX0hSTAtyuozNaRVl85QqWomwWSx4g/dvkGcxkgI2GHjrsWh4uy5Oy
 pW2Ad0iRIMZjysuYgAFL8u3onPbAnLrUxI/Y729/dAPBGvkx3Szf8LeKG6p+LcAPg+DoVjFyJrj
 XSFK24ZOzZCwC0HMPScMtZ3FjfGo6rvuY4PPSunn+WaL7S+Q+ZgBOn7zxq1h+lcr654KWFMM2li
 WV9cnpm+7W3MZnltA3Rb4DCHWF65EA1ckompGA6vGDmZtlrbnJi71e/72T2wsnk3qErRUa9V8bD
 c0dmkzLaVU9nJGcsONxMNAP+6kyRs8dx4o0H0/RKTWDw==
X-Forward-Email-ID: 68808df2a1f2afba60dd694c
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip: naneng-combphy: Enable U3 OTG port for RK3568
Date: Wed, 23 Jul 2025 07:23:22 +0000
Message-ID: <20250723072324.2246498-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_002336_357996_C182C06E 
X-CRM114-Status: GOOD (  13.26  )
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

The boot firmware may disable the U3 port early during boot and leave it
up to the controller or PHY driver to re-enable U3 when needed.

The Rockchip USBDP PHY driver currently does this for RK3576 and RK3588,
something the Rockchip Naneng Combo PHY driver never does for RK3568.
This may result in USB 3.0 ports being limited to only using USB 2.0 or
in special cases not working at all on RK3568.

Write to PIPE_GRF USB3OTGx_CON1 reg to ensure the U3 port is enabled
when a PHY with PHY_TYPE_USB3 mode is used.

Fixes: 7160820d742a ("phy: rockchip: add naneng combo phy for RK3568")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Mainline U-Boot currently do not disable the U3 ports early, something
that possibly may change in a future release of U-Boot.

A pending U-Boot series will likely include a patch similar to
("rockchip: rk3588: Disable USB3OTG U3 ports early") [1] for RK3568.

[1] http://https//lore.kernel.org/r/20250721220734.1617117-9-jonas@kwiboo.se/
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index bf00a85a113b..66fd0f59c21a 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -178,6 +178,8 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg pipe_xpcs_phy_ready;
 	struct combphy_reg pipe_pcie1l0_sel;
 	struct combphy_reg pipe_pcie1l1_sel;
+	struct combphy_reg u3otg0_port_en;
+	struct combphy_reg u3otg1_port_en;
 };
 
 struct rockchip_combphy_cfg {
@@ -777,6 +779,14 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->usb_mode_set, true);
+		switch (priv->id) {
+		case 0:
+			rockchip_combphy_param_write(priv->pipe_grf, &cfg->u3otg0_port_en, true);
+			break;
+		case 1:
+			rockchip_combphy_param_write(priv->pipe_grf, &cfg->u3otg1_port_en, true);
+			break;
+		}
 		break;
 
 	case PHY_TYPE_SATA:
@@ -923,6 +933,8 @@ static const struct rockchip_combphy_grfcfg rk3568_combphy_grfcfgs = {
 	/* pipe-grf */
 	.pipe_con0_for_sata	= { 0x0000, 15, 0, 0x00, 0x2220 },
 	.pipe_xpcs_phy_ready	= { 0x0040, 2, 2, 0x00, 0x01 },
+	.u3otg0_port_en		= { 0x0104, 15, 0, 0x0181, 0x1100 },
+	.u3otg1_port_en		= { 0x0144, 15, 0, 0x0181, 0x1100 },
 };
 
 static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
