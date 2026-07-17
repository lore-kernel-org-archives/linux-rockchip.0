Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07293C44515
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 08:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/7IGJZ6AJVJRLIUIMvIr3+jM3gAWt4sjjdpp2UTtp0=; b=dh3LZpyvc8lJlK
	8ifMtKc+W+mUzE5J3pI2ZWEK7/L986SNeDon4SnqX9TXpy9d2x7GlEGEMaHjkbHgQDNjNUwZutcFJ
	EYa9K2LzToAZOI6vJAj/0M33rm3Gi0OHGv9HZEk6dZjvCBFba7K1Ngz8UEftZguo4laOzQIoMkjfV
	sY6ASeaZ/qGkpYJ7ZC+ofz7ZpcDDj+cWaZcbj1SQb+Z+9AjjSJxamIX8RY0s1eZg2WH06KVcp41Iv
	HVD7Q65oaHYCHDs/iHvblhAzqOWR2xXKCXDyDttXLwf6VrTNCKtNxP2HFg/BVAHxGUMD4uIGpZwLw
	SghXNpQo3JnIjCNfYBtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdUB-00000001XB5-2TWr;
	Fri, 17 Jul 2026 07:59:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdU3-00000001X48-3ALH
	for linux-rockchip@bombadil.infradead.org;
	Fri, 17 Jul 2026 07:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HU+wBqy9NvGV22Z3snIreAVAlGAyOtwT2/uB1OzQT2E=; b=Jxjv1uGwkthQTIs0B76nbjU9+4
	ADu9nWZNKVgMghRxKi6lLxiP27rekMiVNr4teoCZg3ijvxTwzv+UvP6pBfukJAhuVKbzvHn1wkKpI
	9VBOYWq3kPVTwSzCXtflUAs3zIPSy81UrlSDxJ2gX405Az5YRy8WR0HvjliyO2D+1ptmt5C+7CypB
	xqVAjInSTESW/+XSGU2+HynOJ/otSU6q0zTdBAVz5x6gr7EMN8nuqLLWinPQ/ZuTXf5XOPi/O6KI/
	Q8NxvC/WPX2Ajq6FqVVsLTye/f3aAD+28DDrr3LpVNRHVroX+bDhDM8PKbIqpTw4YlpqlW4t56uOP
	QL6u9KZg==;
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wkdTz-0000000EdaA-2jw9
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 07:59:46 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-49548aebcd8so3290615e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jul 2026 00:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ahdrone.com; s=google; t=1784275180; x=1784879980; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HU+wBqy9NvGV22Z3snIreAVAlGAyOtwT2/uB1OzQT2E=;
        b=TjoNPki47HSdjO8ooTIPbV4fxc/Pnavi3W02KoANjt4kXzf0itC1jxmvjm+feOltb5
         D0MYIaK0I5pBThZQuzEpFabRLCpL+L2psDrNsqnT+uQDt+GdOViP9ojt9sIac0wSTeBd
         XFCSP7BW3dCxtWS6t2+JtUHCxG++sA6hfzSgXiq1OPwOLL/QIwyX18z2sZAjtzSK9pJ7
         PWvrx0KFZwaS4NjAEHCi+5Wudd+9iO+3FtnKvpNHSL2y9hwF/C0k8ZbP+KFg8bbBhepK
         3VpgL/gQa4vwYvD7lz3hBoDJQhhaIoiNyAYkDrpPRPI/LjSJQyrCbzDd6Jkjn1iXeYgN
         i/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784275180; x=1784879980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HU+wBqy9NvGV22Z3snIreAVAlGAyOtwT2/uB1OzQT2E=;
        b=XTuYaIrW76NIa58lJnhWvLTJo0dPj7k2WcUvhVSCb9M+OnnYTMbTxJJFdSGpkbw2Sf
         NLtljU6lID2elCYcMuF7KnaKHYJOJxQJIZLa2UIENwDPy1APOi+oi45y8fMLxbnpmUxc
         STY+3rPulirYETWma1UkZntXm7IMKFJmBH2mU3kX3xnyJ+vjMm2HrJvckSq+DuQRC6xl
         lDDgjHOVWjuFiuBB56+rwMTXL8J3CzAOzZ8pCfDsA/RUfr0sXzJgf0t8YnT34l8ahiOy
         dgbvgHY6+r+cGq6I+mskhvx5r6fiZX5x2JoT3Dvzqc2qQkaBPLh1P/V1KtN/0arH3Zrg
         p7DA==
