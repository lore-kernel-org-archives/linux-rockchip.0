From: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
Subject: [PATCH 1/2] arm64: dts: rockchip: fix inverted headphone detection
Date: Tue, 14 Apr 2020 18:39:51 +0200
Message-ID: <20200414163952.1093784-2-t.schramm@manjaro.org>
References: <20200414163952.1093784-1-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200414163952.1093784-1-t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On the Pinebook Pro the headphone jack is dual use. It can be used either
as a normal headphone jack or as a debug serial connection. This
functionality is controlled via a small hardware switch on the mainboard.
Unfortunately flipping this switch biases the headphone detection switch
inside the headphone jack at 3.3 V if in `debug UART` position but
to GND when in `headphone out` position.
This results in an inversion of the headphone detection logic depending
on the switch position.
Since the headphone jack can only be used for audio when in
`headphone out` position this commit changes the headphone detect GPIO
logic to be correct for that case rather than for the debug UART.

Signed-off-by: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 5ea281b55fe2..c3f15f5bd550 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -147,7 +147,7 @@ es8316-sound {
 			"Speaker", "Speaker Amplifier OUTL",
 			"Speaker", "Speaker Amplifier OUTR";
 
-		simple-audio-card,hp-det-gpio = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
+		simple-audio-card,hp-det-gpio = <&gpio0 RK_PB0 GPIO_ACTIVE_HIGH>;
 		simple-audio-card,aux-devs = <&speaker_amp>;
 		simple-audio-card,pin-switches = "Speaker";
 
@@ -794,7 +794,7 @@ dc_det_gpio: dc-det-gpio {
 
 	es8316 {
 		hp_det_gpio: hp-det-gpio {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-- 
2.26.0
