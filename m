Return-Path: <SRS0=7Imz=HH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D5FDC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:05:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6BE3E64E34
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:05:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6BE3E64E34
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gJS/Qbh7bRJ5GWIc3Ej4U96Gx6wPAJ4F8dzJsLpHBQc=; b=Q9I6EuoyH9DHDJx3xa7emlbOE
	5v2qFKqGtMKKwO/ahgRZFVrabWJHyTvDF1qe2CWhjFk3ldVp+VPAt8B5RRJkvgAlvlW3eVUFM6mym
	9r2NRltRGpG9GlPT/T3mgB9w9o3ZRbUv8bm38QAzjcky/VSoWSQbyL+Rwl4O0tHjtxI0iJwur7Apt
	zCm+cOpDdQQ5LOPqEN+PnjCnwN/zsJ5UJ7YVPc9VoI8NLllmi5XFr8XINjy6M5moLuzjwailSwqk6
	GciJLB4+cTaofAuknL1NQex74ShKp604kIPmptT4dgGEwPqhmk7SaPXwkDYhXtSg0oqp+d3FIT3Hf
	GvQnNSJtw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7yvM-0003Fe-KZ; Fri, 05 Feb 2021 11:05:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7yvF-0003DW-53
 for linux-rockchip@lists.infradead.org; Fri, 05 Feb 2021 11:05:13 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l7yvC-0001Ja-11; Fri, 05 Feb 2021 12:05:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 4/5] clk: rockchip: use clock id for SCLK_VIP_OUT on rk3368
Date: Fri,  5 Feb 2021 12:05:01 +0100
Message-Id: <20210205110502.1850669-4-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210205110502.1850669-1-heiko@sntech.de>
References: <20210205110502.1850669-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_060509_353987_76A094BA 
X-CRM114-Status: GOOD (  11.69  )
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Export the vip-out clock via the newly added clock-id.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 drivers/clk/rockchip/clk-rk3368.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
index 76fb04120089..61413be48d1a 100644
--- a/drivers/clk/rockchip/clk-rk3368.c
+++ b/drivers/clk/rockchip/clk-rk3368.c
@@ -474,7 +474,7 @@ static struct rockchip_clk_branch rk3368_clk_branches[] __initdata = {
 	COMPOSITE_NODIV(0, "vip_src", mux_pll_src_cpll_gpll_p, 0,
 			RK3368_CLKSEL_CON(21), 15, 1, MFLAGS,
 			RK3368_CLKGATE_CON(4), 5, GFLAGS),
-	COMPOSITE_NOGATE(0, "sclk_vip_out", mux_vip_out_p, 0,
+	COMPOSITE_NOGATE(SCLK_VIP_OUT, "sclk_vip_out", mux_vip_out_p, 0,
 			RK3368_CLKSEL_CON(21), 14, 1, MFLAGS, 8, 5, DFLAGS),
 
 	COMPOSITE_NODIV(SCLK_EDP_24M, "sclk_edp_24m", mux_edp_24m_p, 0,
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
