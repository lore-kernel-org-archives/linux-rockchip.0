Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98140FC6174
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 18:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ry5vKpJjRJgs56F8ircdRvQtPhhedYLh7XmItKi3+nM=; b=2WUzNTRHTDiVKr
	be+ShxiW+WY1PVkVMEOOQJp2Hr0G310t7n+W/J+I0se/PjxNQ4KnskWL/AtmutlRdpBA4hGLU0Hyu
	sN4nVMOYyDI1/3GqKMxg45mGLUBs7CSOBs7GJvHcNRvr7QWsDRVUmG5UxgZhhU6+ZQdgHDvWYXrlI
	nXcLxRyw1UXx+PsTc7vRj8K+RkbOsnIzIAJC4zmPvxfWlSZ8wtaM9Ury7Jke37Wv91YRTUYavES+t
	mtcMXJTMUz9O6s8IE7rJhxRL9pqJAxKxGk2Mn5Lji7KweCSW/bSFm+iqNRmW0sT61eAgcRa72rpnU
	kPINXwAMxM7P1No5qNJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spBKL-0000000Gqpf-2T9P;
	Fri, 13 Sep 2024 18:47:29 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spBKH-0000000GqnS-1yHJ
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 18:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1726253242;
	bh=rITSry2xLNISMJCkk+Pk0SePa7cy3UVe1V/XbJQtXgg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pCP+tWKE4dkusRa92kx52k5FWuvR9dNodR5SHH4IGpOk4Rfd45gejfEehrSjckuPo
	 eY77rEB9hDUrhGWD6TWDc0ZcFeUNtFvmO+V6k+h1469L9rA+a10pqF7XfkDXljV00K
	 ecpyJCRJciHeWIFNCXM4C1X/rAil4QAoea3ldpRHrQxv2sdk0cF188WinN7j/xfjKX
	 +9JO4nnGRqX2eTY4Y5JnArm1FqSEWjgC6NRH/bTtb5/Hq0IsxBSIx0b5qW0rPPezf2
	 /9lmD+TnFno+ymNuKH5tbA8GvrJEOaaTPVG7wWkHUXojK2Migauy1lKuvAmI7EJIai
	 ekDwaMUpFoy3g==
Received: from jupiter.universe (dyndsl-091-248-214-164.ewe-ip-backbone.de [91.248.214.164])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 292FD17E360D;
	Fri, 13 Sep 2024 20:47:22 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id DBD834800E4; Fri, 13 Sep 2024 20:47:21 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
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
Subject: [PATCH v10 1/5] clk: rockchip: support clocks registered late
Date: Fri, 13 Sep 2024 20:45:41 +0200
Message-ID: <20240913184720.57381-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240913184720.57381-1-sebastian.reichel@collabora.com>
References: <20240913184720.57381-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_114725_714984_8177E82F 
X-CRM114-Status: GOOD (  17.14  )
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
index fd3b476dedda..e90d04fcd0ee 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -971,6 +971,9 @@ struct rockchip_clk_branch {
 
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
