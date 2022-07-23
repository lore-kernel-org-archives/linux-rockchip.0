Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79E72C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqNCsv4lq3NiG9wcvPdY8PqPJamLFoQox5YSFW0EnQE=; b=i67Qc33jsHbCTy
	ZF/4aFwyqqmkiz2aP99aEvsXCuIMXIcjNMIFfVGkBAeqwjRd6TQtng4YDklMf/OkI14Vv17hlKFgi
	xBqbp0HVyby9pzykZ+dg+W15riUV3Zk6VyQ5IoibwZOJJg1xbbFS6CLNBwooRjMnFy8omg5M7HkIY
	XQTIH7Djg7zCkpxBpKdGBnrLI2fM+WMQU2UlM4z73txUTHHTorPsLy7qpYpJbMKvYKnXqRD4amJgs
	rj0Cy0eLtzbDQOQ3dcmHytYQEZ2af+MzyoSAhJ7NxO+l3Vlr+sD0A35r8c7TqLj8ZsCnu+xwqPW71
	UVQYC0RJaozD3QtZAKbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM4B-007BQa-Jw; Sat, 23 Jul 2022 20:49:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzV-0078cf-J1
	for linux-rockchip@bombadil.infradead.org; Sat, 23 Jul 2022 20:44:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=AI3hnw6GQst6wMLXzrihn+hd6U/jUuMJfevBUHROELE=; b=ITep/lC/xhpBAwCR3UfGp4fsUw
	xPk8Tq9oquIMxTFSp0JTR237UfDx/zx8XpFeXXdLXbAfggas9AXbQ0ytr4A5A/6tPZDFO7ryVAxKw
	NJqcVxWaCbP1/zohKEKrXgdvKf4o9P1xxOLbKnjkxiZTogYQn2jk5ojg7LCmCL98rCA6nXtj1Ve2w
	7YIF0iMYK7ShsCJ5cUJCaYD5lBWAMs8A/v2DdmG4Ztf1r1xL1amJKAO+X3Be+dO4h/8FbBtQkT1LQ
	WXNTV0f4JxHFasU7Q2RFCmM+CyelvUS335PrTvjhrh4vLV/JuWbW1GCHeJPWVkQ4KIAqvGT0xHAu5
	uqzp/tww==;
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzR-006Fl9-6c
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:44:47 +0000
Received: by mail-pj1-x1033.google.com with SMTP id v16-20020a17090abb9000b001f25244c65dso3580420pjr.2
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AI3hnw6GQst6wMLXzrihn+hd6U/jUuMJfevBUHROELE=;
        b=lVzHs3rolZvJFaqy/ykX/EK/UVzyUAQG+ZlAhRXyb4OMUVWki3p6eZa/WkSO8qHUw+
         KbIH+Y0+06ZFciOq2E/reLcwUHteaaJQ6Fet6Zv3+ZPJ9ZfMikE7LWu3Z4UOzCzP7ZC8
         x6vcqAO6eOzV4D94vcQTxEuBoSBugHhsCS+vNm4SKc6SXouRkqTRjezc54Hli6XU5SBf
         aHISBNOkfLTgAYtE/0OR4W3epfO1cABRs+AU/dssoj1Tnkc4LdoQMXhO5Yjek8KAqRNO
         0374KmerPd1ka1a/Mq/G4kFpmpHN/T5t2cTAijc96/AsOUxZ+P+b2QSaSw9qGV19RujS
         r3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AI3hnw6GQst6wMLXzrihn+hd6U/jUuMJfevBUHROELE=;
        b=r1siPoW9stVjkcvRhf4ARgcSkVhFvqhkQXhnWoMdoyxFysQIbYnbrs4npnvJkvDc2V
         dGvBOLsVYrFjlZ/vdiWc8zJ7Nq2yrALh8eOXitabsV9lFmiuYyS2qgMszhZMT8z+8kZn
         4gXIoByZkx3Hg5S3Q8VIMnkNOMczZ6h/r6UNY774aEAXrzj1UXrn/lX8IL0mCtgMCbJr
         dyhZ8viIJ1XJCEjDhB2lHjOHgvdiQ2iHCqvnY2Lycc4PVRZDUHaXpBhLRVoHqNu2UrO4
         elFe4qAQtFPqh6tmJHDM9gG6a8sfRFYuSaLivkSfyuWWtk4fjJrqzXyNKQ4wDQpCSRtU
         Ffsg==
X-Gm-Message-State: AJIora8t1rxq2PNvIf0ltFF2+X7ZEpIbJUbuwqN7JbaOslNL0j4SUQA0
	Bjo7NNPDqj5DwR5iAZrtYVRAuA==
X-Google-Smtp-Source: AGRyM1uEaWfeyll9tqTyemxevW+UC6MQUUhhMa0jWh6eD9Mo1/y+0SMbCJDJyliC2AzISHWuHvVhpQ==
X-Received: by 2002:a17:902:ccc4:b0:156:5d37:b42f with SMTP id z4-20020a170902ccc400b001565d37b42fmr5778156ple.157.1658609070929;
        Sat, 23 Jul 2022 13:44:30 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:30 -0700 (PDT)
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
Subject: [PATCH 08/22] clk: rockchip: Add MUXTBL variant
Date: Sun, 24 Jul 2022 02:13:21 +0530
Message-Id: <20220723204335.750095-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_214445_552734_08C7CE2D 
X-CRM114-Status: GOOD (  14.11  )
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
