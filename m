Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA59CC531CB
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 13:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zCsBvRbomABw4v83bd74r6jpfATdTbBWCsZhl4nOY7Y=; b=BIt1pztJm2CDsI
	5EHz7XWR9+b+ywNj12gUKvS3ohTJ7vyyGfGxW7vhcqmXUpTBE20aTGUE5wJ52PkkKzSodig/O9Q6E
	d83kQzwF3hpjVDvFS4ZS/8wqgQDeP8QXG2ctBEe95pw4eEp/nJc0/OSRk6svXDhA4PyvovYdL9URv
	5OOuW5YWxGmV50d4SfhAiqnLkckwQ5wPP4aIEw+zVFX7ycYimLRudujVxNDTCHcegCFPSK1NwFzia
	jIvfBcwX2fmr1o5Kzmsxdx+b+L6Fm1TTeU3RLed8VDDwh6DmfqxycvCRFYcJ5n1qqRPjSxYcEoo4M
	gL41c0oZzmlsfNPwoLag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtMT-0000000EMha-23xY;
	Thu, 23 Jul 2026 13:21:17 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtMP-0000000EMgN-1ZEg
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 13:21:16 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-495590dde14so7633985e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jul 2026 06:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784812871; x=1785417671; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=QyplRS1DffUbEFjacDmgZoU8UCPSqbtQ0as41mf0HVc=;
        b=nfLtwFBOpCkQfMQtWwhBl3sX9ELcXOzQKal/Qf2+jyPDA8zeyNTc+BRj8zyme27XbY
         e85bs3pUy2VNk1O1x7JONKLXa+CGQtvufpan5dwX/AoJMIPRBSSPITAGkcmgtfNBexQU
         XSc+iU31KEXF01JSxtjhY03/upTDHZNEHcfBfG+imLq67e5IT/7HlREAjthLrPqtQgPf
         tnRgqL7L8BQ4PrhtFsUN2qM3HgXdL1nXT2ArYw1N84uaBhqn1eLuS6QJmxuzDU70oNwF
         8GQA7ccbjx7uOVa8bacDHEBNoJOoRq1zXq5yRxcLeCzGR4uj4gDHrRGuoKVfTForJKf6
         8wNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784812871; x=1785417671;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=QyplRS1DffUbEFjacDmgZoU8UCPSqbtQ0as41mf0HVc=;
        b=rXMSXtS7/A1sLEQySCtdTDa1kzVqm6jkiu3hnaEM8Uf8K8ZzTmeF6MRUypprKtMm+K
         bNnCrtyNbIMfV4bv8TVnFtovpBZVEtVdWR6ktusu5v2a06YlYKcA33ZLTQ9eawxlroQq
         45uj/FdwijLYrCKPWtRx5oeWy70lM8PUleSkYCnmDyEFPS7OcCYjZQEAteZ02KxjXath
         z8AiGyKUNA/BjWswzX2S+bv4RtRTcspfVrANM7sv3OmohBDKfnJ9zVYATeXdpkZUInZ1
         b40e5RYjVrQPZUBzIkgpQWmjRWZL1cSNyQkUnhdWl51cjH9McHrjomXC6tqDTYcORlRA
         sv/A==
X-Forwarded-Encrypted: i=1; AHgh+RoaLGLHCxm68hYuKzvSxhcTUag/J8OVj7xv+JgCybwhvmB90YwZ+xOcT5+P68gFXehs6szfz1sZCkIXB2NvRg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyETFhtEeMXgFjUWkLciQwm10TpyrOFxTbjMSwERw8GgXir1uLv
	IGsUkUfa3pcsJqHeMlissg0imNHpq1E9YiajuRIy2mUgq8oH1AvGr0ZIG1QpeCxhp0M=
