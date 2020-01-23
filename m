From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 2/3] ARM: dts: rockchip: Fix ddc-i2c-bus for rk3288-vyasa
Date: Thu, 23 Jan 2020 19:16:40 +0530
Message-ID: <20200123134641.30720-2-jagan@amarulasolutions.com>
References: <20200123134641.30720-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200123134641.30720-1-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Michael Trimarchi <michael@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

ddc-i2c-bus routed for HDMI is i2c2 not i2c5 on
Vyasa RK3288 board.

Add support for fixing the same.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/rk3288-vyasa.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index d2f79e5bee87..88c63946f2a3 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -150,7 +150,7 @@
 };
 
 &hdmi {
-	ddc-i2c-bus = <&i2c2>;
+	ddc-i2c-bus = <&i2c5>;
 	status = "okay";
 };
 
@@ -347,7 +347,7 @@
 	};
 };
 
-&i2c2 {
+&i2c5 {
 	status = "okay";
 };
 
-- 
2.18.0.321.gffc6fa0e3
