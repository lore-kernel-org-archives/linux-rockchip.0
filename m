From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable SPI1 on Ficus
Date: Mon,  6 May 2019 17:34:58 +0530
Message-ID: <20190506120458.25842-2-manivannan.sadhasivam@linaro.org>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, ezequiel@collabora.com, tom@vamrs.com, dev@vamrs.com, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
List-Id: linux-rockchip.vger.kernel.org

Enable SPI1 exposed on both Low and High speed expansion connectors
of Ficus. SPI1 has 3 different chip selects wired as below:

CS0 - Serial Flash (unpopulated)
CS1 - Low Speed expansion
CS2 - High Speed expansion

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
index 027d428917b8..9baa378fc770 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
@@ -146,6 +146,12 @@
 	};
 };
 
+&spi1 {
+	/* On both Low speed and High speed expansion */
+	cs-gpios = <0>, <&gpio4 6 0>, <&gpio4 7 0>;
+	status = "okay";
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
-- 
2.17.1