X-Gm-Gg: AR+sD10zJT1jzsNlNoaNiC5z9D9TlWbFnavmPFR6g5zW1A+0R4UzDsBBcNrX7nREhDP
	pMLZ+7HZI1GQ22vtPrtAkCLGBpTByDbQyCqh2B421kZPoZ4Aic2bgFI3dtE0gRmS++Wf2cnpe/b
	1zN1OOK6hJh+RIxbUDN8SDc1jZYVhiMBrLPJLjvqAcTxrPZFP0TZl5dkcxDG+/Iz7+yiX1Lzf/5
	Wc8dbGSO5xcOHo/rx6V5N14geiJB6w9VG/cnf/XtZIpp6HOD8ZNEBG0fuLWUtG0ol4diuXVYrlz
	VsLWl0FPdwHhJatSBYXNZ97+inXCdqTOGKfE/kBGWKHAHx/zT3/igdwjT50r6yS/uWRK3T4Rh4F
	CDOz7UmZfBMEkF5lV35UMePkDL79D3RRvZ27kZxzmogIejpblmL74u0F+A3c+89iZMoJ2qZDwN0
	0=
X-Received: by 2002:a05:600c:1989:b0:495:3f99:849c with SMTP id 5b1f17b1804b1-49573cc7cdbmr34884625e9.15.1784812870891;
        Thu, 23 Jul 2026 06:21:10 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:a867:44d7:3dfb:853])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-495653d38dbsm212834195e9.15.2026.07.23.06.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 06:21:10 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Thu, 23 Jul 2026 15:20:59 +0200
Subject: [PATCH] clk: clean-up simple provider misuse of the consumer API
MIME-Version: 1.0
Message-Id: <20260723-clk-provider-simple-clean-v1-1-0c9668240467@baylibre.com>
X-B4-Tracking: v=1; b=H4sIADoVYmoC/yXM2wrCMBCE4Vcpe20gxnrAV5FexM2oqzUNu1oKp
 e9u1MtvYP6ZDCowOjYzKUYxGXLFetUQ32K+wkmqpuDDzu/DxnH/cEWHURLUmTxLj7ohZhcPacv
 MLTh4qv+iuMj0a5+6v+19voNf3yAtywfP3KrvfQAAAA==
X-Change-ID: 20260723-clk-provider-simple-clean-a8d5ccc4ec20
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Heiko Stuebner <heiko@sntech.de>, Prashant Gaikwad <pgaikwad@nvidia.com>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=13042; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=5PC1BUPqjn84sMFOiHEFKs/MchmaKpjT7tXqaFk6VQw=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBqYhVDjFfkfm1vKsz+mUigA8SkOvIt15F0127V1
 hIvrE2Q8O6JAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCamIVQwAKCRDm/A8cN/La
 hTnlD/429Tt/FvvQ0DzBJsZvVZonAkS3mHIEFVtSHR/NQK+0YVXAYtZDYK9UPDiFuFeBzFLR+eE
 15Joa5tz68sHlcCzdtoo9igO1H/LJ73B8DGpIDS3cujHyTxZ4WW14ZmMTu+vYNJeCnIqwpHFbvi
 gjd2D4wiowUOyGGkL9IYwx/pCP2X2etCNOF3DG4CvyTH/4ucNV5CMLvP2ZsYeGhpoUOmykDck68
 WqXKt3MOyZwytEE4y9ybWiYdALwN6qNfiEnZVrC5lQElHGcEIE3vHZxStV4OeKXOSBgb5y1PmXc
 BtRaFxfJcsSiL9rYX0X/GZXlJ9AsVpu8BlLgUlHs5wTygdN4jT1WFmnUJRPnQVJeO3Q+ofprRtg
 SNv088gPNkZng5lF+t/1LHLkSWxFDjhsICel8nXWTtl9/ZbhzCXgeQsj/TddUd/tjDI2YdKFouW
 rCNhtHCCwHDgDAUowpkM/cYWfbmv6kqVloLK8RryhNIci84O9PM2wkwTn4kl1ef1SNUgYmj/NVe
 JyAMm57AvZFa8kOxkJE+KaRP6nvaPl5HPJPwrpHuTnCyaXua7hBn3CQNYhymdyNyAp4XzKm4jt8
 qMRIyIICohIg/rJhlfBb+OPPTVKHBH3KWitWSu4JKXIhz9j+JIT1Rq3btQJO/d8Rim197YKcAFb
 n8mmWNACc+DaRqw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_062113_582267_4C93BC30 
X-CRM114-Status: GOOD (  16.46  )
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

Clock provider should not be using the consumer interface.
In other words, a provider should not be dealing with struct clk.

