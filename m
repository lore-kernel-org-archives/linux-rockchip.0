From: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: [PATCH v8 2/6] ASoC: rockchip-max98090: Support usage with and without HDMI
Date: Fri, 25 Oct 2019 21:30:03 +0800
Message-ID: <20191025133007.11190-3-cychiang@chromium.org>
References: <20191025133007.11190-1-cychiang@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191025133007.11190-1-cychiang@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: Neil Armstrong <narmstrong@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>, Hans Verkuil <hverkuil@xs4all.nl>, Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>, Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, dianders@chromium.org, dgreid@chromium.org, tzungbi@chromium.org, alsa-devel@alsa-project.org, dri-devel@lists.freedesktop
List-Id: linux-rockchip.vger.kernel.org

There will be multiple boards sharing this machine driver.
Use compatible string to specify the use case.

"rockchip,rockchip-audio-max98090" for max98090-only.
"rockchip,rockchip-audio-hdmi" for HDMI-only
"rockchip,rockchip-audio-max98090-hdmi" for max98090 plus

Move these properties to optional because they are not needed for
HDMI-only use case.
"rockchip,audio-codec": The phandle of the MAX98090 audio codec
"rockchip,headset-codec": The phandle of Ext chip for jack detection

The machine driver change will add support for HDMI codec in
rockchip-max98090.
Add one optional property "rockchip,hdmi-codec" to let user specify HDMI
device node in DTS so machine driver can find hdmi-codec device node for
codec DAI.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 .../bindings/sound/rockchip-max98090.txt      | 38 +++++++++++++++++--
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
index a805aa99ad75..75f438741ca6 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
@@ -1,15 +1,29 @@
 ROCKCHIP with MAX98090 CODEC
 
 Required properties:
-- compatible: "rockchip,rockchip-audio-max98090"
+- compatible: Set this property to one of the strings below depending on the
+              usage on the board:
+              "rockchip,rockchip-audio-max98090" for max98090-only.
+              "rockchip,rockchip-audio-hdmi" for HDMI-only
+              "rockchip,rockchip-audio-max98090-hdmi" for max98090 plus HDMI.
 - rockchip,model: The user-visible name of this sound complex
 - rockchip,i2s-controller: The phandle of the Rockchip I2S controller that's
   connected to the CODEC
-- rockchip,audio-codec: The phandle of the MAX98090 audio codec
-- rockchip,headset-codec: The phandle of Ext chip for jack detection
+
+Optional properties:
+- rockchip,audio-codec: The phandle of the MAX98090 audio codec. This is
+                        required if compatible string is set to the one
+                        with max98090.
+- rockchip,headset-codec: The phandle of Ext chip for jack detection. This is
+                          required if compatible string is set to the one
+                          with max98090.
+- rockchip,hdmi-codec: The phandle of HDMI device for HDMI codec. This is
+                       required if compatible string is set to the one with
+                       HDMI.
 
 Example:
 
+/* For max98090-only board. */
 sound {
 	compatible = "rockchip,rockchip-audio-max98090";
 	rockchip,model = "ROCKCHIP-I2S";
@@ -17,3 +31,21 @@ sound {
 	rockchip,audio-codec = <&max98090>;
 	rockchip,headset-codec = <&headsetcodec>;
 };
+
+/* For HDMI-only board. */
+sound {
+	compatible = "rockchip,rockchip-audio-hdmi";
+	rockchip,model = "ROCKCHIP-I2S";
+	rockchip,i2s-controller = <&i2s>;
+	rockchip,hdmi-codec = <&hdmi>;
+};
+
+/* For max98090 plus HDMI board. */
+sound {
+	compatible = "rockchip,rockchip-audio-max98090-hdmi";
+	rockchip,model = "ROCKCHIP-I2S";
+	rockchip,i2s-controller = <&i2s>;
+	rockchip,audio-codec = <&max98090>;
+	rockchip,headset-codec = <&headsetcodec>;
+	rockchip,hdmi-codec = <&hdmi>;
+};
-- 
2.24.0.rc0.303.g954a862665-goog
