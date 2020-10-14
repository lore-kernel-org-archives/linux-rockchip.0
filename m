Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69FAEC4363A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 02:28:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D53BF22201
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 02:28:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="W6CgaVgJ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D53BF22201
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Re/pxV9bgnjiDxM8qMWn6ibqujMz9XT94XbcRgZxE9g=; b=W6CgaVgJJg7IryKcwp7mJLiKxu
	46KMjtBYUBDYLC5tMz1njuKHL8PJUmVrWZSM+UYv3mStJNk1vntMxOkLV/DowCP1E9R1xJgUUFYuc
	4byE+0guNyghQX+oCajfN38wlwAZ841eWHPILSeCMLPHRI3Ar1/xyB6qF6o8A9pFr+Ac1kwoEbXjX
	YBObs+0vgYdSaXdMT0RoT5B/5B1WskkB7c8Lb+OOu1l425+kg6d7JWgAXIf7L47iDwnTmZNhfwKGL
	mRrt/nrqYA+qzSOqfyXxNC8cGqzC6I3fXwYwCprHI6EPQ5cZedVul+PFlPInagl9FPyTALE2TcFce
	Mnpgg6yA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSWWn-0002Xu-JU; Wed, 14 Oct 2020 02:28:33 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSWWg-0002T1-OC
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 02:28:29 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id 5B37BA51BD;
 Wed, 14 Oct 2020 10:28:17 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18907T140199837284096S1602642493459899_; 
 Wed, 14 Oct 2020 10:28:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4943f9f179517a5b6aa54915bf2ae1a6>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v4 3/5] clk: rockchip: add a clock-type for muxes based in the
 pmugrf
Date: Wed, 14 Oct 2020 10:28:10 +0800
Message-Id: <20201014022812.6733-4-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201014022812.6733-1-zhangqing@rock-chips.com>
References: <20201014022812.6733-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_222827_808365_AF832DCF 
X-CRM114-Status: GOOD (  12.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: huangtao@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org,
 mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Rockchip socs often have some tiny number of muxes not controlled from
the core clock controller but through bits set in the pmugrf.
Use MUXPMUGRF() to cover this special clock-type.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk.c |  9 +++++++++
 drivers/clk/rockchip/clk.h | 17 +++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 8f77c3f9fab7..4f238f2851ac 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -407,6 +407,8 @@ struct rockchip_clk_provider * __init rockchip_clk_init(struct device_node *np,
 
 	ctx->grf = syscon_regmap_lookup_by_phandle(ctx->cru_node,
 						   "rockchip,grf");
+	ctx->pmugrf = syscon_regmap_lookup_by_phandle(ctx->cru_node,
+						   "rockchip,pmugrf");
 
 	return ctx;
 
@@ -482,6 +484,13 @@ void __init rockchip_clk_register_branches(
 				list->mux_shift, list->mux_width,
 				list->mux_flags);
 			break;
+		case branch_muxpmugrf:
+			clk = rockchip_clk_register_muxgrf(list->name,
+				list->parent_names, list->num_parents,
+				flags, ctx->pmugrf, list->muxdiv_offset,
+				list->mux_shift, list->mux_width,
+				list->mux_flags);
+			break;
 		case branch_divider:
 			if (list->div_table)
 				clk = clk_register_divider_table(NULL,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 0d401ce09a54..ae059b7744f9 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -238,6 +238,7 @@ struct rockchip_clk_provider {
 	struct clk_onecell_data clk_data;
 	struct device_node *cru_node;
 	struct regmap *grf;
+	struct regmap *pmugrf;
 	spinlock_t lock;
 };
 
@@ -390,6 +391,7 @@ enum rockchip_clk_branch_type {
 	branch_composite,
 	branch_mux,
 	branch_muxgrf,
+	branch_muxpmugrf,
 	branch_divider,
 	branch_fraction_divider,
 	branch_gate,
@@ -662,6 +664,21 @@ struct rockchip_clk_branch {
 		.gate_offset	= -1,				\
 	}
 
+#define MUXPMUGRF(_id, cname, pnames, f, o, s, w, mf)		\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_muxpmugrf,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= o,				\
+		.mux_shift	= s,				\
+		.mux_width	= w,				\
+		.mux_flags	= mf,				\
+		.gate_offset	= -1,				\
+	}
+
 #define DIV(_id, cname, pname, f, o, s, w, df)			\
 	{							\
 		.id		= _id,				\
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
