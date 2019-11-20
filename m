From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] soc: rockchip: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 21:39:20 +0800
Message-ID: <20191120133920.13657-1-krzk@kernel.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/soc/rockchip/Kconfig | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
index b71b73bf5fc5..3e2057f22bbc 100644
--- a/drivers/soc/rockchip/Kconfig
+++ b/drivers/soc/rockchip/Kconfig
@@ -15,15 +15,15 @@ config ROCKCHIP_GRF
 	  to make some of them conform to expectations of the kernel.
 
 config ROCKCHIP_PM_DOMAINS
-        bool "Rockchip generic power domain"
-        depends on PM
-        select PM_GENERIC_DOMAINS
-        help
-          Say y here to enable power domain support.
-          In order to meet high performance and low power requirements, a power
-          management unit is designed or saving power when RK3288 in low power
-          mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
+	bool "Rockchip generic power domain"
+	depends on PM
+	select PM_GENERIC_DOMAINS
+	help
+	  Say y here to enable power domain support.
+	  In order to meet high performance and low power requirements, a power
+	  management unit is designed or saving power when RK3288 in low power
+	  mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
 
-          If unsure, say N.
+	  If unsure, say N.
 
 endif
-- 
2.17.1
