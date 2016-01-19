From: =?UTF-8?q?Pawe=C5=82=20Jarosz?= <paweljarosz3691@gmail.com>
Subject: [PATCH 2/3] clk: rockchip: add tsadc clock on rk3066
Date: Tue, 19 Jan 2016 13:09:20 +0100
Message-ID: <1453205361-27267-3-git-send-email-paweljarosz3691@gmail.com>
References: <1453205361-27267-1-git-send-email-paweljarosz3691@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1453205361-27267-1-git-send-email-paweljarosz3691@gmail.com>
Sender: linux-clk-owner@vger.kernel.org
To: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, sboyd@codeaurora.org, mturquette@baylibre.com
Cc: =?UTF-8?q?Pawe=C5=82=20Jarosz?= <paweljarosz3691@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Set clock id for sclk_tsadc gating clock of tsadc in rk3066

Signed-off-by: Pawe=C5=82 Jarosz <paweljarosz3691@gmail.com>
---
 drivers/clk/rockchip/clk-rk3188.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/c=
lk-rk3188.c
index 7f7444c..fda4e77 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -605,7 +605,7 @@ static struct rockchip_clk_branch rk3066a_clk_branc=
hes[] __initdata =3D {
 	GATE(SCLK_TIMER2, "timer2", "xin24m", 0,
 			RK2928_CLKGATE_CON(3), 2, GFLAGS),
=20
-	COMPOSITE_NOMUX(0, "sclk_tsadc", "xin24m", 0,
+	COMPOSITE_NOMUX(SCLK_TSADC, "sclk_tsadc", "xin24m", 0,
 			RK2928_CLKSEL_CON(34), 0, 16, DFLAGS,
 			RK2928_CLKGATE_CON(2), 15, GFLAGS),
=20
--=20
1.9.1

