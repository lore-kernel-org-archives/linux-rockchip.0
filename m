Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99990C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rJ3hjoqgP6vHm7b9kMny0Q1ljsH1eyG2LkhXR/VZNM=; b=PNQcUIT2jTtl0J
	FtXRlU/GCz79/j/MMJ43FZE1zpBmANns19NrT2ERBikszYHIxZc0aCOOt+iatEoiAWPdBpJdYFjDc
	o8miGCWZVmHrJovMm6P6N9/JOVKr12ViL4miFG4cId8+5Gl5I39g7Ewv1Z5q5K5kbgZMACWCYviFb
	OO1WJJSiURbfYjXBVwXnv+r60ZZ/8ZAnay5sx6iIrydSy1yQU7rY+2yJeB4OaIOUXdMcVNq2gQ7Hj
	KJmzxJQJAHpe/KI5fVWWmWbTg1TLyzc/PXtTx45ScN1ojKyBntzaDPkLk9iAB1m45TFtyBMZZ6wdF
	AXHs7fNgQbI/oitSbxhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PK0-00Fnff-6Y; Thu, 23 Jun 2022 16:04:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PJg-00FncA-CH; Thu, 23 Jun 2022 16:04:26 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5461366017E3;
	Thu, 23 Jun 2022 17:04:20 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656000260;
	bh=tTOCToDJjcLzI14JLadsZVSZ4cSn/2Or8RPivrlFg50=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l1nq5aDNdCksneNEv4Ky2QDp6lYhWwWbitEnYFwdL0FBBbVRgR6YL1N7UJOwgvrFB
	 If6qvM3MU3Dxy6izVLbsp6gpHvtLtNfuRRMH27qvOMbEkJ2krBgle2c84cnBJjz3VZ
	 8cAGtJg/8XgKWuB3F4fxttvffqAcADxgv7oPhJdt8fM45CnB6WvSm7RV+5atDRF5IZ
	 gcj5mMN2dXrAuGZi2P51IQQ1vLnAp99uZTP/8OPe3yLr5VTbds9Jo9FbirtmXEWLih
	 4HM6IeUVCRG0A9ESxQynNnOAMh8LJp5BHL+uyOWfwYdq2d+gDOIhk32Ih1R3cTGMJK
	 jUxZBzlFnrCkw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C66CC480126; Thu, 23 Jun 2022 18:04:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Elaine Zhang <zhangqing@rock-chips.com>,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH 2/5] clk: rockchip: add register offset of the cores select parent
Date: Thu, 23 Jun 2022 18:03:26 +0200
Message-Id: <20220623160329.239501-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623160329.239501-1-sebastian.reichel@collabora.com>
References: <20220623160329.239501-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_090425_138927_BE1206CD 
X-CRM114-Status: GOOD (  15.29  )
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

The cores select parent register is special on RK3588.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk-cpu.c | 28 ++++++++++++++++++++--------
 drivers/clk/rockchip/clk.h     |  3 +++
 2 files changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
index 47288197c9d7..11aa2259b532 100644
--- a/drivers/clk/rockchip/clk-cpu.c
+++ b/drivers/clk/rockchip/clk-cpu.c
@@ -166,10 +166,16 @@ static int rockchip_cpuclk_pre_rate_change(struct rockchip_cpuclk *cpuclk,
 		}
 	}
 	/* select alternate parent */
-	writel(HIWORD_UPDATE(reg_data->mux_core_alt,
-			     reg_data->mux_core_mask,
-			     reg_data->mux_core_shift),
-	       cpuclk->reg_base + reg_data->core_reg[0]);
+	if (reg_data->mux_core_reg)
+		writel(HIWORD_UPDATE(reg_data->mux_core_alt,
+				     reg_data->mux_core_mask,
+				     reg_data->mux_core_shift),
+		       cpuclk->reg_base + reg_data->mux_core_reg);
+	else
+		writel(HIWORD_UPDATE(reg_data->mux_core_alt,
+				     reg_data->mux_core_mask,
+				     reg_data->mux_core_shift),
+		       cpuclk->reg_base + reg_data->core_reg[0]);
 
 	spin_unlock_irqrestore(cpuclk->lock, flags);
 	return 0;
@@ -202,10 +208,16 @@ static int rockchip_cpuclk_post_rate_change(struct rockchip_cpuclk *cpuclk,
 	 * primary parent by the extra dividers that were needed for the alt.
 	 */
 
-	writel(HIWORD_UPDATE(reg_data->mux_core_main,
-			     reg_data->mux_core_mask,
-			     reg_data->mux_core_shift),
-	       cpuclk->reg_base + reg_data->core_reg[0]);
+	if (reg_data->mux_core_reg)
+		writel(HIWORD_UPDATE(reg_data->mux_core_main,
+				     reg_data->mux_core_mask,
+				     reg_data->mux_core_shift),
+		       cpuclk->reg_base + reg_data->mux_core_reg);
+	else
+		writel(HIWORD_UPDATE(reg_data->mux_core_main,
+				     reg_data->mux_core_mask,
+				     reg_data->mux_core_shift),
+		       cpuclk->reg_base + reg_data->core_reg[0]);
 
 	/* remove dividers */
 	for (i = 0; i < reg_data->num_cores; i++) {
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 7aa45cc70287..6aece7f07a7d 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -370,6 +370,8 @@ struct rockchip_cpuclk_rate_table {
  * @div_core_shift[]:	cores divider offset used to divide the pll value
  * @div_core_mask[]:	cores divider mask
  * @num_cores:	number of cpu cores
+ * @mux_core_reg:       register offset of the cores select parent
+ * @mux_core_alt:       mux value to select alternate parent
  * @mux_core_main:	mux value to select main parent of core
  * @mux_core_shift:	offset of the core multiplexer
  * @mux_core_mask:	core multiplexer mask
@@ -379,6 +381,7 @@ struct rockchip_cpuclk_reg_data {
 	u8	div_core_shift[ROCKCHIP_CPUCLK_MAX_CORES];
 	u32	div_core_mask[ROCKCHIP_CPUCLK_MAX_CORES];
 	int	num_cores;
+	int	mux_core_reg;
 	u8	mux_core_alt;
 	u8	mux_core_main;
 	u8	mux_core_shift;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
