Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3194CE8E9B
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 18:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zv0fRdrEnSzY1gMN7gHW26vtUf6QjIGv0ucpBWbD/Ag=; b=Ns93Az4BeQX1WS
	t6F6M1Y2XadzE0qBKRA9s74/r+bYY5LhUqe42YjPANZxLWdxjEYC/bJ73g/KtzGm+PGPyhwt7M8+C
	OnvB0irVO3s7SCy5yaTNLO7i3khKbwkbi/VJ+QuNqymGLLvM2czASXSlWy2yfRHYw5ikvnqBe53FA
	JJmPR+pRhcc0iOkCKUTRPX/W8i3WIbKXuaxEJL0vv1is56gdWB3dXbKvW/CT4HqTaoBoa5nZjV1VW
	3kCWjq2pSVTv6v0IM4Jy4v6GNjlG5w51wtXCQNIlJuLB8BJimk9NKs6QffwpZpyIIF5Qf/aJWCnY/
	yiugcYjUIdKlef8tqRNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Px-00000001RaC-3vL5;
	Thu, 24 Oct 2024 18:18:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Nt-00000001RMG-14jD
	for linux-rockchip@bombadil.infradead.org;
	Thu, 24 Oct 2024 18:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kvt/+TXeGyy9pVvJPRBZ3XK9KswO6102GQ8ll+ZPFz0=; b=e+35Rkp9iOfzwgpdNyIGIN9sy0
	+5MGyoHIyWIpFGXDmdC4uQLG0d82DSecqaTurtdMW8PC0BpfbToCgyuHuUNxv2PgY1JZo62irtli1
	23BlnTnobB6zIDRKouUfaYtAbUkefgqW20KQ6qW1q7Rdnn18vddyM6GAUDmqLi7oVWvCuOxEOWRS2
	8K/RVVz2jbObjhmfTX8WQFmBeGHbtzgUGT1rwOeV3KN2EkOBpYFQQtbhYOceb5jPMx/NK3oO6OkKK
	L8DZGo2BTAA+56qoduIibkXdPm17n2jyL5MIHbmDErx+M6B3cNUd/bS/mTz6YTG4Qx+DYNtGmJap8
	T9DX7wIQ==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Np-00000008jLb-07EX
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Oct 2024 18:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729793783;
	bh=rMdpiZjDz6Jsu8hE/1Dn6Tq5/zM6Su+UFlpHdnoMFPA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ds7dzDunsLn600/5NNNm2dzrR/ArTCt12C65GdgV8XK4hgj7BJHbkYCBO740gLsL8
	 s+lPWOuBdIKWNeS/nS279dY2TO+7sbLzc32qgyNibqGv44rAoD9rZZpeB+aHX+fQTt
	 HqbmjRXE//xU4uIj4KT4SgMPeOYc6n33RrwtPgc6PMA/8mPVSuvKP75mlr9zPBGRgP
	 BoE/SilArKbrdv47e8bKbQwaftyCcWK0U5jZVH0QyIz9w+GUUedimiSDJeUwfQeJSH
	 r9Yr0XyvhHfIS+V4QDpXJ8PI/FOSD/YC3kpKEgBevsX7VA3OhV6GbAl9boI/3PS+0D
	 c4g+2gzFNTgpA==
Received: from jupiter.universe (dyndsl-091-248-214-110.ewe-ip-backbone.de [91.248.214.110])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0829617E36CC;
	Thu, 24 Oct 2024 20:16:23 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A4A5B4800E4; Thu, 24 Oct 2024 20:16:22 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	Michal Tomek <mtdev79b@gmail.com>,
	Ilya K <me@0upti.me>,
	Chad LeClair <leclair@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v11 1/5] clk: rockchip: support clocks registered late
Date: Thu, 24 Oct 2024 20:15:28 +0200
Message-ID: <20241024181621.210509-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024181621.210509-1-sebastian.reichel@collabora.com>
References: <20241024181621.210509-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_191629_226660_9444A0CA 
X-CRM114-Status: GOOD (  16.47  )
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

When some clocks are registered late and some clocks are registered
early we need to make sure the late registered clocks report probe defer
until the final registration has happened.

But we do not want to keep reporting probe defer after the late
registration has happened. Also not all Rockchip SoCs have late
registered clocks and may not need to report probe defer at all.

This restructures code a bit, so that there is a new function
rockchip_clk_init_early(), which should be used for initializing the CRU
structure on SoCs making use of late initialization in addition to the
early init. These platforms should call rockchip_clk_finalize()
once all clocks have been registered.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk.c | 35 +++++++++++++++++++++++++++++++----
 drivers/clk/rockchip/clk.h |  3 +++
 2 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 2fa7253c73b2..0d80729c18d6 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -359,14 +359,17 @@ static struct clk *rockchip_clk_register_factor_branch(const char *name,
 	return hw->clk;
 }
 
-struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
-						void __iomem *base,
-						unsigned long nr_clks)
+static struct rockchip_clk_provider *rockchip_clk_init_base(
+		struct device_node *np, void __iomem *base,
+		unsigned long nr_clks, bool has_late_clocks)
 {
 	struct rockchip_clk_provider *ctx;
 	struct clk **clk_table;
+	struct clk *default_clk_val;
 	int i;
 
+	default_clk_val = ERR_PTR(has_late_clocks ? -EPROBE_DEFER : -ENOENT);
+
 	ctx = kzalloc(sizeof(struct rockchip_clk_provider), GFP_KERNEL);
 	if (!ctx)
 		return ERR_PTR(-ENOMEM);
@@ -376,7 +379,7 @@ struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 		goto err_free;
 
 	for (i = 0; i < nr_clks; ++i)
-		clk_table[i] = ERR_PTR(-ENOENT);
+		clk_table[i] = default_clk_val;
 
 	ctx->reg_base = base;
 	ctx->clk_data.clks = clk_table;
@@ -393,8 +396,32 @@ struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 	kfree(ctx);
 	return ERR_PTR(-ENOMEM);
 }
+
+struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
+						void __iomem *base,
+						unsigned long nr_clks)
+{
+	return rockchip_clk_init_base(np, base, nr_clks, false);
+}
 EXPORT_SYMBOL_GPL(rockchip_clk_init);
 
+struct rockchip_clk_provider *rockchip_clk_init_early(struct device_node *np,
+						      void __iomem *base,
+						      unsigned long nr_clks)
+{
+	return rockchip_clk_init_base(np, base, nr_clks, true);
+}
+EXPORT_SYMBOL_GPL(rockchip_clk_init_early);
+
+void rockchip_clk_finalize(struct rockchip_clk_provider *ctx)
+{
+	int i;
+
+	for (i = 0; i < ctx->clk_data.clk_num; ++i)
+		if (ctx->clk_data.clks[i] == ERR_PTR(-EPROBE_DEFER))
+			ctx->clk_data.clks[i] = ERR_PTR(-ENOENT);
+}
+
 void rockchip_clk_of_add_provider(struct device_node *np,
 				  struct rockchip_clk_provider *ctx)
 {
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index f1957e1c1178..4c6e2c931f8e 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -1024,6 +1024,9 @@ struct rockchip_clk_branch {
 
 struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 			void __iomem *base, unsigned long nr_clks);
+struct rockchip_clk_provider *rockchip_clk_init_early(struct device_node *np,
+			void __iomem *base, unsigned long nr_clks);
+void rockchip_clk_finalize(struct rockchip_clk_provider *ctx);
 void rockchip_clk_of_add_provider(struct device_node *np,
 				struct rockchip_clk_provider *ctx);
 unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
