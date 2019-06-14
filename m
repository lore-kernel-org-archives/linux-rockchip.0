From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/4] clk: rockchip: add clock id for hdmi_phy special clock
Date: Fri, 14 Jun 2019 18:54:51 +0200
Message-ID: <20190614165454.13743-2-heiko@sntech.de>
References: <20190614165454.13743-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190614165454.13743-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, justin.swartz@risingedge.co.za, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, mturquette@baylibre.com, sboyd@kernel.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Add the needed clock id to enable clock settings from devicetree.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 include/dt-bindings/clock/rk3228-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3228-cru.h b/include/dt-bindings/clock/rk3228-cru.h
index 3b245e3df8da..de550ea56eeb 100644
--- a/include/dt-bindings/clock/rk3228-cru.h
+++ b/include/dt-bindings/clock/rk3228-cru.h
@@ -64,6 +64,7 @@
 #define SCLK_WIFI		141
 #define SCLK_OTGPHY0		142
 #define SCLK_OTGPHY1		143
+#define SCLK_HDMI_PHY		144
 
 /* dclk gates */
 #define DCLK_VOP		190
-- 
2.20.1
