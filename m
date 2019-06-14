From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 4/4] ARM: dts: rockchip: fix vop iommu-cells on rk322x
Date: Fri, 14 Jun 2019 18:54:54 +0200
Message-ID: <20190614165454.13743-5-heiko@sntech.de>
References: <20190614165454.13743-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190614165454.13743-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, justin.swartz@risingedge.co.za, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, mturquette@baylibre.com, sboyd@kernel.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

From: Justin Swartz <justin.swartz@risingedge.co.za>

iommu-cells obviously needs to start with a "#".

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rk322x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 148f9b5157ea..340ed6ccb08f 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -617,7 +617,7 @@
 		interrupt-names = "vop_mmu";
 		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
 		clock-names = "aclk", "iface";
-		iommu-cells = <0>;
+		#iommu-cells = <0>;
 		status = "disabled";
 	};
 
-- 
2.20.1