X-Forwarded-Encrypted: i=1; AHgh+RppdELPZBirKcYNyy+8kJDc5EtTyQ1CBhzVLVCxiz1/1Xpt/ejVXjKHtvT2QORK4oBQSq6rAdcOwpGAbraMbw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8v75QS0FByuR2plb58VjWPej5wHq8byzRxEPgcWjmbXpC4a+5
	pRMrLIHCmXkH9rnsAPlnviZ91XwdFKn5WtqeqhaCdkUWLPpL6v3mIY0TEyIr5ZvViA==
X-Gm-Gg: AfdE7ckHmlPnu2ALrhiTU/bv1+LvNVq1dUH+5tsnsLzLDrHdqMsKJ5OcOSUMP5BfO8q
	AxihmubuFdTrLkGALaaXQA7WIyL0It+n3iEBuHkeSGivyMK6fr66l9jC2au65Aaguil0Fw4AHam
	FVSawx2PHlb6mZaCs/dUi38M2fZXmNpFDcNtuQhq3NnHju26GO2YjuhssEjj+xDVPHbLvEUCmC7
	LKY3XF0wU7RTfu8dWVCDNrQVjEFPFi3oi6bhrOPvKhXTaBYM0ewhsuXWaAmWeZbcOiJP6ggLDpq
	MWa4pORFDMPbtzzfcniJCkPRAlc3Tn5tQa7aPUlmZnubitHr/htD7McXtdTN9ugld+bbaodoiXp
	+COetMlE4kC37w2rxWEBVdL0w/xRgOy4tmEqbITDqSfTTYi2uPJF+CX5Bps193xHTGdC5aTm60C
	4m8P/mvJ01ct+02lZpo7I6gbeR7reWNgSymOJu
X-Received: by 2002:a05:600c:a0a:b0:493:ee2b:c876 with SMTP id 5b1f17b1804b1-4954a41302fmr18541995e9.35.1784275179941;
        Fri, 17 Jul 2026 00:59:39 -0700 (PDT)
Received: from rikus ([2a01:e0a:edb:6330:cc2f:bd70:58a:fcfb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49549a3e2a9sm31709045e9.4.2026.07.17.00.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 00:59:39 -0700 (PDT)
From: Hugo VALTIER <hugo@ahdrone.com>
To: Linus Walleij <linusw@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Hugo VALTIER <hugo@ahdrone.com>,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 3/3] pinctrl: rockchip: add support for RK3308B SoC
Date: Fri, 17 Jul 2026 09:59:16 +0200
Message-ID: <20260717075918.1869879-4-hugo@ahdrone.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260717075918.1869879-1-hugo@ahdrone.com>
References: <20260717075918.1869879-1-hugo@ahdrone.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_085944_428730_315CB9A1 
X-CRM114-Status: GOOD (  22.90  )
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

The RK3308B is a revision of the RK3308 including different iomux
register layout.
Several pins (GPIO2_A2, GPIO2_A3, GPIO2_C0, GPIO3_B2, GPIO3_B3)
have 3-bit mux fields in new GRF registers (SOC_CON13 at 0x608 and
SOC_CON15 at 0x610) that override the standard 2-bit fields.
I believe the bootloader sets the sel_src_ctrl bits to activate these
new registers, which causes the kernel's writes to the old 2-bit iomux
registers to be silently ignored.

Without this patch, SPI1, I2C3, and other peripherals that depend on
these pins are completely non-functional on my RK3308B boards.

Detect the SoC variant at runtime by reading the chip_id register at GRF
offset 0x800 (0xcea = RK3308, 0x3308/0x3308c = RK3308B), as requested
by reviewers of the earlier series.
When RK3308B is detected, swap in the correct mux_recalced and mux_route
tables and write the sel_src_ctrl bits to ensure the 3-bit mux registers
are active.

This is a rework of Dmitry Yashin's series [1] which used a separate
device tree compatible string ("rockchip,rk3308b-pinctrl") to
distinguish the variants.
Reviewers Luca Ceresoli and Heiko Stuebner agreed that runtime detection
was preferable since boards are manufactured with both RK3308 and RK3308B
using the same device tree.

Jonas Karlman implemented runtime detection based on the GRF_CHIP_ID
register [2]. Reviewers asked for more changes (constifying some
arrays), but the series was never resubmitted and was dropped.

I run this patch on my Rock Pi S boards, the newer ones I've got in
2024 use the RK3308B. And thanks to runtime detection we should still
be compatible with older devices (but I couldn't test on RK3308 as I
don't have any).

[1] https://lore.kernel.org/all/20240515121634.23945-1-dmt.yashin@gmail.com/
[2] https://lore.kernel.org/all/20240604141020.21725-1-dmt.yashin@gmail.com/

Signed-off-by: Hugo VALTIER <hugo@ahdrone.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 217 +++++++++++++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h |   1 +
 2 files changed, 218 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 549834501e7f..e90e13c5d7f2 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -721,6 +721,115 @@ static const struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
 	},
 };
 
