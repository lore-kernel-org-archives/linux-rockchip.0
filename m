From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH 4/4] arm: dts: rockchip: select which CEC pin is used for the Firefly Reload
Date: Fri, 20 Oct 2017 12:07:34 +0200
Message-ID: <20171020100734.17064-5-hverkuil@xs4all.nl>
References: <20171020100734.17064-1-hverkuil@xs4all.nl>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20171020100734.17064-1-hverkuil@xs4all.nl>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hans.verkuil@cisco.com>
List-Id: linux-rockchip.vger.kernel.org

From: Hans Verkuil <hans.verkuil@cisco.com>

The Firefly Reload uses PC7.

Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Tested-by: Hans Verkuil <hans.verkuil@cisco.com>
---
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rk3288-firefly-reload.dts
index 859938d8832e..eab176e3dfc3 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rk3288-firefly-reload.dts
@@ -228,6 +228,8 @@
 
 &hdmi {
 	ddc-i2c-bus = <&i2c5>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec_c0>;
 	status = "okay";
 };
 
-- 
2.14.1
