Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68EADC00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tnpn/ZQK/9RDV2UtoPz7xIv5EN7vAB0ka5FxrLcPK3g=; b=SN6SgYt8fa6j+X
	9JWsFV9wkODVjI0lAfQOA5Hhj4X6HdGJE+yVRuZItmfxDdnvJhEK3w7mrZ6zVmXJwgRM7jqyPHvPi
	9W6v0vrghO3auTjqXWpf/NBUxFyYPvjXZWp/enUOPF7ZoDgFin8JUhMVri9fh5h1Lfk44vOPxHGHY
	zxGnLIKXyHsXBci10R00Q3UEi1BvhxjD+6HRsfxaXiJm0TSefD/KJ+LC6IMsVrgFgzvS/GdiVmhLz
	q+AMmXXJbGsKvsyhWOJY+wGgWVV80bsnG96NTW9GauIOekdpr/kWv05HQWBsBuLq+bpw5ZykmWFi8
	jmG4p2gCaMz9lHgg9nIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID7O-00EggG-4E; Sun, 31 Jul 2022 17:52:46 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID33-00EeDA-3F
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:21 +0000
Received: by mail-pj1-x1035.google.com with SMTP id t2-20020a17090a4e4200b001f21572f3a4so9771087pjl.0
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=/EX9ef1Nq9yX6Pu4anXNYfBGTc5U9cZkWJG7nY5yiiQ=;
        b=PfmwiK0X4uI/9VLair3AH3u4JWe12FZK/TVa+K00CrbMUy/N4lQ5LaSzKyda7GYgGl
         qtdGToX1OP9CMOqQ8hdgSO3mKMXf5gliKs6vM+9QDU7tvlSkE1AQT4jJidZHyaNSC/AS
         OkfyO0sEju+OJSj+hJEtKSSElzJkMF7uLQ76Mf03BkCs/fXhDfOzCCsbmpQh2eKvj+yj
         TPPm4zMRhK2pPwza1Jx+PYxqF6mPXk8glTKmRZAC+bcWMxqN3laVBCvJE9U8RYc+r+1v
         sbvzzfhRz1Gj70vZeTR00UI/jpHEQn8TLx83cOJjt2i6zIOqkqhpzSrR7HhKmdbQHJUC
         jfKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=/EX9ef1Nq9yX6Pu4anXNYfBGTc5U9cZkWJG7nY5yiiQ=;
        b=lpzFZ6m4d2PF0dsu8199c177fLS7wA9aq6uJqhisd2bO/hEmIt9ihDysW3XrXdK1sX
         J9jJLz2iLCGnzA4jfXnwf+u9/Ib7skjnTevFRF5qu5dfu62XtjYAzqGX0vIYej/0rT7T
         mqEYcjTCbChcNkrc7E9F3KEaOXf4B+ElB2MnDCh778LGtXKjtzR/8FMiHVyP/voeO+zb
         jnARFPR0Q8TX3TVdFY70GHqG2ozhxGfmdAj/t53plABY2GjA6Y28LnfclefT8/E0CDK3
         R5sRnl0OIWYjG/X3GvGH1EJAdJFy3I2e4rGb2WSKOuJ37TnvpnRLKosFe2I4lw1XytiF
         C4qQ==
X-Gm-Message-State: ACgBeo2HmjZ87rjndT3+KB6eb4UWkfcpdYvgoKLp9cKORiy7uE745w/X
	UQTJSH3Pyfp4XmVe0JSKMohGmQ==
X-Google-Smtp-Source: AA6agR5G7x+22NIOm3gvRh0fd0O3cFoZRqUEanRRX/sEiYwyMWtrMyS/SVslrrkFpFqpnM/FshB6BQ==
X-Received: by 2002:a17:902:6ac5:b0:16d:1664:39c9 with SMTP id i5-20020a1709026ac500b0016d166439c9mr13078665plt.104.1659289689678;
        Sun, 31 Jul 2022 10:48:09 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:09 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 08/20] clk: rockchip: Add MUXTBL variant
Date: Sun, 31 Jul 2022 23:17:14 +0530
Message-Id: <20220731174726.72631-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104817_154086_C1AD96E5 
X-CRM114-Status: GOOD (  14.96  )
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

