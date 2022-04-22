Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0A75C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lE6tWVUAm4G1GZ1Iw4UBMmEFAUfH7HbYxaeDKkql+Gg=; b=ZsqgA0NPxt7zDc
	+ZhPEdH1Ms7bZTpefrqiT0rlZ6GWMVBN1XUoIjUm/Lhw05FtOf8qEN9h0pyOYBEp7OqlfYxT8LZHK
	03WnyRJ9v6CTJXbNDtQ/i3WUxmk+eozbSoZj9AyvqALeLzO3G+/aHxBlQu6I5dgnUKkD9SG1ZEsxM
	W/F0CKHDQP0jlG1ctDk2W/CRL8Ij3+pFdZMsYStooCeLLhnSppojNa/iOp2K0gZAwPwxh9bthKERc
	935g6bRtaVZAShnch5jBlg145WQMclBu8zjs0KUz+T5HyoCT9bygRt+VTHNtan1IrL1VV+cR3TQSs
	QI/knJqJ/5pmI3EV1X1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwpn-001ew4-A6; Fri, 22 Apr 2022 17:12:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwmp-001dSC-5c; Fri, 22 Apr 2022 17:09:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 115501F4689C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650647375;
 bh=YUMddwlCaZjnOHnU5bgjLkGYIIfe4cZsllQJRW4ND7g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WGth9dQUshDB3dKQZvExyost8ZBwrGP7NnAmF4yefIoE669OvjW+1RQjK+8EKdEf0
 gbyh2GNfWIpYebQAh60xLXhxhH7qypTJmnWkwbCRaMqO8cUPAQ7NDi1yGMxiGQrler
 9EXLxBndAV4UePLw5STAFRRkadEeAPlZj2Y7H/8HSz2Q9drwYG5xSGCMo4Jv1mmMVa
 ERK8fodQYZtEMcC8ltTftuCkLU5zyx7ZAd+oOIEMZ+V9OW+XKEl8T5aEQb7bw1xzUD
 x5g9inYIYkLJn7Xo4sjnHmAnZvQflLH8V2iuspsKPAlyEM3a5j4YL5yq6zifrV5NAW
 GlTfcEVRxW1Mw==
Received: by jupiter.universe (Postfix, from userid 1000)
 id C69CD4807EF; Fri, 22 Apr 2022 19:09:32 +0200 (CEST)
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
Subject: [PATCHv1 03/19] clk: rockchip: add pll type for RK3588
Date: Fri, 22 Apr 2022 19:09:04 +0200
Message-Id: <20220422170920.401914-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_100939_531032_069FEE36 
X-CRM114-Status: GOOD (  23.66  )
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

Add RK3588 PLL support including calculation of PLL parameters
for arbitrary frequencies.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
[rebase and partially rewrite code]
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk-pll.c | 287 ++++++++++++++++++++++++++++++++-
 drivers/clk/rockchip/clk.h     |  18 +++
 2 files changed, 304 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index f7827b3b7fc1..010e47eb51b8 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -15,6 +15,7 @@
 #include <linux/iopoll.h>
 #include <linux/regmap.h>
 #include <linux/clk.h>
+#include <linux/units.h>
 #include "clk.h"
 
 #define PLL_MODE_MASK		0x3
