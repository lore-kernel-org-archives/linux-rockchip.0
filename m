From: Wen Yang <wen.yang99@zte.com.cn>
Subject: [PATCH 3/4] ARM: rockchip: fix a leaked reference by adding missing of_node_put
Date: Tue, 5 Mar 2019 19:32:56 +0800
Message-ID: <1551785577-45896-3-git-send-email-wen.yang99@zte.com.cn>
References: <1551785577-45896-1-git-send-email-wen.yang99@zte.com.cn>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1551785577-45896-1-git-send-email-wen.yang99@zte.com.cn>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: wang.yi59@zte.com.cn, Wen Yang <wen.yang99@zte.com.cn>, Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The call to of_get_next_child returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
./arch/arm/mach-rockchip/platsmp.c:250:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 241, but without a corresponding object release within this function.
./arch/arm/mach-rockchip/platsmp.c:260:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 241, but without a corresponding object release within this function.
./arch/arm/mach-rockchip/platsmp.c:263:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 241, but without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/mach-rockchip/platsmp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index f93d64e..6cb4b21 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -245,6 +245,7 @@ static int __init rockchip_smp_prepare_pmu(void)
 	}
 
 	pmu_base = of_iomap(node, 0);
+	of_node_put(node);
 	if (!pmu_base) {
 		pr_err("%s: could not map pmu registers\n", __func__);
 		return -ENOMEM;
-- 
2.9.5
