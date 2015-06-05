From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH 2/3] ARM: rockchip: ensure CPU to enter WIF state
Date: Fri,  5 Jun 2015 12:47:56 +0800
Message-ID: <1433479677-18086-3-git-send-email-wxt@rock-chips.com>
References: <1433479677-18086-1-git-send-email-wxt@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1433479677-18086-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: dianders@chromium.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-rockchip@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>, Russell King <linux@arm.linux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In idle mode, core1/2/3 of Cortex-A17 should be either power off or in
WFI/WFE state.
we can delay 1ms to ensure the CPU enter WFI state.

Signed-off-by: Caesar Wang <wxt@rock-chips.com>
---

 arch/arm/mach-rockchip/platsmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 1230d3d..978c357 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -316,6 +316,9 @@ static void __init rockchip_smp_prepare_cpus(unsigned int max_cpus)
 #ifdef CONFIG_HOTPLUG_CPU
 static int rockchip_cpu_kill(unsigned int cpu)
 {
+	/* ensure CPU can enter the WFI/WFE state */
+	mdelay(1);
+
 	pmu_set_power_domain(0 + cpu, false);
 	return 1;
 }
-- 
1.9.1
