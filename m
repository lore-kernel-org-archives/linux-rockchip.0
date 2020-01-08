From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 09/14] arm64: dts: rockchip: increase vop clock rate on
 rk3328
Date: Wed, 08 Jan 2020 21:07:51 +0000 (UTC)
Message-ID: <20200108210740.28769-10-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Kishon Vijay Abraham I <kishon@ti.com>, Zheng Yang <zhengyang@rock-chips.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The VOP on RK3328 needs to run at higher rate in order to
produce a proper 3840x2160 signal.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index c9ff1188bd7b..fee896338cc1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -803,8 +803,8 @@
 			<0>, <24000000>,
 			<24000000>, <24000000>,
 			<15000000>, <15000000>,
-			<100000000>, <100000000>,
-			<100000000>, <100000000>,
+			<300000000>, <100000000>,
+			<400000000>, <100000000>,
 			<50000000>, <100000000>,
 			<100000000>, <100000000>,
 			<50000000>, <50000000>,
-- 
2.17.1
