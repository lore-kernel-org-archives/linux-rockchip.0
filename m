Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 102EFFC6171
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 18:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdP3BBDfwcdKxlgZToskUPg0ct3Sw/0cE+4WutMJY1Y=; b=bg0fw8xH5axD0r
	gqa1rEiIMwwXlGAy1GlzKbYVW2Emcrb4ctBMsarWm1Wu+pi4Pt8NC0vnw1nYnYVxGh7Q7YotlZrR8
	eHYjQyOLnoZ45UtgQySxKoB4ixijKOYlTVyDHQKLbYgctxj/oMSnkjcH88EeK+npKlRXp6cpNTuha
	NMDcuqJvHLjDwgWhbrWYA5R9scviPXvtDj5fJhb+AkAN3KcpExatwB+kJvGpKF6nNP0xYKPshjtar
	twWzB96DfTx3HrDuWbzD7pNQDm0huARZViiyZhDFciML9yGWytTYKQg0quiAcPwhsyPpUFR18HbfL
	nprmMK5HE+uz0l9gwEKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spBKK-0000000Gqow-3yhH;
	Fri, 13 Sep 2024 18:47:28 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spBKH-0000000GqnV-2DIo
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 18:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1726253242;
	bh=KY1qut/2CPRyfQlXneL/JofqUBDzCV/svK2bIKXZb2M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MRbZU2HW7bSNCDR7zDYETLl+9Fdxul+gLyc/r4GF/xjaeiix2qr6fORIN/iwX5XLy
	 xYCoCCbSfqEuEynHojF18axtiX0zoxhJaC2N7nmdD5HwzFtcdGF0QveT+F/4Xe3Ftc
	 HshRvC8aLRjUrtiSrJCe+h9fo1TftKnGc3JbblUp7Ci73AofbxT4X6o7nzj7hsxggo
	 cVs/6AkhzXS/V9P8qDqVg4dS46toWjuPKcZk3jBspVL4APq24OaT0w95BPVlBwqR+W
	 KE9PqcjYvXwgozSunpYdbHl7fZoyP+Hq+trDpjis0tqaLWnfeX1NH8ADublb8fYCVT
	 DQA/8xmyHdM5g==
Received: from jupiter.universe (dyndsl-091-248-214-164.ewe-ip-backbone.de [91.248.214.164])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2F0D917E3613;
	Fri, 13 Sep 2024 20:47:22 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id DF2BC4800F6; Fri, 13 Sep 2024 20:47:21 +0200 (CEST)
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
Subject: [PATCH v10 3/5] clk: rockchip: expose rockchip_clk_set_lookup
Date: Fri, 13 Sep 2024 20:45:43 +0200
Message-ID: <20240913184720.57381-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240913184720.57381-1-sebastian.reichel@collabora.com>
References: <20240913184720.57381-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_114725_737006_42970A8D 
X-CRM114-Status: GOOD (  14.33  )
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

Move rockchip_clk_add_lookup to clk.h, so that it can be used
by sub-devices with their own driver. These might also have to
do a lookup, so rename the function to rockchip_clk_set_lookup
and add a matching rockchip_clk_get_lookup.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk.c | 14 ++++----------
 drivers/clk/rockchip/clk.h | 12 ++++++++++++
 2 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 0d80729c18d6..b87ca1e8c540 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -197,12 +197,6 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 	clk_fractional_divider_general_approximation(hw, rate, parent_rate, m, n);
 }
 
-static void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
-				    struct clk *clk, unsigned int id)
-{
-	ctx->clk_data.clks[id] = clk;
-}
-
 static struct clk *rockchip_clk_register_frac_branch(
 		struct rockchip_clk_provider *ctx, const char *name,
 		const char *const *parent_names, u8 num_parents,
@@ -292,7 +286,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 			return mux_clk;
 		}
 
-		rockchip_clk_add_lookup(ctx, mux_clk, child->id);
+		rockchip_clk_set_lookup(ctx, mux_clk, child->id);
 
 		/* notifier on the fraction divider to catch rate changes */
 		if (frac->mux_frac_idx >= 0) {
@@ -451,7 +445,7 @@ void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 			continue;
 		}
 
-		rockchip_clk_add_lookup(ctx, clk, list->id);
+		rockchip_clk_set_lookup(ctx, clk, list->id);
 	}
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_register_plls);
@@ -613,7 +607,7 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 			continue;
 		}
 
-		rockchip_clk_add_lookup(ctx, clk, list->id);
+		rockchip_clk_set_lookup(ctx, clk, list->id);
 	}
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_register_branches);
@@ -637,7 +631,7 @@ void rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
 		return;
 	}
 
-	rockchip_clk_add_lookup(ctx, clk, lookup_id);
+	rockchip_clk_set_lookup(ctx, clk, lookup_id);
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_register_armclk);
 
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index e90d04fcd0ee..3dc5fb9bac4f 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -969,6 +969,18 @@ struct rockchip_clk_branch {
 #define SGRF_GATE(_id, cname, pname)				\
 		FACTOR(_id, cname, pname, 0, 1, 1)
 
+static inline struct clk *rockchip_clk_get_lookup(struct rockchip_clk_provider *ctx,
+						  unsigned int id)
+{
+	return ctx->clk_data.clks[id];
+}
+
+static inline void rockchip_clk_set_lookup(struct rockchip_clk_provider *ctx,
+					   struct clk *clk, unsigned int id)
+{
+	ctx->clk_data.clks[id] = clk;
+}
+
 struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 			void __iomem *base, unsigned long nr_clks);
 struct rockchip_clk_provider *rockchip_clk_init_early(struct device_node *np,
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
