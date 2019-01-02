From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: fix cif1_pdn pin on rk3188-bqedison2qc
Date: Wed,  2 Jan 2019 20:45:42 +0100
Message-ID: <20190102194542.15579-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, jbx6244@gmail.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

The powerdown pin for the second camera is gpio3_b5 not b4,
so fix that. We don't have a working camera setup yet, so this
is not really critical, but nevertheless better to have fixed
already.

Fixes: 36ead9149916 ("ARM: dts: rockchip: add BQ Edison 2 QC devicetree")
Reported-by: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
index a7477a09fbe8..2b5abfb48dd0 100644
--- a/arch/arm/boot/dts/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
@@ -526,7 +526,7 @@
 		};
 
 		cif1_pdn: cif1-pdn {
-			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <3 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
 		cif_avdd_en: cif-avdd-en {
-- 
2.19.2
