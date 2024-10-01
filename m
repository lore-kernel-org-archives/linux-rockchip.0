Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7562ECEB2E9
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 04:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=METkXGAAU9vzrmwDzOimK4gegJVEuCK7G0qiN2cHPIA=; b=ZJy9TqiFCvtEbT
	WRbLYtYUJ7MyINZeVkHJ+7HhMN9P5nS8CPc2SJv+sa6c3X0yYzcnFv2lAdFXqb1LHFraSPZ4uFL1m
	LnHXa907RF6dGRqqjXN0ZLbMnrWqSkrBEb3pOe9fe/NzjgxB7kvArT4xAp58AqOz/9Xxkw95/etne
	shOoJO6sFRYpL0R6DvBN0H+J0MaLm3Z1yn3VaaYmBDQGZZZ4qOwtXVZZZT/272OXQkTq9TC5XNyxs
	UlOOpk3nmK2Neq+wYPQDCzOmGzB7DaIfb8lNjwaqLZ0hMrUiHg6XVr2y3o9R1T24CxtCYlUl/MeFn
	fz1bXVNCwcbZbVq9mZ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svUZN-00000001ZbF-2Qza;
	Tue, 01 Oct 2024 04:33:05 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svUSP-00000001YQP-2at9;
	Tue, 01 Oct 2024 04:25:54 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 665D223CB2;
	Tue,  1 Oct 2024 06:25:52 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8us6GjPoTX2f; Tue,  1 Oct 2024 06:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727756751; bh=zX7e8iV9phckFaC5bqESpnimFOhE4jLq8O6rmpwV3M0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=ipbCdSh1gEKqLJpQwYh+By6BVU2tbxf5TD4lgl1Cqv/xWBEzTkjfMu9KkvYuLC94N
	 dB05M9uiHIl0PSnHTN8C7yDuTEt2fO2ENymo2Ndc/i70oxqlgSmlsg2eQ3FORjQaFC
	 cOT1Q3+XHKJF7sJW/jbCE4GJm6H2FGGC8B7qVHozgSTyAvfoIzfePavE0yTFl8SyP9
	 g26Dt1mmbI+oqe0NfDD8/+gTbgJrBdjP9gL3aaCZpavgFd/TdhZ8kSuqH8IYuGEuw/
	 b+CIAVzqC5E6C1mJAMZ3V82arLd/o4IjJ5vC2wNVTmqzqYW602A7svSnXE68evrHBI
	 P1nEFHV0kGJEQ==
From: Yao Zi <ziyao@disroot.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH 5/8] clk: rockchip: Add clock type GATE_NO_SET_RATE
Date: Tue,  1 Oct 2024 04:23:59 +0000
Message-ID: <20241001042401.31903-7-ziyao@disroot.org>
In-Reply-To: <20241001042401.31903-2-ziyao@disroot.org>
References: <20241001042401.31903-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_212553_811691_A8377949 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
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

This clock type is similar to GATE, but doesn't allow rate setting,
which presents on RK3528 platform.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 drivers/clk/rockchip/clk.c |  8 ++++++++
 drivers/clk/rockchip/clk.h | 14 ++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 73d2cbdc716b..7d233770e68b 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -521,6 +521,14 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 		case branch_gate:
 			flags |= CLK_SET_RATE_PARENT;
 
+			clk = clk_register_gate(NULL, list->name,
+				list->parent_names[0], flags,
+				ctx->reg_base + list->gate_offset,
+				list->gate_shift, list->gate_flags, &ctx->lock);
+			break;
+		case branch_gate_no_set_rate:
+			flags &= ~CLK_SET_RATE_PARENT;
+
 			clk = clk_register_gate(NULL, list->name,
 				list->parent_names[0], flags,
 				ctx->reg_base + list->gate_offset,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 1efc5c3a1e77..360d16402fe5 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -519,6 +519,7 @@ enum rockchip_clk_branch_type {
 	branch_divider,
 	branch_fraction_divider,
 	branch_gate,
+	branch_gate_no_set_rate,
 	branch_mmc,
 	branch_inverter,
 	branch_factor,
@@ -844,6 +845,19 @@ struct rockchip_clk_branch {
 		.gate_flags	= gf,				\
 	}
 
+#define GATE_NO_SET_RATE(_id, cname, pname, f, o, b, gf)	\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_gate_no_set_rate,	\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.gate_offset	= o,				\
+		.gate_shift	= b,				\
+		.gate_flags	= gf,				\
+	}
+
 #define MMC(_id, cname, pname, offset, shift)			\
 	{							\
 		.id		= _id,				\
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
