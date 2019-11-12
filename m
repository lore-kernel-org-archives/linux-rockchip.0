From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH] arm64: dts: rockchip: Fix vdd_log on rk3399-roc-pc
Date: Tue, 12 Nov 2019 12:42:09 +0100
Message-ID: <d786ef47-eda8-3994-2ef2-fc4a584bcdcc@fivetechno.de>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
 <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
 <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
 <17e14b30-02ee-2379-8891-088677924479@rock-chips.com>
 <fd9ee2bc-9dfb-1aa2-f00f-add9b3069876@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <fd9ee2bc-9dfb-1aa2-f00f-add9b3069876@web.de>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>, Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: Mark Rutland <mark.rutland@arm.com>, =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>, Alexis Ballier <aballier@gentoo.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Ezequiel Garcia <ezequiel@collabora.com>, Elaine Zhang <zhangqing@rock-chips.com>, Andy Yan <andyshrk@gmail.com>, linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Oskari Lemmela <oskari@lemmela.net>, Nick Xie <nick@khadas.com>, Peter Robinson <pbrobinson@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplete13@gmail.com>, Akash Gajjar <akash@openedev.com>
List-Id: linux-rockchip.vger.kernel.org

On rk3399 vdd_log shall not exceed 1.0 V. On rk3399-roc-pc
vdd_log is presently 1118 mV. Fix by setting the min voltage
of the respective pwm-regulator down to 450 mV.
This results in a vdd_log of 953 mV.
Specify the supply to silence warning.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index a31099f7620b..4dac88ef7e72 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -211,9 +211,9 @@
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <800000>;
+		regulator-min-microvolt = <450000>;
 		regulator-max-microvolt = <1400000>;
-		vin-supply = <&vcc3v3_sys>;
+		pwm-supply = <&vcc3v3_sys>;
 	};
 };
 
-- 
2.20.1
