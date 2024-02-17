Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15B69C48BC4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Feb 2024 19:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UdsQ3CnBzRt6aXxoVHd2eslOZKeH0zEa1u1JZUEhEWw=; b=37ZU9hONVasp1D
	JF4Y4UMlKxPEm4TdUjoRpZQTUeRO7Ec4uQ/c3z+qjpEveUpMvCS1L3/RPUQQUssarGJsZvvyd1iAT
	Y22mmnYrIMTsPdM7EFo/Mr7zVkYeY1ejl7Gs1vYaPrTkoge+3QWvNpGauInB6p7izr4CZQrF7CRXa
	OMe5nINVOd7Z9BfV224AHMk8ijBgxGCDzMQH/Qw3XqOd/b5IyzBFhNl4C19tPpiFjumUkJM9UwyGl
	bb4f1+1SvR4RnuhjYyUgnaS5eLF/biIJMOFEbqRmQqmTdocDZYTbtzsYtk1M3lpmcZ9/gb2DzLmJM
	pQk1s0pEirwm+FKAmE4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbQSc-00000006FB2-1FxU;
	Sat, 17 Feb 2024 19:34:54 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbQSZ-00000006FAT-0cF4;
	Sat, 17 Feb 2024 19:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708198486; bh=GDFM2rZjlq+HPVr5razRyWgRuOojfXjQpD41VCj6WJY=;
	h=From:To:Cc:Subject:Date:From;
	b=koCjUDSTKjRT3baQHGvj+LqngJ9+yqKbWdCO+vXaVwYn6hV/KgPGObAmwnk5sQluq
	 6iRuz4k3AF54CcMNRhSX+gC/HMCJR+xyIJ3vMOb+uLv0DId1tI3lQ+qEeZ0+xFdxSO
	 2lhUMqp1AWmtA4BcN5zsLg9LtWJLooreCPzePf6k=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH] clk: rk3399: Allow to set rate of clk_i2s0_frac's parent
Date: Sat, 17 Feb 2024 20:34:38 +0100
Message-ID: <20240217193439.1762213-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_113451_368206_4CA6D194 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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

From: Ondrej Jirman <megi@xff.cz>

Otherwise when when clk_i2s0 muxes to clk_i2s0_div which requires
setting high divider value on clk_i2s0_div, and then muxes back to
clk_i2s0_frac, clk_i2s0_frac would have no way to change the
clk_i2s0_div's divider ratio back to 1 so that it can satisfy the
condition for m/n > 20 for fractional division to work correctly.

Bug is reproducible by playing 44.1k audio, then 48k audio, and then
44.1k audio again. This results in clk_i2s0_div being set to 49 and
clk_i2s0_frac not being able to cope with such a low input clock rate
and audio playing extremely slowly.

The identical issue is on i2s1 and i2s2 clocks, too.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/clk/rockchip/clk-rk3399.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 5efac2ca3048..a17996acd065 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -597,7 +597,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_i2s0_div", mux_pll_src_cpll_gpll_p, 0,
 			RK3399_CLKSEL_CON(28), 7, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3399_CLKGATE_CON(8), 3, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_i2s0_frac", "clk_i2s0_div", 0,
+	COMPOSITE_FRACMUX(0, "clk_i2s0_frac", "clk_i2s0_div", CLK_SET_RATE_PARENT,
 			RK3399_CLKSEL_CON(96), 0,
 			RK3399_CLKGATE_CON(8), 4, GFLAGS,
 			&rk3399_i2s0_fracmux),
@@ -607,7 +607,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_i2s1_div", mux_pll_src_cpll_gpll_p, 0,
 			RK3399_CLKSEL_CON(29), 7, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3399_CLKGATE_CON(8), 6, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_div", 0,
+	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_div", CLK_SET_RATE_PARENT,
 			RK3399_CLKSEL_CON(97), 0,
 			RK3399_CLKGATE_CON(8), 7, GFLAGS,
 			&rk3399_i2s1_fracmux),
@@ -617,7 +617,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_i2s2_div", mux_pll_src_cpll_gpll_p, 0,
 			RK3399_CLKSEL_CON(30), 7, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3399_CLKGATE_CON(8), 9, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_div", 0,
+	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_div", CLK_SET_RATE_PARENT,
 			RK3399_CLKSEL_CON(98), 0,
 			RK3399_CLKGATE_CON(8), 10, GFLAGS,
 			&rk3399_i2s2_fracmux),
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