This change targets occurrences for which the provider uses the
consumer interface and corresponding clk_hw interface exist:
* __clk_get_name() -> clk_hw_get_name()
* __clk_is_enabled() -> clk_hw_is_enabled()
* clk_get_rate() -> clk_hw_get_rate()

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
The change being very simple, I did not think it was necessary
to split it into multiple changes. If you prefer it to be split,
just let me know how.
---
 drivers/clk/mvebu/clk-cpu.c            |  2 +-
 drivers/clk/qcom/clk-hfpll.c           |  4 ++--
 drivers/clk/qcom/clk-krait.c           |  2 +-
 drivers/clk/qcom/clk-rcg.c             |  4 ++--
 drivers/clk/qcom/clk-rcg2.c            |  2 +-
 drivers/clk/renesas/r9a06g032-clocks.c |  2 +-
 drivers/clk/rockchip/clk-pll.c         | 24 ++++++++++++------------
 drivers/clk/st/clkgen-pll.c            | 20 ++++++++++----------
 drivers/clk/tegra/clk-tegra210.c       |  2 +-
 drivers/clk/ti/clockdomain.c           |  2 +-
 10 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/clk/mvebu/clk-cpu.c b/drivers/clk/mvebu/clk-cpu.c
index 26d52ecaac50..24196e288fe2 100644
--- a/drivers/clk/mvebu/clk-cpu.c
+++ b/drivers/clk/mvebu/clk-cpu.c
@@ -153,7 +153,7 @@ static int clk_cpu_on_set_rate(struct clk_hw *hwclk, unsigned long rate,
 static int clk_cpu_set_rate(struct clk_hw *hwclk, unsigned long rate,
 			    unsigned long parent_rate)
 {
-	if (__clk_is_enabled(hwclk->clk))
+	if (clk_hw_is_enabled(hwclk))
 		return clk_cpu_on_set_rate(hwclk, rate, parent_rate);
 	else
 		return clk_cpu_off_set_rate(hwclk, rate, parent_rate);
diff --git a/drivers/clk/qcom/clk-hfpll.c b/drivers/clk/qcom/clk-hfpll.c
index 705352aff067..9e9118d24df7 100644
--- a/drivers/clk/qcom/clk-hfpll.c
+++ b/drivers/clk/qcom/clk-hfpll.c
@@ -166,7 +166,7 @@ static int clk_hfpll_set_rate(struct clk_hw *hw, unsigned long rate,
 
 	spin_lock_irqsave(&h->lock, flags);
 
-	enabled = __clk_is_enabled(hw->clk);
+	enabled = clk_hw_is_enabled(hw);
 	if (enabled)
 		__clk_hfpll_disable(h);
 
@@ -220,7 +220,7 @@ static int clk_hfpll_init(struct clk_hw *hw)
 		regmap_read(regmap, hd->status_reg, &status);
 		if (!(status & BIT(hd->lock_bit))) {
 			WARN(1, "HFPLL %s is ON, but not locked!\n",
-			     __clk_get_name(hw->clk));
+			     clk_hw_get_name(hw));
 			clk_hfpll_disable(hw);
 			__clk_hfpll_init_once(hw);
 		}
diff --git a/drivers/clk/qcom/clk-krait.c b/drivers/clk/qcom/clk-krait.c
index f5ce403e1e27..5e4408b7445d 100644
--- a/drivers/clk/qcom/clk-krait.c
+++ b/drivers/clk/qcom/clk-krait.c
@@ -68,7 +68,7 @@ static int krait_mux_set_parent(struct clk_hw *hw, u8 index)
 	sel = clk_mux_index_to_val(mux->parent_map, 0, index);
 	mux->en_mask = sel;
 	/* Don't touch mux if CPU is off as it won't work */
-	if (__clk_is_enabled(hw->clk))
+	if (clk_hw_is_enabled(hw))
 		__krait_mux_set_sel(mux, sel);
 
 	mux->reparent = true;
diff --git a/drivers/clk/qcom/clk-rcg.c b/drivers/clk/qcom/clk-rcg.c
index 31f0650b48ba..1664101e8f78 100644
--- a/drivers/clk/qcom/clk-rcg.c
+++ b/drivers/clk/qcom/clk-rcg.c
@@ -208,7 +208,7 @@ static int configure_bank(struct clk_dyn_rcg *rcg, const struct freq_tbl *f)
 	bool banked_p = !!rcg->p[1].pre_div_width;
 	struct clk_hw *hw = &rcg->clkr.hw;
 
-	enabled = __clk_is_enabled(hw->clk);
+	enabled = clk_hw_is_enabled(hw);
 
 	ret = regmap_read(rcg->clkr.regmap, rcg->bank_reg, &reg);
 	if (ret)
@@ -771,7 +771,7 @@ static int clk_rcg_lcc_set_rate(struct clk_hw *hw, unsigned long rate,
 	regmap_update_bits(rcg->clkr.regmap, rcg->ns_reg, gfm, 0);
 	ret = __clk_rcg_set_rate(rcg, f);
 	/* Switch back to M/N if it's clocking */
-	if (__clk_is_enabled(hw->clk))
+	if (clk_hw_is_enabled(hw))
 		regmap_update_bits(rcg->clkr.regmap, rcg->ns_reg, gfm, gfm);
 
 	return ret;
diff --git a/drivers/clk/qcom/clk-rcg2.c b/drivers/clk/qcom/clk-rcg2.c
index 6064a0e17d51..d7914e59129f 100644
--- a/drivers/clk/qcom/clk-rcg2.c
+++ b/drivers/clk/qcom/clk-rcg2.c
@@ -489,7 +489,7 @@ static int clk_rcg2_determine_gp_rate(struct clk_hw *hw,
 	u64 parent_rate;
 
 	parent = clk_hw_get_parent(hw);
-	parent_rate = clk_get_rate(parent->clk);
+	parent_rate = clk_hw_get_rate(parent);
 	if (!parent_rate)
 		return -EINVAL;
 
diff --git a/drivers/clk/renesas/r9a06g032-clocks.c b/drivers/clk/renesas/r9a06g032-clocks.c
index 076f587dfd39..1da25e4fb4d7 100644
--- a/drivers/clk/renesas/r9a06g032-clocks.c
+++ b/drivers/clk/renesas/r9a06g032-clocks.c
@@ -1014,7 +1014,7 @@ r9a06g032_div_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
 	if (clk->index == R9A06G032_DIV_UART ||
 	    clk->index == R9A06G032_DIV_P2_PG) {
 		pr_devel("%s div uart hack!\n", __func__);
-		req->rate = clk_get_rate(hw->clk);
+		req->rate = clk_hw_get_rate(hw);
 		return 0;
 	}
 	req->rate = DIV_ROUND_UP(req->best_parent_rate, div);
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 6b853800cb6b..89a783204f0e 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -259,13 +259,13 @@ static int rockchip_rk3036_pll_set_rate(struct clk_hw *hw, unsigned long drate,
 	const struct rockchip_pll_rate_table *rate;
 
 	pr_debug("%s: changing %s to %lu with a parent rate of %lu\n",
-		 __func__, __clk_get_name(hw->clk), drate, prate);
+		 __func__, clk_hw_get_name(hw), drate, prate);
 
 	/* Get required rate settings from table */
 	rate = rockchip_get_pll_settings(pll, drate);
 	if (!rate) {
 		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
-			drate, __clk_get_name(hw->clk));
+			drate, clk_hw_get_name(hw));
 		return -EINVAL;
 	}
 
@@ -319,7 +319,7 @@ static int rockchip_rk3036_pll_init(struct clk_hw *hw)
 
 	rockchip_rk3036_pll_get_params(pll, &cur);
 
-	pr_debug("%s: pll %s@%lu: Hz\n", __func__, __clk_get_name(hw->clk),
+	pr_debug("%s: pll %s@%lu: Hz\n", __func__, clk_hw_get_name(hw),
 		 drate);
 	pr_debug("old - fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\n",
 		 cur.fbdiv, cur.postdiv1, cur.refdiv, cur.postdiv2,
@@ -336,12 +336,12 @@ static int rockchip_rk3036_pll_init(struct clk_hw *hw)
 
 		if (!parent) {
 			pr_warn("%s: parent of %s not available\n",
-				__func__, __clk_get_name(hw->clk));
+				__func__, clk_hw_get_name(hw));
 			return 0;
 		}
 
 		pr_debug("%s: pll %s: rate params do not match rate table, adjusting\n",
-			 __func__, __clk_get_name(hw->clk));
+			 __func__, clk_hw_get_name(hw));
 		rockchip_rk3036_pll_set_params(pll, rate);
 	}
 
@@ -743,13 +743,13 @@ static int rockchip_rk3399_pll_set_rate(struct clk_hw *hw, unsigned long drate,
 	const struct rockchip_pll_rate_table *rate;
 
 	pr_debug("%s: changing %s to %lu with a parent rate of %lu\n",
-		 __func__, __clk_get_name(hw->clk), drate, prate);
+		 __func__, clk_hw_get_name(hw), drate, prate);
 
 	/* Get required rate settings from table */
 	rate = rockchip_get_pll_settings(pll, drate);
 	if (!rate) {
 		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
-			drate, __clk_get_name(hw->clk));
+			drate, clk_hw_get_name(hw));
 		return -EINVAL;
 	}
 
