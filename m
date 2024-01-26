Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 082AFC47DDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 18:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWvRSCtp3vfM4KNF7sEt1pPu1ks+BoTGN7cNhf3NJ7k=; b=Tm1xLis/uVkIm6
	5nUmqgIvL819G3dmBHasjoJL7kA4HrSabASKbdeOSh9cXynWnNbDjRa5FlfyKVeAPnrDzOzvtsQe0
	dsnEd+eQhmAfzWsA1q2FE+nJr9goFdI6Vs4ZzJ/CFecehq8A2ES69BCVIzhBsDdtezVDi2IqbkFQ4
	UFkd3+JQmlzdrDgBqv12AsF3gcjS+wShA+gqPeqWjMD9A/I6ZdwTBVxApYvCIEoX/LfxKNr0uI7ef
	VfJbT5vpmsTHmpeckLspr79b5rsRmKAKt2MZjA9b+MSTj6zcULy/dbLuqhA48uAQhef0GuqL808TY
	S8/DTAWeqfo8RAhybeMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQxI-000000054Tp-3QO3;
	Fri, 26 Jan 2024 18:29:32 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQxC-000000054OS-3wse
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 18:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706293762;
	bh=1tPW8GrHlWUsQEkwO2MnvdVEo7+MHF/Flt6K9BKancg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=J7sErgsDAG0h0yxrGrUdIzhEq+mOEVIXb4RQ8p7cV19r8NpajMJ5cNc6PRizL2lMf
	 BiKPhxZtcot2NyPkjvHAjgye3rEDmDvUstdvCgEOEwg9sz3D4bocZoQpAMKjqzpevi
	 QEEw1+eU+uMsN+oLj2XQXSs6ND+MXyEe8z724BamplVByXguv/f2xWieBkXzLFfufz
	 /l3rKkctdUpCzCB/x3cp63rXlh8bMvtna+qBW5TNVzvq25Bxyeq3DC9YVmodtJ8wGo
	 YzauI3uQMu0MXgV65LaPt+oliZ1SY9deRHYcz9c+w+LfoSjrZ0iPWj3TZgWUl6JUyH
	 3LZKICTzTnZSQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 18DA43782080;
	Fri, 26 Jan 2024 18:29:22 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 992A4482AC5; Fri, 26 Jan 2024 19:29:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v8 4/7] clk: rockchip: rk3588: fix pclk_vo0grf and pclk_vo1grf
Date: Fri, 26 Jan 2024 19:18:25 +0100
Message-ID: <20240126182919.48402-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240126182919.48402-1-sebastian.reichel@collabora.com>
References: <20240126182919.48402-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_102927_220615_96D173C6 
X-CRM114-Status: GOOD (  13.38  )
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

Currently pclk_vo1grf is not exposed, but it should be referenced
from the vo1_grf syscon, which needs it enabled. That syscon is
required for HDMI RX and TX functionality among other things.

Apart from that pclk_vo0grf and pclk_vo1grf are both linked gates
and need the VO's hclk enabled in addition to their parent clock.

No Fixes tag has been added, since the logic requiring these clocks
is not yet upstream anyways.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 0b60ae78f9d8..26330d655159 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -1851,8 +1851,6 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 			RK3588_CLKGATE_CON(56), 0, GFLAGS),
 	GATE(PCLK_TRNG0, "pclk_trng0", "pclk_vo0_root", 0,
 			RK3588_CLKGATE_CON(56), 1, GFLAGS),
-	GATE(PCLK_VO0GRF, "pclk_vo0grf", "pclk_vo0_root", CLK_IGNORE_UNUSED,
-			RK3588_CLKGATE_CON(55), 10, GFLAGS),
 	COMPOSITE(CLK_I2S4_8CH_TX_SRC, "clk_i2s4_8ch_tx_src", gpll_aupll_p, 0,
 			RK3588_CLKSEL_CON(118), 5, 1, MFLAGS, 0, 5, DFLAGS,
 			RK3588_CLKGATE_CON(56), 11, GFLAGS),
