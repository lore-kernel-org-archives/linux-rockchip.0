Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9A8FC54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v7jbwfC4DVIcaAMXWaTiWlD1ILKDhwaKS+mHCkBO8wU=; b=G80wT/b/I0KUnS
	saHbtb7jBinfzwnk3BxRHyfYQrbW0j82CEdMDC9YptXRXYKoPiRJVmnxQSexF6n9PKBhGRN4c5ry2
	4kTrPHZo9kkLQOtq1z6i/+AKY304jCPIfRPewsTY61YKbrp/2wt5s0ms7ZVDDvqBTip9F6Kevx0lm
	W/XEHunEedFwSOnzz6QqTGAlZk3o6+7Dx1sQEG+hWWm5NKs4KVyqGbqvkyqG8O5RxdkTwcit24qyu
	5DXoaxepqUzPWzl2+AXgVlfEsZe0KnZJArHBWryUTE2qfOcZXIDlV0P1uXUd8s5Z/lJbkZEFv5TiC
	AxGmNXa5bn6efjbANOzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxVu-007Ytq-8m; Wed, 07 Sep 2022 16:02:54 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxVc-007YkY-QU
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 16:02:38 +0000
Received: by mail-pj1-x1034.google.com with SMTP id fv3so8898953pjb.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 09:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=jLaf/5NHXDrr37rXgj5J2aSIlPrAjSKXcBsh3e3FWQY=;
        b=cxeyf2uX1X91oEvejkorId5aX0Ks8DCIid8AsOPLsYCNNS8EbPNM5gGli9xi5jMraO
         SijHN0T7lmu5vvyuZuv7yEM7udHqhVHfBkoh4s/nzEI7gjuhdRe8cSsGb4gvBvlFM+2G
         LtL7+T/PYVHiczqBIWJHJ8TczkZZHSVKNBMsj8VhIfuq6CmZZgqKWhQlNgYYw1suNfEQ
         jri5+ywwBS79zgNP5SpuZQAkIO1PyRayiY9o/uGW7qJdvtpltbTHbervqmXgL/z0Ip9K
         rmq+bS8VO/nlPbIo0/YcF46F0qWy3M864toopfrSlNVCKKwFs0axmeaRkE6Wity9AOoE
         WgPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=jLaf/5NHXDrr37rXgj5J2aSIlPrAjSKXcBsh3e3FWQY=;
        b=FJO50vREC0js+6uq0LmVv+8yJw7HoypqddrsGsPkIIHg1bOf715BH+DErOejE/SZZc
         CKnTo2G5zbRNHikabTyuDhjJajDUEUUwo7kHUNCMc2osxDoQPDrY/ss6gMs++/RGEjyW
         I5U1lQAG5K94VSTKN0uDsuPb0eZ17txCjh0Evutoz+vMAFZjVJBr14G8aOidKlU+uD+x
         zrVduwbZc1VDFzCdYpK+nrg+6/sumI4FfDz5TXA4PZfXHKfPTvs6T/TYwlEFw3mDhkdv
         LBGDb+CK7n2Fz0o3VYSfJ6O0vo+X35H2J8tdvJKo6C3ElH5/3qOOgoC5fRCgjMzNH0f5
         9N+Q==
X-Gm-Message-State: ACgBeo0tOZwkiuzi9DgUeDMtvuLHjJ5twr1kkrHEOoHOpt4rJtm3LNAa
	04LWvKMEObphWnlBqFJBK1ryhg==
X-Google-Smtp-Source: AA6agR5sApjijE2qHLIwWXNgROi9CG8KxBKXkSVjqjgG2rNO+vQBt9sQkV786oUWx5oAEt4bxD8gJg==
X-Received: by 2002:a17:902:db08:b0:176:d40e:4b57 with SMTP id m8-20020a170902db0800b00176d40e4b57mr4489839plx.172.1662566553960;
        Wed, 07 Sep 2022 09:02:33 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:02:33 -0700 (PDT)
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
Subject: [PATCH v4 02/13] clk: rockchip: Add MUXTBL variant
Date: Wed,  7 Sep 2022 21:31:56 +0530
Message-Id: <20220907160207.3845791-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_090236_944572_F64DB1F2 
X-CRM114-Status: GOOD (  14.93  )
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
Changes for v4:
- rebase on -next
Changes for v3, v2:
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
