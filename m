From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: [PATCH] arm64: dts: rockchip: fix cts, rts pin assign of UART3 for rk3399
Date: Sun,  7 Apr 2019 00:35:57 +0900
Message-ID: <20190406153557.25930-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>
List-Id: linux-rockchip.vger.kernel.org

This patch fixes pin assign of cts and rts signal of UART3.

Currently GPIO3_C2 and C3 pins are assigned but TRM says that
GPIO3_C0 and C1 are correct.

Refer:
  RK3399 TRM v1.4 - Table 19-1 UART Interface Description

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index f54c855f8cdf..196ac9b78076 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2543,12 +2543,12 @@
 
 			uart3_cts: uart3-cts {
 				rockchip,pins =
-					<3 RK_PC2 2 &pcfg_pull_none>;
+					<3 RK_PC0 2 &pcfg_pull_none>;
 			};
 
 			uart3_rts: uart3-rts {
 				rockchip,pins =
-					<3 RK_PC3 2 &pcfg_pull_none>;
+					<3 RK_PC1 2 &pcfg_pull_none>;
 			};
 		};
 
-- 
2.20.1