@@ -1998,8 +1996,6 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 			RK3588_CLKGATE_CON(60), 9, GFLAGS),
 	GATE(PCLK_TRNG1, "pclk_trng1", "pclk_vo1_root", 0,
 			RK3588_CLKGATE_CON(60), 10, GFLAGS),
-	GATE(0, "pclk_vo1grf", "pclk_vo1_root", CLK_IGNORE_UNUSED,
-			RK3588_CLKGATE_CON(59), 12, GFLAGS),
 	GATE(PCLK_S_EDP0, "pclk_s_edp0", "pclk_vo1_s_root", 0,
 			RK3588_CLKGATE_CON(59), 14, GFLAGS),
 	GATE(PCLK_S_EDP1, "pclk_s_edp1", "pclk_vo1_s_root", 0,
@@ -2447,12 +2443,14 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 	GATE_LINK(HCLK_RKVDEC1_PRE, "hclk_rkvdec1_pre", "hclk_rkvdec1_root", "hclk_vdpu_root", 0, RK3588_CLKGATE_CON(41), 4, GFLAGS),
 	GATE_LINK(ACLK_RKVDEC1_PRE, "aclk_rkvdec1_pre", "aclk_rkvdec1_root", "aclk_vdpu_root", 0, RK3588_CLKGATE_CON(41), 5, GFLAGS),
 	GATE_LINK(ACLK_HDCP0_PRE, "aclk_hdcp0_pre", "aclk_vo0_root", "aclk_vop_low_root", 0, RK3588_CLKGATE_CON(55), 9, GFLAGS),
-	GATE_LINK(HCLK_VO0, "hclk_vo0", "hclk_vo0_root", "hclk_vop_root", 0, RK3588_CLKGATE_CON(55), 5, GFLAGS),
+	GATE_LINK(HCLK_VO0, "hclk_vo0", "hclk_vo0_root", "hclk_vop_root", RK3588_LINKED_CLK, RK3588_CLKGATE_CON(55), 5, GFLAGS),
 	GATE_LINK(ACLK_HDCP1_PRE, "aclk_hdcp1_pre", "aclk_hdcp1_root", "aclk_vo1usb_top_root", 0, RK3588_CLKGATE_CON(59), 6, GFLAGS),
-	GATE_LINK(HCLK_VO1, "hclk_vo1", "hclk_vo1_root", "hclk_vo1usb_top_root", 0, RK3588_CLKGATE_CON(59), 9, GFLAGS),
+	GATE_LINK(HCLK_VO1, "hclk_vo1", "hclk_vo1_root", "hclk_vo1usb_top_root", RK3588_LINKED_CLK, RK3588_CLKGATE_CON(59), 9, GFLAGS),
 	GATE_LINK(ACLK_AV1_PRE, "aclk_av1_pre", "aclk_av1_root", "aclk_vdpu_root", 0, RK3588_CLKGATE_CON(68), 1, GFLAGS),
 	GATE_LINK(PCLK_AV1_PRE, "pclk_av1_pre", "pclk_av1_root", "hclk_vdpu_root", 0, RK3588_CLKGATE_CON(68), 4, GFLAGS),
 	GATE_LINK(HCLK_SDIO_PRE, "hclk_sdio_pre", "hclk_sdio_root", "hclk_nvm", 0, RK3588_CLKGATE_CON(75), 1, GFLAGS),
+	GATE_LINK(PCLK_VO0GRF, "pclk_vo0grf", "pclk_vo0_root", "hclk_vo0", CLK_IGNORE_UNUSED, RK3588_CLKGATE_CON(55), 10, GFLAGS),
+	GATE_LINK(PCLK_VO1GRF, "pclk_vo1grf", "pclk_vo1_root", "hclk_vo1", CLK_IGNORE_UNUSED, RK3588_CLKGATE_CON(59), 12, GFLAGS),
 };
 
 static void __init rk3588_clk_init(struct device_node *np)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
