From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH 1/3] clk: rockchip: Force rk3368 PWM clock (and its parents) on
Date: Tue,  1 Dec 2015 17:13:24 +0800
Message-ID: <1448961206-23769-2-git-send-email-wxt@rock-chips.com>
References: <1448961206-23769-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1448961206-23769-1-git-send-email-wxt@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This's similar with the rk3288 SoCs.
From: Douglas Anderson <dianders@chromium.org>

Quick summary:

Most rk3368 boards (especially those with Pmic that followed the lead
rom rk3368-evb-act8846) have a PWM regulator on them for vdd_logic.
This is the main voltage for all kinds of misc stuff including the
memory controller.

On these boards it is critically important to make sure that the PWM
never ever glitches and never loses its clock. Any glitch could
crash the system.

Right now there are no users of the PWM regulator and also Linux
thinks that the PWM regulator is disabled.  Things happen to work
because firmware configured the PWM and Linux doesn't touch it.
..and the PWM's clock is marked as "ignore unused".

...but things _stop_ working if we turn off serial console.  Why?
Because:
    1. Serial console shares a parent clock with the PWM (pclk_cpu)
    2. If we have no serial console then nobody is holding pclk_cpu on
       at reboot time.  It gets disabled.

We need to fix a lot of the above problems, but until we get
everything right the cleanest "hack" seems like it is to just keep
the "rk_pwm" clock on always.

Signed-off-by: Caesar Wang <wxt@rock-chips.com>
---

 drivers/clk/rockchip/clk-rk3368.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
index 7e6b783..5385fef 100644
--- a/drivers/clk/rockchip/clk-rk3368.c
+++ b/drivers/clk/rockchip/clk-rk3368.c
@@ -819,6 +819,15 @@ static struct rockchip_clk_branch rk3368_clk_branches[] __initdata = {
 };
 
 static const char *const rk3368_critical_clocks[] __initconst = {
+	/*
+	 * HACK: Make sure this stays enabled so all its parents (like pclk_cpu)
+	 * stay enabled. CLK_IGNORE_UNUSED doesn't take care of parents.
+	 *
+	 * This is temporary until the PWM driver enables the right clock, which
+	 * it can't do until we get the ordering _just right_ and never glitch
+	 * the voltage of the PWM regulator.  Ick.
+	 */
+	"pclk_pwm1",
 	"pclk_pd_pmu",
 };
 
-- 
1.9.1
