From: Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 09/10] ARM: rockchip: enable support for RK1108 SoC
Date: Mon, 14 Nov 2016 20:15:47 +0800
Message-ID: <1479125747-24582-1-git-send-email-andy.yan@rock-chips.com>
References: <1479124550-24037-1-git-send-email-andy.yan@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1479124550-24037-1-git-send-email-andy.yan@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add a rockchip,rk1108 compatible.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

Changes in v2: None

 arch/arm/mach-rockchip/rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index a7ab9ec..e7fdf06 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -76,6 +76,7 @@ static void __init rockchip_dt_init(void)
 }
 
 static const char * const rockchip_board_dt_compat[] = {
+	"rockchip,rk1108",
 	"rockchip,rk2928",
 	"rockchip,rk3066a",
 	"rockchip,rk3066b",
-- 
2.7.4