@@ -803,7 +803,7 @@ static int rockchip_rk3399_pll_init(struct clk_hw *hw)
 
 	rockchip_rk3399_pll_get_params(pll, &cur);
 
-	pr_debug("%s: pll %s@%lu: Hz\n", __func__, __clk_get_name(hw->clk),
+	pr_debug("%s: pll %s@%lu: Hz\n", __func__, clk_hw_get_name(hw),
 		 drate);
 	pr_debug("old - fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\n",
 		 cur.fbdiv, cur.postdiv1, cur.refdiv, cur.postdiv2,
@@ -820,12 +820,12 @@ static int rockchip_rk3399_pll_init(struct clk_hw *hw)
 
 		if (!parent) {
 			pr_warn("%s: parent of %s not available\n",
-				__func__, __clk_get_name(hw->clk));
+				__func__, clk_hw_get_name(hw));
 			return 0;
 		}
 
 		pr_debug("%s: pll %s: rate params do not match rate table, adjusting\n",
-			 __func__, __clk_get_name(hw->clk));
+			 __func__, clk_hw_get_name(hw));
 		rockchip_rk3399_pll_set_params(pll, rate);
 	}
 
@@ -992,13 +992,13 @@ static int rockchip_rk3588_pll_set_rate(struct clk_hw *hw, unsigned long drate,
 	const struct rockchip_pll_rate_table *rate;
 
 	pr_debug("%s: changing %s to %lu with a parent rate of %lu\n",
-		 __func__, __clk_get_name(hw->clk), drate, prate);
+		 __func__, clk_hw_get_name(hw), drate, prate);
 
 	/* Get required rate settings from table */
 	rate = rockchip_get_pll_settings(pll, drate);
 	if (!rate) {
 		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
-			drate, __clk_get_name(hw->clk));
+			drate, clk_hw_get_name(hw));
 		return -EINVAL;
 	}
 