+static const struct rockchip_mux_recalced_data rk3308b_mux_recalced_data[] = {
+	{
+		/* gpio1b6_sel */
+		.num = 1,
+		.pin = 14,
+		.reg = 0x28,
+		.bit = 12,
+		.mask = 0xf
+	}, {
+		/* gpio1b7_sel */
+		.num = 1,
+		.pin = 15,
+		.reg = 0x2c,
+		.bit = 0,
+		.mask = 0x3
+	}, {
+		/* gpio1c2_sel */
+		.num = 1,
+		.pin = 18,
+		.reg = 0x30,
+		.bit = 4,
+		.mask = 0xf
+	}, {
+		/* gpio1c3_sel */
+		.num = 1,
+		.pin = 19,
+		.reg = 0x30,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		/* gpio1c4_sel */
+		.num = 1,
+		.pin = 20,
+		.reg = 0x30,
+		.bit = 12,
+		.mask = 0xf
+	}, {
+		/* gpio1c5_sel */
+		.num = 1,
+		.pin = 21,
+		.reg = 0x34,
+		.bit = 0,
+		.mask = 0xf
+	}, {
+		/* gpio1c6_sel */
+		.num = 1,
+		.pin = 22,
+		.reg = 0x34,
+		.bit = 4,
+		.mask = 0xf
+	}, {
+		/* gpio1c7_sel */
+		.num = 1,
+		.pin = 23,
+		.reg = 0x34,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		/* gpio2a2_sel_plus */
+		.num = 2,
+		.pin = 2,
+		.reg = 0x608,
+		.bit = 0,
+		.mask = 0x7
+	}, {
+		/* gpio2a3_sel_plus */
+		.num = 2,
+		.pin = 3,
+		.reg = 0x608,
+		.bit = 4,
+		.mask = 0x7
+	}, {
+		/* gpio2c0_sel_plus */
+		.num = 2,
+		.pin = 16,
+		.reg = 0x610,
+		.bit = 8,
+		.mask = 0x7
+	}, {
+		/* gpio3b2_sel_plus */
+		.num = 3,
+		.pin = 10,
+		.reg = 0x610,
+		.bit = 0,
+		.mask = 0x7
+	}, {
+		/* gpio3b3_sel_plus */
+		.num = 3,
+		.pin = 11,
+		.reg = 0x610,
+		.bit = 4,
+		.mask = 0x7
+	}, {
+		/* gpio3b4_sel */
+		.num = 3,
+		.pin = 12,
+		.reg = 0x68,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		/* gpio3b5_sel */
+		.num = 3,
+		.pin = 13,
+		.reg = 0x68,
+		.bit = 12,
+		.mask = 0xf
+	},
+};
+
 static const struct rockchip_mux_recalced_data rk3328_mux_recalced_data[] = {
 	{
 		/* gpio2_b7_sel */
@@ -1016,6 +1125,35 @@ static const struct rockchip_mux_route_data rk3308_mux_route_data[] = {
 	RK_MUXROUTE_SAME(2, RK_PA4, 3, 0x600, BIT(16 + 2) | BIT(2)), /* pdm-clkm-m2 */
 };
 
+static const struct rockchip_mux_route_data rk3308b_mux_route_data[] = {
+	RK_MUXROUTE_SAME(0, RK_PC3, 1, 0x314, BIT(16 + 0) | BIT(0)), /* rtc_clk */
+	RK_MUXROUTE_SAME(1, RK_PC6, 2, 0x314, BIT(16 + 2) | BIT(16 + 3)), /* uart2_rxm0 */
+	RK_MUXROUTE_SAME(4, RK_PD2, 2, 0x314, BIT(16 + 2) | BIT(16 + 3) | BIT(2)), /* uart2_rxm1 */
+	RK_MUXROUTE_SAME(0, RK_PB7, 2, 0x608, BIT(16 + 8) | BIT(16 + 9)), /* i2c3_sdam0 */
+	RK_MUXROUTE_SAME(3, RK_PB4, 2, 0x608, BIT(16 + 8) | BIT(16 + 9) | BIT(8)), /* i2c3_sdam1 */
+	RK_MUXROUTE_SAME(2, RK_PA0, 3, 0x608, BIT(16 + 8) | BIT(16 + 9) | BIT(9)), /* i2c3_sdam2 */
+	RK_MUXROUTE_SAME(1, RK_PA3, 2, 0x308, BIT(16 + 3)), /* i2s-8ch-1-sclktxm0 */
+	RK_MUXROUTE_SAME(1, RK_PA4, 2, 0x308, BIT(16 + 3)), /* i2s-8ch-1-sclkrxm0 */
+	RK_MUXROUTE_SAME(1, RK_PB5, 2, 0x308, BIT(16 + 3) | BIT(3)), /* i2s-8ch-1-sclktxm1 */
+	RK_MUXROUTE_SAME(1, RK_PB6, 2, 0x308, BIT(16 + 3) | BIT(3)), /* i2s-8ch-1-sclkrxm1 */
+	RK_MUXROUTE_SAME(1, RK_PA4, 3, 0x308, BIT(16 + 12) | BIT(16 + 13)), /* pdm-clkm0 */
+	RK_MUXROUTE_SAME(1, RK_PB6, 4, 0x308, BIT(16 + 12) | BIT(16 + 13) | BIT(12)), /* pdm-clkm1 */
+	RK_MUXROUTE_SAME(2, RK_PA6, 2, 0x308, BIT(16 + 12) | BIT(16 + 13) | BIT(13)), /* pdm-clkm2 */
+	RK_MUXROUTE_SAME(2, RK_PA4, 3, 0x600, BIT(16 + 2) | BIT(2)), /* pdm-clkm-m2 */
+	RK_MUXROUTE_SAME(3, RK_PB2, 3, 0x314, BIT(16 + 9)), /* spi1_miso */
+	RK_MUXROUTE_SAME(2, RK_PA4, 2, 0x314, BIT(16 + 9) | BIT(9)), /* spi1_miso_m1 */
+	RK_MUXROUTE_SAME(0, RK_PB3, 3, 0x314, BIT(16 + 10) | BIT(16 + 11)), /* owire_m0 */
+	RK_MUXROUTE_SAME(1, RK_PC6, 7, 0x314, BIT(16 + 10) | BIT(16 + 11) | BIT(10)), /* owire_m1 */
+	RK_MUXROUTE_SAME(2, RK_PA2, 5, 0x314, BIT(16 + 10) | BIT(16 + 11) | BIT(11)), /* owire_m2 */
+	RK_MUXROUTE_SAME(0, RK_PB3, 2, 0x314, BIT(16 + 12) | BIT(16 + 13)), /* can_rxd_m0 */
+	RK_MUXROUTE_SAME(1, RK_PC6, 5, 0x314, BIT(16 + 12) | BIT(16 + 13) | BIT(12)), /* can_rxd_m1 */
+	RK_MUXROUTE_SAME(2, RK_PA2, 4, 0x314, BIT(16 + 12) | BIT(16 + 13) | BIT(13)), /* can_rxd_m2 */
+	RK_MUXROUTE_SAME(1, RK_PC4, 3, 0x314, BIT(16 + 14)), /* mac_rxd0_m0 */
+	RK_MUXROUTE_SAME(4, RK_PA2, 2, 0x314, BIT(16 + 14) | BIT(14)), /* mac_rxd0_m1 */
+	RK_MUXROUTE_SAME(3, RK_PB4, 4, 0x314, BIT(16 + 15)), /* uart3_rx */
+	RK_MUXROUTE_SAME(0, RK_PC1, 3, 0x314, BIT(16 + 15) | BIT(15)), /* uart3_rx_m1 */
+};
+
 static const struct rockchip_mux_route_data rk3328_mux_route_data[] = {
 	RK_MUXROUTE_SAME(1, RK_PA1, 2, 0x50, BIT(16) | BIT(16 + 1)), /* uart2dbg_rxm0 */
 	RK_MUXROUTE_SAME(2, RK_PA1, 1, 0x50, BIT(16) | BIT(16 + 1) | BIT(0)), /* uart2dbg_rxm1 */
@@ -3486,6 +3624,7 @@ static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
 	case RK3188:
 	case RK3288:
 	case RK3308:
+	case RK3308B:
 	case RK3328:
 	case RK3368:
 	case RK3399:
@@ -3552,6 +3691,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	case RK3188:
 	case RK3288:
 	case RK3308:
+	case RK3308B:
 	case RK3328:
 	case RK3368:
 	case RK3399:
@@ -3848,6 +3988,7 @@ static bool rockchip_pinconf_pull_valid(struct rockchip_pin_ctrl *ctrl,
 	case RK3188:
 	case RK3288:
 	case RK3308:
+	case RK3308B:
 	case RK3328:
 	case RK3368:
 	case RK3399:
@@ -4452,6 +4593,76 @@ static int __maybe_unused rockchip_pinctrl_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(rockchip_pinctrl_dev_pm_ops, rockchip_pinctrl_suspend,
 			 rockchip_pinctrl_resume);
 
+#define RK3308B_GRF_SOC_CON13			0x608
+#define RK3308B_GRF_SOC_CON15			0x610
+
+/* RK3308B_GRF_SOC_CON13 */
+#define RK3308B_GRF_I2C3_IOFUNC_SRC_CTRL	(BIT(16 + 10) | BIT(10))
+#define RK3308B_GRF_GPIO2A3_SEL_SRC_CTRL	(BIT(16 + 7)  | BIT(7))
+#define RK3308B_GRF_GPIO2A2_SEL_SRC_CTRL	(BIT(16 + 3)  | BIT(3))
+
+/* RK3308B_GRF_SOC_CON15 */
+#define RK3308B_GRF_GPIO2C0_SEL_SRC_CTRL	(BIT(16 + 11) | BIT(11))
+#define RK3308B_GRF_GPIO3B3_SEL_SRC_CTRL	(BIT(16 + 7)  | BIT(7))
+#define RK3308B_GRF_GPIO3B2_SEL_SRC_CTRL	(BIT(16 + 3)  | BIT(3))
+
+/*
+ * RK3308B has 3-bit gpio##_sel_plus iomuxes over some 2-bit old ones.
+ * Enable them by setting the gpio##_sel_src_ctrl registers.
+ */
+static int rk3308b_soc_sel_src_init(struct rockchip_pinctrl *info)
+{
+	int ret;
+
+	ret = regmap_write(info->regmap_base, RK3308B_GRF_SOC_CON13,
+			   RK3308B_GRF_I2C3_IOFUNC_SRC_CTRL |
+			   RK3308B_GRF_GPIO2A3_SEL_SRC_CTRL |
+			   RK3308B_GRF_GPIO2A2_SEL_SRC_CTRL);
+	if (ret)
+		return ret;
+
+	return regmap_write(info->regmap_base, RK3308B_GRF_SOC_CON15,
+			    RK3308B_GRF_GPIO2C0_SEL_SRC_CTRL |
+			    RK3308B_GRF_GPIO3B3_SEL_SRC_CTRL |
+			    RK3308B_GRF_GPIO3B2_SEL_SRC_CTRL);
+}
+
+#define RK3308_GRF_CHIP_ID	0x800
+
+static int rk3308_soc_data_init(struct rockchip_pinctrl *info)
+{
+	struct rockchip_pin_ctrl *ctrl = info->ctrl;
+	unsigned int chip_id;
+	int ret;
+
+	ret = regmap_read(info->regmap_base, RK3308_GRF_CHIP_ID, &chip_id);
+	if (ret)
+		return ret;
+
+	switch (chip_id) {
+	case 0xcea:
+		/* Original RK3308, no changes needed */
+		break;
+	case 0x3308:
+	case 0x3308c:
+		ctrl->type = RK3308B;
+		ctrl->iomux_recalced = rk3308b_mux_recalced_data;
+		ctrl->niomux_recalced = ARRAY_SIZE(rk3308b_mux_recalced_data);
+		ctrl->iomux_routes = rk3308b_mux_route_data;
+		ctrl->niomux_routes = ARRAY_SIZE(rk3308b_mux_route_data);
+
+		ret = rk3308b_soc_sel_src_init(info);
+		if (ret)
+			return ret;
+		break;
+	default:
+		return dev_err_probe(info->dev, -EINVAL,
+				     "Unknown RK3308 chip_id: 0x%x\n", chip_id);
+	}
+
+	return 0;
+}
+
 static int rockchip_pinctrl_probe(struct platform_device *pdev)
 {
 	struct rockchip_pinctrl *info;
@@ -4514,6 +4725,12 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	/* try to find the optional reference to the ioc1 syscon */
 	info->regmap_ioc1 = syscon_regmap_lookup_by_phandle_optional(np, "rockchip,ioc1");
 
+	if (ctrl->type == RK3308) {
+		ret = rk3308_soc_data_init(info);
+		if (ret)
+			return ret;
+	}
+
 	iomux_recalced_routes_init(info);
 
 	ret = rockchip_pinctrl_register(pdev, info);
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index dd07a16f615c..914582c87dd8 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -194,6 +194,7 @@ enum rockchip_pinctrl_type {
 	RK3188,
 	RK3288,
 	RK3308,
+	RK3308B,
 	RK3328,
 	RK3368,
 	RK3399,
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
