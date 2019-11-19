From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add libretech compatible for ROC-PC
Date: Wed, 20 Nov 2019 00:28:17 +0530
Message-ID: <20191119185817.11216-2-jagan@amarulasolutions.com>
References: <20191119185817.11216-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191119185817.11216-1-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>, Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Da Xue <da@lessconfused.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

So, it is always meaningful to keep maintain those vendors who
are part of design participation so append the compatible
"libretech,roc-rk3399-pc" to existing roc-pc dts file.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
index cd4195425309..6a909e4eefd2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -8,5 +8,6 @@
 
 / {
 	model = "Firefly ROC-RK3399-PC Board";
-	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
+	compatible = "libretech,roc-rk3399-pc", "firefly,roc-rk3399-pc",
+		     "rockchip,rk3399";
 };
-- 
2.18.0.321.gffc6fa0e3