diff --git a/drivers/clk/st/clkgen-pll.c b/drivers/clk/st/clkgen-pll.c
index 9eb2cb83fa69..17551c6a879a 100644
--- a/drivers/clk/st/clkgen-pll.c
+++ b/drivers/clk/st/clkgen-pll.c
@@ -260,7 +260,7 @@ static int __clkgen_pll_enable(struct clk_hw *hw)
 		if (pll->data->switch2pll_en)
 			CLKGEN_WRITE(pll, switch2pll, 0);
 
-		pr_debug("%s:%s enabled\n", __clk_get_name(hw->clk), __func__);
+		pr_debug("%s:%s enabled\n", clk_hw_get_name(hw), __func__);
 	}
 
 	return ret;
@@ -295,7 +295,7 @@ static void __clkgen_pll_disable(struct clk_hw *hw)
 
 	CLKGEN_WRITE(pll, pdn_ctrl, 1);
 
-	pr_debug("%s:%s disabled\n", __clk_get_name(hw->clk), __func__);
+	pr_debug("%s:%s disabled\n", clk_hw_get_name(hw), __func__);
 }
 
 static void clkgen_pll_disable(struct clk_hw *hw)
@@ -405,14 +405,14 @@ static int stm_pll3200c32_determine_rate(struct clk_hw *hw,
 					&req->rate);
 	else {
 		pr_debug("%s: %s rate %ld Invalid\n", __func__,
-			 __clk_get_name(hw->clk), req->rate);
+			 clk_hw_get_name(hw), req->rate);
 		req->rate = 0;
 
 		return 0;
 	}
 
 	pr_debug("%s: %s new rate %ld [ndiv=%u] [idf=%u]\n",
-		 __func__, __clk_get_name(hw->clk),
+		 __func__, clk_hw_get_name(hw),
 		 req->rate, (unsigned int)params.ndiv,
 		 (unsigned int)params.idf);
 
