Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A60AAC3ABC0
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 18:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CF2lb/gmDx3zIt2I4yy0Syn62cSmGJSMtdYYvOZyPus=; b=ruAfeKl9r1ajrr
	hDmJhV9jNtnGZ0xVWDk9aM3ed4NILMiCdhKntOOHyBLXQ4SBFFkgpI4PwH6bi79p6fl4Gy+ITw7FO
	7q0PsEmsezpUe5Yc4EuruMFpbddPn+KhePoeiIT6XhBfooOPp+TfqKHA+5TeVSlTYu3siwizYrv8t
	9xSp3ebIdMiEf3p8NpRD9DNL9NzqtbSikBkUpw2gq8jkvE2zLzd8lnjyuzQyiyb7Bq6StTcOlKH6n
	mDj8UjUlkncVjqhvsEiRR6ClGIVTumP7TTveMuWeziLC741PNZho0O4RcErf/9TuRjKHJqrVrUaxB
	C+wXwHNKBhmGLB4iscyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD62Z-00000001YHo-1FrA;
	Thu, 08 May 2025 18:32:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD5ye-00000001Xfl-29bP;
	Thu, 08 May 2025 18:28:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=KjYRtbjWqAvWZ/pwyzxlcCtsJ0lfYFeBiDdS56U82xM=; b=xMuh4m8vnWtpTky5xSEd9kPaa8
	wiPiezGc2EoHGucp++SgSrEUhJYFVSS2saHA8tRoQ1jW6S+ESdZUOCipvhze/FNqw3N9P823No91o
	EI7gaks9fr0s/HDP+mxGKfpsA8uab7U5og5OTG1Xo1AyJUhdHhiE5wM0L1de1lTcKCjbQNr3hRJtY
	BmnW+2K9d2RtQTztxE6nNojKl3ubTD9v4+wcp+xa9QHMzr0HveQiORfyuVMfqEOsxcsexD/9qKnPL
	IDLX8n81vN65KGjOafwcKArvMp62lYl/iuXIqRBpNhpulfuBSse7fZvv9PqJcSa2Y7KJifbJgowj6
	UO/XHvsw==;
Received: from [61.8.144.177] (helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uD5yb-0000tP-62; Thu, 08 May 2025 20:28:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 1/2] clk: rockchip: rename branch_muxgrf to branch_grf_mux
Date: Thu,  8 May 2025 20:27:51 +0200
Message-ID: <20250508182752.1925313-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250508182752.1925313-1-heiko@sntech.de>
References: <20250508182752.1925313-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_112812_568628_2D20AEE3 
X-CRM114-Status: GOOD (  14.92  )
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

We now have a number of new branch-types coming from the "General Register
Files" (gates and mmc phase clocks). Their naming as branch_grf_foo is
way nicer, so rename the old branch_muxgrf to a similar scheme.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk.c | 4 ++--
 drivers/clk/rockchip/clk.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 43d7ed5c3418..b140412df65a 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -509,7 +509,7 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 		clk = NULL;
 
 		/* for GRF-dependent branches, choose the right grf first */
-		if ((list->branch_type == branch_muxgrf ||
+		if ((list->branch_type == branch_grf_mux ||
 		     list->branch_type == branch_grf_gate ||
 		     list->branch_type == branch_grf_mmc) &&
 		    list->grf_type != grf_type_sys) {
@@ -540,7 +540,7 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 					list->mux_shift, list->mux_width,
 					list->mux_flags, &ctx->lock);
 			break;
-		case branch_muxgrf:
+		case branch_grf_mux:
 			clk = rockchip_clk_register_muxgrf(list->name,
 				list->parent_names, list->num_parents,
 				flags, grf, list->muxdiv_offset,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 10be168f49e3..1e9c3c0d31e3 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -664,7 +664,7 @@ struct clk *rockchip_clk_register_gate_grf(const char *name,
 enum rockchip_clk_branch_type {
 	branch_composite,
 	branch_mux,
-	branch_muxgrf,
+	branch_grf_mux,
 	branch_divider,
 	branch_fraction_divider,
 	branch_gate,
@@ -943,7 +943,7 @@ struct rockchip_clk_branch {
 #define MUXGRF(_id, cname, pnames, f, o, s, w, mf, gt)		\
 	{							\
 		.id		= _id,				\
-		.branch_type	= branch_muxgrf,		\
+		.branch_type	= branch_grf_mux,		\
 		.name		= cname,			\
 		.parent_names	= pnames,			\
 		.num_parents	= ARRAY_SIZE(pnames),		\
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
