From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/2] arm64: dts: rockchip: enable tsadc on px30-evb
Date: Sat, 16 Nov 2019 10:52:49 +0100
Message-ID: <20191116095249.31193-2-heiko@sntech.de>
References: <20191116095249.31193-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191116095249.31193-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com, heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Enable the tsadc thermal controller on px30-evb.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index a482bd4e9146..6eaad68f9315 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -529,6 +529,12 @@
 	status = "okay";
 };
 
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <1>;
+	status = "okay";
+};
+
 &u2phy {
 	status = "okay";
 
-- 
2.24.0
