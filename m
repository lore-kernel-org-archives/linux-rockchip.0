Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50EB6C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZc1PzYIMqvNHLRR7Eqxljng/lXDIsodiqY5fFtO9z8=; b=PrJxYJIkM+wQwK
	JOC0iLf963asWUqEnwU0mtaZrdE7z80R7+zUD55nFPmT+VryOGgaFV1EK7O4oVm8sEcpP1BqGAVG0
	ibkbe+Fwgyk5S0Qvca6Refod0aBgh0LawOeuT7LjASTxeMO8t+X0pDgSsFCvnN1W1cIZ+rjlu0zet
	uthaVO76hMmeKkSRI2w1VhocsmejqjFtk/OaKauKMUdzlnoKOq5anfrZKBnNF2e6rZpm1ZKDSvB5R
	FyJLm4t5za/z9g1Y3EL9dIiM52NtyVy7/E1dgH6zjW+7nOYgTpcPx8hGdof3e5c2vJU5zID0mhi/L
	Q1lboF68Z5VJRdSSL7fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfFK-0055Jg-Be; Thu, 18 Aug 2022 13:07:38 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOeqi-004jsH-Bj
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:42:14 +0000
Received: by mail-pj1-x1029.google.com with SMTP id e19so370511pju.1
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=8Nkr7r66XIhVJb7JyEDPde3ucJLUnXz87S1YILChFSQ=;
        b=QhlCAvnMGaAFH9I+lhJhXHK/6f2Re+rxeGvx2G57tBFypGU+mgkZDgioqX8jPtf0jo
         UOR3NPSctgfd0wawJO09GaldVxOTQoAYLncDdTRjYDX+RbjpWL3/OVM56UFJyIwnqzIC
         JR+BTWigiDjkGynETEMao0VurDg2z5Fp4cUS1Owy0PhO8GYNl5FtvAk8Zf+cdpxCcFYW
         5I8fcoQi5J27Hruzb70UqiSTyz4y03asGj95azyWLynjnnaCel2K1alSgX4RUBQzHCnd
         i8STEtZ5LoLfUN6rU+ZPDSwjVIcjrHPK9tHCWEWHZIpVDvme/xj3TbQ4V+tguG45AhzY
         eHtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=8Nkr7r66XIhVJb7JyEDPde3ucJLUnXz87S1YILChFSQ=;
        b=TuV+9NuLtszyMPT5oLL3+z9mbdMvHqt/G2lrMevuV3kFCu656FHqRjoIS0O1dUk5lE
         c8tXDKtqWWz6RPZJ4OOtaJzFzcnyl+a3jME+cBLq/PyG56swaIwivjUrDMNWjjCEUCyI
         1zVkOY3Yt3K2rCeLx3RW4ab7hTdMhyTLvDbiM8n967VpYa5ViWbf07iFKSefa+8c/NTs
         ME/8H5i1ptLaVHjlEud9b5ZRubYJ6bupxYTbWEglDrgGdXotQ3fHJWbpf8nTL01xIjdf
         es4XNJL1PACpUbcmGLEv7SsN794J/ltF73SP1u2/TJIXH2wJc6IJRu2sbas9poe49Vkj
         7REg==
X-Gm-Message-State: ACgBeo0sfMr8ZnjUYjmxUB0o56MesfoiOO6TFKjFKb1VA/UxAzKIX+FD
	jNpfklsSdLclpxb/jjR+kKaa0w==
X-Google-Smtp-Source: AA6agR5g6VQ7ytP8lPjIJRRm4hvrTa1bnjV0idGre8DRaMeEWEwe69JjGUbNdQgZaieeC7FceleYPg==
X-Received: by 2002:a17:90b:198a:b0:1f5:2f97:12a0 with SMTP id mv10-20020a17090b198a00b001f52f9712a0mr2840938pjb.97.1660826532058;
        Thu, 18 Aug 2022 05:42:12 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:11 -0700 (PDT)
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
Subject: [PATCH v3 08/19] clk: rockchip: Add MUXTBL variant
Date: Thu, 18 Aug 2022 18:11:21 +0530
Message-Id: <20220818124132.125304-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054212_498088_CE7117DA 
X-CRM114-Status: GOOD (  14.27  )
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
