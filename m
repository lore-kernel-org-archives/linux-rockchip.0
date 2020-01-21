From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: [PATCH v2 2/2] ARM: dts: rockchip: enable rga for rk3229-xms6
Date: Tue, 21 Jan 2020 20:11:46 +0000
Message-ID: <20200121201146.18038-3-justin.swartz@risingedge.co.za>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
 <20200121201146.18038-1-justin.swartz@risingedge.co.za>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200121201146.18038-1-justin.swartz@risingedge.co.za>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Justin Swartz <justin.swartz@risingedge.co.za>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Enable RGA for Mecer Xtreme Mini S6.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 arch/arm/boot/dts/rk3229-xms6.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
index 679fc2b00..894f64a4a 100644
--- a/arch/arm/boot/dts/rk3229-xms6.dts
+++ b/arch/arm/boot/dts/rk3229-xms6.dts
@@ -202,6 +202,10 @@
 	status = "okay";
 };
 
+&rga {
+	status = "okay";
+};
+
 &sdmmc {
 	cap-mmc-highspeed;
 	disable-wp;
-- 
2.11.0
