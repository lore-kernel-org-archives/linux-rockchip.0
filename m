Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3CACC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rJ3hjoqgP6vHm7b9kMny0Q1ljsH1eyG2LkhXR/VZNM=; b=mVUSgI34zNHvni
	uMBXdumQDOAknPYf0MmbpozVnZVogtbgVMnTyNzS+mgi7J+2HdpwtNZd58qsB9rpV+EuqsislVaL9
	L1XTCZQBOkWS/M5MzqCV9yv1jHHO3nCtmiT67W16oQ0U+3hXDZAiGgUiAhpeGcwFp+ldTcPE+vCIk
	APQL9zVFHtVjhZMiW9mZfcVdBwUdPaaWc6W0XBEEVujOTW7N3ZYXUIr0O8tZV4hxrnbgyhvgtS3ns
	Ek1RL7MMAuqwZPl3mMDjda6H111SFFmxUST6htUtAHMCeGu0OjcX+DR1xqBTlL0n1yHwEGlg51eMa
	tn9HGsfbPrmRErbQE9Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwnw-001e0n-8i; Fri, 22 Apr 2022 17:10:48 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwmp-001dS3-5h; Fri, 22 Apr 2022 17:09:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 01FF41F4682E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650647375;
 bh=tTOCToDJjcLzI14JLadsZVSZ4cSn/2Or8RPivrlFg50=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nRp37PUl9g3sm7SH8QHjqumjOWGGKySd3yzOHLHBV+nA3BANrQOEtF1yocoezTbtb
 BdFmZ3mfNyleoMjixrmdThLcDlzewu0sZ1sHllb9zi9rC5kXI6DpCh5Cua/ea+CxOJ
 0g5F3zi4GA8xGPKEj0nrGI//atb9/XyPMupHBlfKMS4odQEWqCaPR8/XVnOEn6610O
 +1u23HS5ZQPUOddDLl2XnpTgpFbkYtb/3iItd7Q43dLC68I7DY73y78fIOA9x1AVhA
 9lZKK81IHvxhO/Z7HyTd65ZrbjkOKu2yR/8GiEJrP2ezdJIPpA0Xu0CiPa1PeLx5Ke
 K859EnBRcajJw==
Received: by jupiter.universe (Postfix, from userid 1000)
 id C42014807E1; Fri, 22 Apr 2022 19:09:32 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@lists.collabora.co.uk, Elaine Zhang <zhangqing@rock-chips.com>,
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv1 02/19] clk: rockchip: add register offset of the cores
 select parent
Date: Fri, 22 Apr 2022 19:09:03 +0200
Message-Id: <20220422170920.401914-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_100939_504650_BA79258D 
X-CRM114-Status: GOOD (  15.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
