From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH v2 2/3] ARM: rockchip: ensure CPU to enter WFI/WFE state
Date: Fri,  5 Jun 2015 19:39:21 +0800
Message-ID: <1433504362-7549-3-git-send-email-wxt@rock-chips.com>
References: <1433504362-7549-1-git-send-email-wxt@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1433504362-7549-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: dianders@chromium.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-rockchip@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>, Russell King <linux@arm.linux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In idle mode, core1/2/3 of Cortex-A17 should be either power off or in
WFI/WFE state.
we can delay 1ms to ensure the CPU enter WFI/WFE state.

Signed-off-by: Caesar Wang <wxt@rock-chips.com>
---

 arch/arm/mach-rockchip/platsmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 1d4659e..17b3473 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -335,6 +335,9 @@ static void __init rockchip_smp_prepare_cpus(unsigned int max_cpus)
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