@@ -47,6 +48,67 @@ struct rockchip_clk_pll {
 #define to_rockchip_clk_pll_nb(nb) \
 			container_of(nb, struct rockchip_clk_pll, clk_nb)
 
+static int
+rockchip_rk3588_get_pll_settings(struct rockchip_clk_pll *pll,
+				 unsigned long fin_hz,
+				 unsigned long fout_hz,
+				 struct rockchip_pll_rate_table *rate_table)
+{
+	u64 fvco_min = 2250 * HZ_PER_MHZ, fvco_max = 4500 * HZ_PER_MHZ;
+	u64 fout_min = 37 * HZ_PER_MHZ, fout_max = 4500 * HZ_PER_MHZ;
+	u32 p, m, s;
+	u64 fvco, fref, fout, ffrac;
+
+	if (fin_hz == 0 || fout_hz == 0 || fout_hz == fin_hz)
+		return -EINVAL;
+
+	if (fout_hz > fout_max || fout_hz < fout_min)
+		return -EINVAL;
+
+	if (fin_hz / HZ_PER_MHZ * HZ_PER_MHZ == fin_hz &&
+	    fout_hz / HZ_PER_MHZ * HZ_PER_MHZ == fout_hz) {
+		for (s = 0; s <= 6; s++) {
+			fvco = fout_hz << s;
+			if (fvco < fvco_min || fvco > fvco_max)
+				continue;
+			for (p = 2; p <= 4; p++) {
+				for (m = 64; m <= 1023; m++) {
+					if (fvco == m * fin_hz / p) {
+						rate_table->p = p;
+						rate_table->m = m;
+						rate_table->s = s;
+						rate_table->k = 0;
+						return 0;
+					}
+				}
+			}
+		}
+	} else {
+		fout = (fout_hz / HZ_PER_MHZ) * HZ_PER_MHZ;
+		ffrac = (fout_hz % HZ_PER_MHZ);
+		for (s = 0; s <= 6; s++) {
+			fvco = fout << s;
+			if (fvco < fvco_min || fvco > fvco_max)
+				continue;
+			for (p = 1; p <= 4; p++) {
+				for (m = 64; m <= 1023; m++) {
+					if (fvco == m * fin_hz / p) {
+						rate_table->p = p;
+						rate_table->m = m;
+						rate_table->s = s;
+						fref = fin_hz / p;
+						fout = (ffrac << s) * 65535;
+						rate_table->k = fout / fref;
+						return 0;
+					}
+				}
+			}
+		}
+	}
+
+	return -EINVAL;
+}
+
 static const struct rockchip_pll_rate_table *rockchip_get_pll_settings(
 			    struct rockchip_clk_pll *pll, unsigned long rate)
 {
@@ -68,6 +130,14 @@ static long rockchip_pll_round_rate(struct clk_hw *hw,
 	const struct rockchip_pll_rate_table *rate_table = pll->rate_table;
 	int i;
 
+	if (pll->type == pll_rk3588 || pll->type == pll_rk3588_core) {
+		long parent_rate = prate ? *prate : 24 * HZ_PER_MHZ;
+		struct rockchip_pll_rate_table pll_settings;
+
+		if (rockchip_rk3588_get_pll_settings(pll, parent_rate, drate, &pll_settings) >= 0)
+			return pll_settings.rate;
+	}
+
 	/* Assumming rate_table is in descending order */
 	for (i = 0; i < pll->rate_count; i++) {
 		if (drate >= rate_table[i].rate)
@@ -842,6 +912,212 @@ static const struct clk_ops rockchip_rk3399_pll_clk_ops = {
 	.init = rockchip_rk3399_pll_init,
 };
 
+/**
+ * PLL used in RK3588
+ */
+
+#define RK3588_PLLCON(i)               (i * 0x4)
+#define RK3588_PLLCON0_M_MASK          0x3ff
+#define RK3588_PLLCON0_M_SHIFT         0
+#define RK3588_PLLCON1_P_MASK          0x3f
+#define RK3588_PLLCON1_P_SHIFT         0
+#define RK3588_PLLCON1_S_MASK          0x7
+#define RK3588_PLLCON1_S_SHIFT         6
+#define RK3588_PLLCON2_K_MASK          0xffff
+#define RK3588_PLLCON2_K_SHIFT         0
+#define RK3588_PLLCON1_PWRDOWN         BIT(13)
+#define RK3588_PLLCON6_LOCK_STATUS     BIT(15)
+
+static int rockchip_rk3588_pll_wait_lock(struct rockchip_clk_pll *pll)
+{
+	u32 pllcon;
+	int ret;
+
+	/*
+	 * Lock time typical 250, max 500 input clock cycles @24MHz
+	 * So define a very safe maximum of 1000us, meaning 24000 cycles.
+	 */
+	ret = readl_relaxed_poll_timeout(pll->reg_base + RK3588_PLLCON(6),
+					 pllcon,
+					 pllcon & RK3588_PLLCON6_LOCK_STATUS,
+					 0, 1000);
+	if (ret)
+		pr_err("%s: timeout waiting for pll to lock\n", __func__);
+
+	return ret;
+}
+
+static void rockchip_rk3588_pll_get_params(struct rockchip_clk_pll *pll,
+					   struct rockchip_pll_rate_table *rate)
+{
+	u32 pllcon;
+
+	pllcon = readl_relaxed(pll->reg_base + RK3588_PLLCON(0));
+	rate->m = ((pllcon >> RK3588_PLLCON0_M_SHIFT) & RK3588_PLLCON0_M_MASK);
+
+	pllcon = readl_relaxed(pll->reg_base + RK3588_PLLCON(1));
+	rate->p = ((pllcon >> RK3588_PLLCON1_P_SHIFT) & RK3588_PLLCON1_P_MASK);
+	rate->s = ((pllcon >> RK3588_PLLCON1_S_SHIFT) & RK3588_PLLCON1_S_MASK);
+
+	pllcon = readl_relaxed(pll->reg_base + RK3588_PLLCON(2));
+	rate->k = ((pllcon >> RK3588_PLLCON2_K_SHIFT) & RK3588_PLLCON2_K_MASK);
+}
+
+static unsigned long rockchip_rk3588_pll_recalc_rate(struct clk_hw *hw, unsigned long prate)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	struct rockchip_pll_rate_table cur;
+	u64 rate64 = prate, postdiv;
+
+	rockchip_rk3588_pll_get_params(pll, &cur);
+
+	rate64 *= cur.m;
+	do_div(rate64, cur.p);
+
+	if (cur.k) {
+		/* fractional mode */
+		u64 frac_rate64 = prate * cur.k;
+
+		postdiv = cur.p * 65535;
+		do_div(frac_rate64, postdiv);
+		rate64 += frac_rate64;
+	}
+	rate64 = rate64 >> cur.s;
+
+	return (unsigned long)rate64;
+}
+
+static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
+					  const struct rockchip_pll_rate_table *rate)
+{
+	const struct clk_ops *pll_mux_ops = pll->pll_mux_ops;
+	struct clk_mux *pll_mux = &pll->pll_mux;
+	struct rockchip_pll_rate_table cur;
+	int rate_change_remuxed = 0;
+	int cur_parent;
+	int ret;
+
+	pr_debug("%s: rate settings for %lu p: %d, m: %d, s: %d, k: %d\n",
+		 __func__, rate->rate, rate->p, rate->m, rate->s, rate->k);
+
+	rockchip_rk3588_pll_get_params(pll, &cur);
+	cur.rate = 0;
+
+	if (pll->type == pll_rk3588) {
+		cur_parent = pll_mux_ops->get_parent(&pll_mux->hw);
+		if (cur_parent == PLL_MODE_NORM) {
+			pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
+			rate_change_remuxed = 1;
+		}
+	}
+
+	/* set pll power down */
+	writel(HIWORD_UPDATE(RK3588_PLLCON1_PWRDOWN,
+			     RK3588_PLLCON1_PWRDOWN, 0),
+	       pll->reg_base + RK3399_PLLCON(1));
+
+	/* update pll values */
+	writel_relaxed(HIWORD_UPDATE(rate->m, RK3588_PLLCON0_M_MASK, RK3588_PLLCON0_M_SHIFT),
+		       pll->reg_base + RK3399_PLLCON(0));
+
+	writel_relaxed(HIWORD_UPDATE(rate->p, RK3588_PLLCON1_P_MASK, RK3588_PLLCON1_P_SHIFT) |
+		       HIWORD_UPDATE(rate->s, RK3588_PLLCON1_S_MASK, RK3588_PLLCON1_S_SHIFT),
+		       pll->reg_base + RK3399_PLLCON(1));
+
+	writel_relaxed(HIWORD_UPDATE(rate->k, RK3588_PLLCON2_K_MASK, RK3588_PLLCON2_K_SHIFT),
+		       pll->reg_base + RK3399_PLLCON(2));
+
+	/* set pll power up */
+	writel(HIWORD_UPDATE(0, RK3588_PLLCON1_PWRDOWN, 0),
+	       pll->reg_base + RK3588_PLLCON(1));
+
+	/* wait for the pll to lock */
+	ret = rockchip_rk3588_pll_wait_lock(pll);
+	if (ret) {
+		pr_warn("%s: pll update unsuccessful, trying to restore old params\n",
+			__func__);
+		rockchip_rk3588_pll_set_params(pll, &cur);
+	}
+
+	if ((pll->type == pll_rk3588) && rate_change_remuxed)
+		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_NORM);
+
+	return ret;
+}
+
+static int rockchip_rk3588_pll_set_rate(struct clk_hw *hw, unsigned long drate,
+					unsigned long prate)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	struct rockchip_pll_rate_table rate;
+	unsigned long old_rate = rockchip_rk3588_pll_recalc_rate(hw, prate);
+
+	pr_debug("%s: changing %s from %lu to %lu with a parent rate of %lu\n",
+		 __func__, __clk_get_name(hw->clk), old_rate, drate, prate);
+
+	if (rockchip_rk3588_get_pll_settings(pll, prate, drate, &rate) < 0) {
+		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
+		       drate, __clk_get_name(hw->clk));
+		return -EINVAL;
+	}
+
+	return rockchip_rk3588_pll_set_params(pll, &rate);
+}
+
+static int rockchip_rk3588_pll_enable(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+
+	writel(HIWORD_UPDATE(0, RK3588_PLLCON1_PWRDOWN, 0),
+	       pll->reg_base + RK3588_PLLCON(1));
+	rockchip_rk3588_pll_wait_lock(pll);
+
+	return 0;
+}
+
+static void rockchip_rk3588_pll_disable(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+
+	writel(HIWORD_UPDATE(RK3588_PLLCON1_PWRDOWN, RK3588_PLLCON1_PWRDOWN, 0),
+	       pll->reg_base + RK3588_PLLCON(1));
+}
+
+static int rockchip_rk3588_pll_is_enabled(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	u32 pllcon = readl(pll->reg_base + RK3588_PLLCON(1));
+
+	return !(pllcon & RK3588_PLLCON1_PWRDOWN);
+}
+
+static int rockchip_rk3588_pll_init(struct clk_hw *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+
+	if (!(pll->flags & ROCKCHIP_PLL_SYNC_RATE))
+		return 0;
+
+	return 0;
+}
+
+static const struct clk_ops rockchip_rk3588_pll_clk_norate_ops = {
+	.recalc_rate = rockchip_rk3588_pll_recalc_rate,
+	.enable = rockchip_rk3588_pll_enable,
+	.disable = rockchip_rk3588_pll_disable,
+	.is_enabled = rockchip_rk3588_pll_is_enabled,
+};
+
+static const struct clk_ops rockchip_rk3588_pll_clk_ops = {
+	.recalc_rate = rockchip_rk3588_pll_recalc_rate,
+	.round_rate = rockchip_pll_round_rate,
+	.set_rate = rockchip_rk3588_pll_set_rate,
+	.enable = rockchip_rk3588_pll_enable,
+	.disable = rockchip_rk3588_pll_disable,
+	.is_enabled = rockchip_rk3588_pll_is_enabled,
+	.init = rockchip_rk3588_pll_init,
+};
+
 /*
  * Common registering of pll clocks
  */
