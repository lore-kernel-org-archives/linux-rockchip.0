From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
Date: Fri, 17 May 2019 09:36:24 +0530
Message-ID: <20190517040625.14607-1-manivannan.sadhasivam@linaro.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, ezequiel@collabora.com, tom@vamrs.com, dev@vamrs.com, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
List-Id: linux-rockchip.vger.kernel.org

Enable SPI0 and SPI4 exposed on the Low and High speed expansion
connectors of Rock960.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v2:

* Dropped the label property since it is not part of SPI binding

 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index 12285c51cceb..c624b4e73129 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -114,6 +114,16 @@
 	};
 };
 
+&spi0 {
+	/* On Low speed expansion (LS-SPI0) */
+	status = "okay";
+};
+
+&spi4 {
+	/* On High speed expansion (HS-SPI1) */
+	status = "okay";
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "otg";
 };
-- 
2.17.1
