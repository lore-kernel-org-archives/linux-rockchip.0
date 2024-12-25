Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12B43E7718B
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Dec 2024 22:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DP4fXYI43mYxSO2kik7zeQKNSqzllPHENa36lFlNrus=; b=cYhUR75wKPtOhXnvvKAu1ZdCIo
	2xOrD2V3Yd2P5dZe29onr+/gW5k5HkZuVPetBPldEbFB54AI0QjpqmpiIwCGbdhgkAme7oPJXzjF6
	z/RJ+qbV1r1SdWsRcN1NF8YD2SqNxmjBJto9eHdsCnS4EUQrt9lDHDLAQHG29hqu6pn5r3YGk22R1
	fNjCuDr6q6udUrPkMec2vN1tGpiPf1UUS/np+6WUin5j4kdWKj+mS8D9AJvK7qnE4VgLhnj+wNtL8
	GYVvUQHzAybvwALA+pp8ZY1dJ3iWR9z0oen0yOIEpGw62z/q6GKVpXlDBJuFWuIJtPN665TIvBDnJ
	Z9lAfysw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQZms-0000000EOPB-1mUG;
	Wed, 25 Dec 2024 22:23:30 +0000
Received: from out-179.mta1.migadu.com ([2001:41d0:203:375::b3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQZmp-0000000EOO7-2oGN
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Dec 2024 22:23:29 +0000
Date: Thu, 26 Dec 2024 00:23:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kazlauskas.me;
	s=key1; t=1735165397;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=k9pF6+2axEMbavdACTkaPmVYaDIgYUJbNjLXch1X4X8=;
	b=IM1OsVaJiYT7/mFrDMofj27TQeTx5AdLKG3iG+Vdc40uyLejSi+Csp9CnMOp7oASQoLlz+
	/OxqcqAfXlNF7IqBy8DI1tWe/4aIFCOgL8NGJ65YNy/G2+ZsXTHDAen2ptYtJvS3PhC4Ff
	4wQ324/ZNvoRQjpzXVkoo8K+UcCHAck=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Simonas Kazlauskas <linux-rockchip@kazlauskas.me>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] rk3328: request that SoC resets use the first reset
Message-ID: <66qwutykozwkh6veu6ojbmwp4glmefrvkncyu6gytdpy76kj2k@fpgggo4wczpt>
References: <345dtojzib23cd3dnqe4wftqbwlu3ozey6oc4qrkcf3nbbehua@3l64mrtmrgvq>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <345dtojzib23cd3dnqe4wftqbwlu3ozey6oc4qrkcf3nbbehua@3l64mrtmrgvq>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_142327_998309_5ED0D98C 
X-CRM114-Status: GOOD (  18.32  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On my test board (Radxa RockPiE)/setup the second reset does not appear
to be working at all - requesting second reset even as early as inside
the U-Boot will entirely hang the CPU with the only way to recover from
it being to pull physical RST pin to ground or to power cycle the
device. While there may be ways to set up the second reset such that it
would work correctly, it is pretty clear to me that at least Linux
doesn't do that currently.

SOC reset sources (watchdog timer in particular) defaults to using the
second type of reset, so any attempts to use the feature on my board are
unsuccessful. Instead of the SoC reset, a hang occurs.

This change makes a request that SoC reset sources use the first reset;
the same one as the regular reset that occurs as part of a regular
reboot.

Context: The second type of reset is supposed to preserve GPIO and GRF
state, which to me sounds undesirable, especially for WDT use: what if
the GPIO/GRF state was exactly the part that led to WDT elapse?

Note: I do not have any other Rockchip hardware currently to test if the
behaviour extends to other SoCs by this manufacturer. As thus the
implementation is self-contained to rk3328 currently.

Signed-off-by: Simonas Kazlauskas <linux@kazlauskas.me>
---
  drivers/clk/rockchip/clk-rk3328.c | 15 +++++++++++++++
  drivers/clk/rockchip/clk.h        |  1 +
  2 files changed, 16 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index 3bb87b27b662..9ef2d53341e0 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -878,6 +878,20 @@ static const char *const rk3328_critical_clocks[] __initconst = {
  	"pclk_phy_niu",
  };
  
+#define RK3328_TSADC_GLB_SRST_CTRL_MASK		(1 << 14)
+#define RK3328_WDT_GLB_SRST_CTRL_MASK		(1 << 14)
+
+static void rk3328_soc_rst_init(void __iomem *reg_base)
+{
+	void __iomem *glb_cnt_address;
+	uint32_t previous_value;
+
+	glb_cnt_address = reg_base + RK3328_GLB_CNT_TH;
+	previous_value = readl(glb_cnt_address);
+	writel(previous | RK3328_TSADC_GLB_SRST_CTRL_MASK | RK3328_WDT_GLB_SRST_CTRL_MASK,
+	       glb_cnt_address);
+}
+
  static void __init rk3328_clk_init(struct device_node *np)
  {
  	struct rockchip_clk_provider *ctx;
@@ -890,6 +904,7 @@ static void __init rk3328_clk_init(struct device_node *np)
  		return;
  	}
  
+	rk3328_soc_rst_init(reg_base);
  	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3328_clk_branches,
  						   ARRAY_SIZE(rk3328_clk_branches)) + 1;
  	ctx = rockchip_clk_init(np, reg_base, clk_nr_clks);
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index f1957e1c1178..bf5f23952064 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -157,6 +157,7 @@ struct clk;
  #define RK3328_CLKSEL_CON(x)		((x) * 0x4 + 0x100)
  #define RK3328_CLKGATE_CON(x)		((x) * 0x4 + 0x200)
  #define RK3328_GRFCLKSEL_CON(x)		((x) * 0x4 + 0x100)
+#define RK3328_GLB_CNT_TH		0x90
  #define RK3328_GLB_SRST_FST		0x9c
  #define RK3328_GLB_SRST_SND		0x98
  #define RK3328_SOFTRST_CON(x)		((x) * 0x4 + 0x300)
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