@@ -434,7 +434,7 @@ static int set_rate_stm_pll3200c32(struct clk_hw *hw, unsigned long rate,
 		clk_pll3200c32_get_rate(parent_rate, &params, &hwrate);
 
 	pr_debug("%s: %s new rate %ld [ndiv=0x%x] [idf=0x%x]\n",
-		 __func__, __clk_get_name(hw->clk),
+		 __func__, clk_hw_get_name(hw),
 		 hwrate, (unsigned int)params.ndiv,
 		 (unsigned int)params.idf);
 
@@ -547,7 +547,7 @@ static unsigned long recalc_stm_pll4600c28(struct clk_hw *hw,
 
 	clk_pll4600c28_get_rate(parent_rate, &params, &rate);
 
-	pr_debug("%s:%s rate %lu\n", __clk_get_name(hw->clk), __func__, rate);
+	pr_debug("%s:%s rate %lu\n", clk_hw_get_name(hw), __func__, rate);
 
 	return rate;
 }
@@ -562,14 +562,14 @@ static int stm_pll4600c28_determine_rate(struct clk_hw *hw,
 					&req->rate);
 	} else {
 		pr_debug("%s: %s rate %ld Invalid\n", __func__,
-			 __clk_get_name(hw->clk), req->rate);
+			 clk_hw_get_name(hw), req->rate);
 		req->rate = 0;
 
 		return 0;
 	}
 
 	pr_debug("%s: %s new rate %ld [ndiv=%u] [idf=%u]\n",
-		 __func__, __clk_get_name(hw->clk),
+		 __func__, clk_hw_get_name(hw),
 		 req->rate, (unsigned int)params.ndiv,
 		 (unsigned int)params.idf);
 
@@ -591,12 +591,12 @@ static int set_rate_stm_pll4600c28(struct clk_hw *hw, unsigned long rate,
 		clk_pll4600c28_get_rate(parent_rate, &params, &hwrate);
 	} else {
 		pr_debug("%s: %s rate %ld Invalid\n", __func__,
-			 __clk_get_name(hw->clk), rate);
+			 clk_hw_get_name(hw), rate);
 		return -EINVAL;
 	}
 
 	pr_debug("%s: %s new rate %ld [ndiv=0x%x] [idf=0x%x]\n",
-		 __func__, __clk_get_name(hw->clk),
+		 __func__, clk_hw_get_name(hw),
 		 hwrate, (unsigned int)params.ndiv,
 		 (unsigned int)params.idf);
 
diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index 0c86cff719e3..df1d7b471745 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -1460,7 +1460,7 @@ static int tegra210_pllx_dyn_ramp(struct tegra_clk_pll *pllx,
 	udelay(1);
 
 	pr_debug("%s: dynamic ramp to m = %u n = %u p = %u, Fout = %lu kHz\n",
-		 __clk_get_name(pllx->hw.clk), cfg->m, cfg->n, cfg->p,
+		 clk_hw_get_name(&pllx->hw), cfg->m, cfg->n, cfg->p,
 		 cfg->input_rate / cfg->m * cfg->n /
 		 pllx->params->pdiv_tohw[cfg->p].pdiv / 1000);
 
diff --git a/drivers/clk/ti/clockdomain.c b/drivers/clk/ti/clockdomain.c
index c897ad7e681e..aedbe78bf1e4 100644
--- a/drivers/clk/ti/clockdomain.c
+++ b/drivers/clk/ti/clockdomain.c
@@ -104,7 +104,7 @@ int omap2_init_clk_clkdm(struct clk_hw *hw)
 	if (!clk->clkdm_name)
 		return 0;
 
-	clk_name = __clk_get_name(hw->clk);
+	clk_name = clk_hw_get_name(hw);
 
 	clkdm = ti_clk_ll_ops->clkdm_lookup(clk->clkdm_name);
 	if (clkdm) {

---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260723-clk-provider-simple-clean-a8d5ccc4ec20

Best regards,
--  
Jerome


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