@@ -890,7 +1166,8 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 	if (pll_type == pll_rk3036 ||
 	    pll_type == pll_rk3066 ||
 	    pll_type == pll_rk3328 ||
-	    pll_type == pll_rk3399)
+	    pll_type == pll_rk3399 ||
+	    pll_type == pll_rk3588)
 		pll_mux->flags |= CLK_MUX_HIWORD_MASK;
 
 	/* the actual muxing is xin24m, pll-output, xin32k */
@@ -957,6 +1234,14 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 		else
 			init.ops = &rockchip_rk3399_pll_clk_ops;
 		break;
+	case pll_rk3588:
+	case pll_rk3588_core:
+		if (!pll->rate_table)
+			init.ops = &rockchip_rk3588_pll_clk_norate_ops;
+		else
+			init.ops = &rockchip_rk3588_pll_clk_ops;
+		init.flags = flags;
+		break;
 	default:
 		pr_warn("%s: Unknown pll type for pll clk %s\n",
 			__func__, name);
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 6aece7f07a7d..bf7c8d082fde 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -221,6 +221,8 @@ enum rockchip_pll_type {
 	pll_rk3066,
 	pll_rk3328,
 	pll_rk3399,
+	pll_rk3588,
+	pll_rk3588_core,
 };
 
 #define RK3036_PLL_RATE(_rate, _refdiv, _fbdiv, _postdiv1,	\
@@ -253,6 +255,15 @@ enum rockchip_pll_type {
 	.nb = _nb,						\
 }
 
+#define RK3588_PLL_RATE(_rate, _p, _m, _s, _k)			\
+{								\
+	.rate   = _rate##U,					\
+	.p = _p,						\
+	.m = _m,						\
+	.s = _s,						\
+	.k = _k,						\
+}
+
 /**
  * struct rockchip_clk_provider - information about clock provider
  * @reg_base: virtual address for the register base.
@@ -288,6 +299,13 @@ struct rockchip_pll_rate_table {
 			unsigned int dsmpd;
 			unsigned int frac;
 		};
+		struct {
+			/* for RK3588 */
+			unsigned int m;
+			unsigned int p;
+			unsigned int s;
+			unsigned int k;
+		};
 	};
 };
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
