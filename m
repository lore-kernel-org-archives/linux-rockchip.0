From: djw@t-chip.com.cn
Subject: [PATCH v0] clk: rockchip: Add pclk_rkpwm_pmu to PMU critical clocks
 in rk3399
Date: Sat,  4 Aug 2018 15:31:02 +0800
Message-ID: <1533367862-7212-1-git-send-email-djw@t-chip.com.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org
Cc: Wayne Chou <zxf@t-chip.com.cn>, Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, Levin Du <djw@t-chip.com.cn>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Levin Du <djw@t-chip.com.cn>

PWM2 is commonly used to control voltage of PWM regulator of VDD_LOG in
RK3399. On the Firefly-RK3399 board, PWM2 outputs 40 KHz square wave
from power on and the VDD_LOG is about 0.9V. When the kernel boots
normally into the system, the PWM2 keeps outputing PWM signal.

But the kernel hangs randomly after "Starting kernel ..." line on that
board. When it happens, PWM2 outputs high level which causes VDD_LOG
drops to 0.4V below the normal operating voltage.

By adding "pclk_rkpwm_pmu" to the rk3399_pmucru_critical_clocks array,
PWM clock is ensured to be prepared at startup and the PWM2 output is
normal. After repeated tests, the early boot hang is gone.

This patch works on both Firefly-RK3399 and ROC-RK3399-PC boards.

Signed-off-by: Levin Du <djw@t-chip.com.cn>

---

 drivers/clk/rockchip/clk-rk3399.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 2a8634a..5a62814 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1523,6 +1523,7 @@ static const char *const rk3399_pmucru_critical_clocks[] __initconst = {
 	"pclk_pmu_src",
 	"fclk_cm0s_src_pmu",
 	"clk_timer_src_pmu",
+	"pclk_rkpwm_pmu",
 };
 
 static void __init rk3399_clk_init(struct device_node *np)
-- 
2.7.4
