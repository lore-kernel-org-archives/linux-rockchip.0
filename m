From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH v1 6/8] ARM: rockchip: enable support for RK3228 SoCs
Date: Wed,  9 Dec 2015 17:04:11 +0800
Message-ID: <1449651853-1667-7-git-send-email-jeffy.chen@rock-chips.com>
References: <1449651853-1667-1-git-send-email-jeffy.chen@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1449651853-1667-1-git-send-email-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linux@arm.linux.org.uk, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add a rockchip,rk3228 compatible.

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

 arch/arm/mach-rockchip/rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index 608b31c..0cd4313 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -92,6 +92,7 @@ static const char * const rockchip_board_dt_compat[] = {
 	"rockchip,rk3066a",
 	"rockchip,rk3066b",
 	"rockchip,rk3188",
+	"rockchip,rk3228",
 	"rockchip,rk3288",
 	NULL,
 };
-- 
2.1.4
