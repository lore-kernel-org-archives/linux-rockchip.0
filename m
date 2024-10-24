Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8032ACE8E6A
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 18:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKATVDWntUzL+QZHTDzEzLeY4x/cDARuG80FYSXsuzs=; b=1ab+FGNqihNgYp
	ysoMWPONxJI39GGuuaeDFIJW12yxf5H1MRKxTybEL55CAoq+W69PY9K8VZ/cv5CJECzyR6UZSbxaz
	SR/QL1mHBzulsQPlC/LadztpS6zvkx+j3MsrX/wmeWRFd1D6p+ip+66RxObE0vPRFyogqtRZ8juWf
	ddjRa8O3jiupxop/rgNIQR0r3/8jKR7+McycpB4+Q5rpPPWBeijEiQlEKbSeYbjCWi15RwyFHmatH
	i3Tjf+CvyXhrmMmF4NZ25TSgb/RDS4oW6OUeu/uqDBEL/Qng70W4q4YBB5ds6VL/FLfriQZvhOIXG
	VDovqT6ShHn/vUB7mh9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Pw-00000001RZI-3NVL;
	Thu, 24 Oct 2024 18:18:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Nr-00000001RLw-3XGo
	for linux-rockchip@bombadil.infradead.org;
	Thu, 24 Oct 2024 18:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5NSvO483QeiHl47piF6/tHLnqlV6x/hcCIHLI7Fkm3c=; b=cT6xIshl0L676TFeare00dLPNH
	h/0wlychOhCPbZvW8/5n+bTs9W8EB/UPzPdTAio6y2CDb7cLb4Y4HAQTsvBvMFDtTKmkHPuYkKI9D
	trvfbduRf6y7Ba37nMWWP2n1YcUmgG/UiOFapx7LdJyq9EVZMulWDZzNPBkeN/Lny1KVPHyCKlj/v
	vOfump5YFGlJNgx/duu4gtirQ4gcdt1/qVJSYbrXlC1QpYB82mDzhB3KHA0JAXcPS5bd/rz7iO6YE
	n/3z72wGjwjkHbpFlfrLOnFn1vNmrEsPVBPjpeOKYR8nSL4MobBZ1YJp8nfRcSqVoPFM6GOuGZstl
	vt3UF2Dg==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t42No-00000008jLY-2Yed
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Oct 2024 18:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729793783;
	bh=FVrPQrhqFdvkQh7u/z91+NTHFqYIwSNujp86n8fjlKE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OsYquZJMnBg7bPQ/9agmeCMQxSA3qYMoFfrrQ1wXtCGxaSw3NjSjuryLy/wpyci+j
	 4LWuMtiSEU2P+AiTvCBl2cdcqGxLZ9NJ6lbj2uodqJnO/CdrraxnAdOhYkaa91U0cf
	 y7XkelOvZGPJGa6GdmSd5SJSv1AU9Ve15wBpdRUjA2f3JnlFSdxdoB82MHbkAXA2ro
	 iWj49fCCbLiOngX2jEa/J+LioLHZTvrA0jf8Mv1yKwJhcA7B5/9Et5RuWjCRMYASuO
	 E5XVQ93kXc5MrJKqbpbUlTP2sG/xacNCLjESVEYuoqkRlCX+daXApaLS+krA0huptd
	 VaGMYRUnk6tqg==
Received: from jupiter.universe (dyndsl-091-248-214-110.ewe-ip-backbone.de [91.248.214.110])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F158217E36C5;
	Thu, 24 Oct 2024 20:16:22 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A87454800F6; Thu, 24 Oct 2024 20:16:22 +0200 (CEST)
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
Subject: [PATCH v11 3/5] clk: rockchip: expose rockchip_clk_set_lookup
Date: Thu, 24 Oct 2024 20:15:30 +0200
Message-ID: <20241024181621.210509-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024181621.210509-1-sebastian.reichel@collabora.com>
References: <20241024181621.210509-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_191628_751413_202093DF 
X-CRM114-Status: GOOD (  13.66  )
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
index 4c6e2c931f8e..d9e071ca9c5d 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -1022,6 +1022,18 @@ struct rockchip_clk_branch {
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