From: Elaine Zhang <zhangqing@rock-chips.com>

A clock branch consisting of a mux with non-standard
select values.
The parent in Mux table is sorted by priority.

Cc: linux-clk@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 drivers/clk/rockchip/clk.c | 27 +++++++++++++++++++++------
 drivers/clk/rockchip/clk.h | 17 +++++++++++++++++
 2 files changed, 38 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index bb8a844309bf..e63d4f20b479 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -40,6 +40,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		const char *const *parent_names, u8 num_parents,
 		void __iomem *base,
 		int muxdiv_offset, u8 mux_shift, u8 mux_width, u8 mux_flags,
+		u32 *mux_table,
 		int div_offset, u8 div_shift, u8 div_width, u8 div_flags,
 		struct clk_div_table *div_table, int gate_offset,
 		u8 gate_shift, u8 gate_flags, unsigned long flags,
@@ -62,6 +63,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		mux->shift = mux_shift;
 		mux->mask = BIT(mux_width) - 1;
 		mux->flags = mux_flags;
+		mux->table = mux_table;
 		mux->lock = lock;
 		mux_ops = (mux_flags & CLK_MUX_READ_ONLY) ? &clk_mux_ro_ops
 							: &clk_mux_ops;
@@ -270,6 +272,8 @@ static struct clk *rockchip_clk_register_frac_branch(
 		frac_mux->shift = child->mux_shift;
 		frac_mux->mask = BIT(child->mux_width) - 1;
 		frac_mux->flags = child->mux_flags;
+		if (child->mux_table)
+			frac_mux->table = child->mux_table;
 		frac_mux->lock = lock;
 		frac_mux->hw.init = &init;
 
@@ -444,11 +448,21 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 		/* catch simple muxes */
 		switch (list->branch_type) {
 		case branch_mux:
-			clk = clk_register_mux(NULL, list->name,
-				list->parent_names, list->num_parents,
-				flags, ctx->reg_base + list->muxdiv_offset,
-				list->mux_shift, list->mux_width,
-				list->mux_flags, &ctx->lock);
+			if (list->mux_table)
+				clk = clk_register_mux_table(NULL, list->name,
+					list->parent_names, list->num_parents,
+					flags,
+					ctx->reg_base + list->muxdiv_offset,
+					list->mux_shift, list->mux_width,
+					list->mux_flags, list->mux_table,
+					&ctx->lock);
+			else
+				clk = clk_register_mux(NULL, list->name,
+					list->parent_names, list->num_parents,
+					flags,
+					ctx->reg_base + list->muxdiv_offset,
+					list->mux_shift, list->mux_width,
+					list->mux_flags, &ctx->lock);
 			break;
 		case branch_muxgrf:
 			clk = rockchip_clk_register_muxgrf(list->name,
@@ -506,7 +520,8 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				ctx->reg_base, list->muxdiv_offset,
 				list->mux_shift,
 				list->mux_width, list->mux_flags,
-				list->div_offset, list->div_shift, list->div_width,
+				list->mux_table, list->div_offset,
+				list->div_shift, list->div_width,
 				list->div_flags, list->div_table,
 				list->gate_offset, list->gate_shift,
 				list->gate_flags, flags, &ctx->lock);
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 7aa45cc70287..93937fb1d368 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -448,6 +448,7 @@ struct rockchip_clk_branch {
 	u8				mux_shift;
 	u8				mux_width;
 	u8				mux_flags;
+	u32				*mux_table;
 	int				div_offset;
 	u8				div_shift;
 	u8				div_width;
@@ -680,6 +681,22 @@ struct rockchip_clk_branch {
 		.gate_offset	= -1,				\
 	}
 
+#define MUXTBL(_id, cname, pnames, f, o, s, w, mf, mt)		\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_mux,			\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= o,				\
+		.mux_shift	= s,				\
+		.mux_width	= w,				\
+		.mux_flags	= mf,				\
+		.gate_offset	= -1,				\
+		.mux_table	= mt,				\
+	}
+
 #define MUXGRF(_id, cname, pnames, f, o, s, w, mf)		\
 	{							\
 		.id		= _id,				\
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
