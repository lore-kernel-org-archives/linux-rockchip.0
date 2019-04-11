From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 2/5] ARM: rockchip: pm: Mark init functions __init
Date: Thu, 11 Apr 2019 16:21:54 -0700
Message-ID: <20190411232157.55125-2-dianders@chromium.org>
References: <20190411232157.55125-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190411232157.55125-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: dbasehore@chromium.org, amstan@chromium.org, linux-rockchip@lists.infradead.org, briannorris@chromium.org, mka@chromium.org, ryandcase@chromium.org, Chris Zhong <zyw@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, linux-arm-kernel@lists.infradead.org, Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The functions rk3288_config_bootdata() and rk3288_suspend_init() are
only called in the context of rockchip_suspend_init() which is already
marked __init.  We can mark them __init too.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/mach-rockchip/pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.c
index 0592534e0b88..065b09e6f1eb 100644
--- a/arch/arm/mach-rockchip/pm.c
+++ b/arch/arm/mach-rockchip/pm.c
@@ -59,7 +59,7 @@ static inline u32 rk3288_l2_config(void)
 	return l2ctlr;
 }
 
-static void rk3288_config_bootdata(void)
+static void __init rk3288_config_bootdata(void)
 {
 	rkpm_bootdata_cpusp = rk3288_bootram_phy + (SZ_4K - 8);
 	rkpm_bootdata_cpu_code = __pa_symbol(cpu_resume);
@@ -230,7 +230,7 @@ static void rk3288_suspend_finish(void)
 		pr_err("%s: Suspend finish failed\n", __func__);
 }
 
-static int rk3288_suspend_init(struct device_node *np)
+static int __init rk3288_suspend_init(struct device_node *np)
 {
 	struct device_node *sram_np;
 	struct resource res;
-- 
2.21.0.392.gf8f6787159e-goog
