From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH 13/29] dt: fix broken links due to txt->yaml renames
Date: Mon, 15 Jun 2020 08:46:52 +0200
Message-ID: <0e4a7f0b7efcc8109c8a41a2e13c8adde4d9c6b9.1592203542.git.mchehab+huawei@kernel.org>
References: <cover.1592203542.git.mchehab+huawei@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <cover.1592203542.git.mchehab+huawei@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: alsa-devel@alsa-project.org, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>, Jakub Kicinski <kuba@kernel.org>, linux-mips@vger.kernel.org, devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>, Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, netdev@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>, Liam Girdwood <lgirdwood@gmail.com>, linux-bluetooth@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

There are some new broken doc links due to yaml renames
at DT. Developers should really run:

	./scripts/documentation-file-ref-check

in order to solve those issues while submitting patches.
This tool can even fix most of the issues with:

	./scripts/documentation-file-ref-check --fix

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/devicetree/bindings/display/bridge/sii902x.txt  | 2 +-
 .../devicetree/bindings/display/rockchip/rockchip-drm.yaml    | 2 +-
 Documentation/devicetree/bindings/net/mediatek-bluetooth.txt  | 2 +-
 Documentation/devicetree/bindings/sound/audio-graph-card.txt  | 2 +-
 Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt  | 2 +-
 Documentation/mips/ingenic-tcu.rst                            | 2 +-
 MAINTAINERS                                                   | 4 ++--
 7 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/sii902x.txt b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
index 6e14e087c0d0..0d1db3f9da84 100644
--- a/Documentation/devicetree/bindings/display/bridge/sii902x.txt
+++ b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
@@ -37,7 +37,7 @@ Optional properties:
 	simple-card or audio-graph-card binding. See their binding
 	documents on how to describe the way the sii902x device is
 	connected to the rest of the audio system:
-	Documentation/devicetree/bindings/sound/simple-card.txt
+	Documentation/devicetree/bindings/sound/simple-card.yaml
 	Documentation/devicetree/bindings/sound/audio-graph-card.txt
 	Note: In case of the audio-graph-card binding the used port
 	index should be 3.
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
index ec8ae742d4da..7204da5eb4c5 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
@@ -24,7 +24,7 @@ properties:
     description: |
       Should contain a list of phandles pointing to display interface port
       of vop devices. vop definitions as defined in
-      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
+      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt b/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
index 219bcbd0d344..9ef5bacda8c1 100644
--- a/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
+++ b/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
@@ -3,7 +3,7 @@ MediaTek SoC built-in Bluetooth Devices
 
 This device is a serial attached device to BTIF device and thus it must be a
 child node of the serial node with BTIF. The dt-bindings details for BTIF
-device can be known via Documentation/devicetree/bindings/serial/8250.txt.
+device can be known via Documentation/devicetree/bindings/serial/8250.yaml.
 
 Required properties:
 
diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card.txt b/Documentation/devicetree/bindings/sound/audio-graph-card.txt
index 269682619a70..d5f6919a2d69 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-card.txt
+++ b/Documentation/devicetree/bindings/sound/audio-graph-card.txt
@@ -5,7 +5,7 @@ It is based on common bindings for device graphs.
 see ${LINUX}/Documentation/devicetree/bindings/graph.txt
 
 Basically, Audio Graph Card property is same as Simple Card.
-see ${LINUX}/Documentation/devicetree/bindings/sound/simple-card.txt
+see ${LINUX}/Documentation/devicetree/bindings/sound/simple-card.yaml
 
 Below are same as Simple-Card.
 
diff --git a/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt b/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt
index 4d51f3f5ea98..a6ffcdec6f6a 100644
--- a/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt
+++ b/Documentation/devicetree/bindings/sound/st,sti-asoc-card.txt
@@ -5,7 +5,7 @@ codec or external codecs.
 
 sti sound drivers allows to expose sti SoC audio interface through the
 generic ASoC simple card. For details about sound card declaration please refer to
-Documentation/devicetree/bindings/sound/simple-card.txt.
+Documentation/devicetree/bindings/sound/simple-card.yaml.
 
 1) sti-uniperiph-dai: audio dai device.
 ---------------------------------------
diff --git a/Documentation/mips/ingenic-tcu.rst b/Documentation/mips/ingenic-tcu.rst
index c5a646b14450..2b75760619b4 100644
--- a/Documentation/mips/ingenic-tcu.rst
+++ b/Documentation/mips/ingenic-tcu.rst
@@ -68,4 +68,4 @@ and frameworks can be controlled from the same registers, all of these
 drivers access their registers through the same regmap.
 
 For more information regarding the devicetree bindings of the TCU drivers,
-have a look at Documentation/devicetree/bindings/timer/ingenic,tcu.txt.
+have a look at Documentation/devicetree/bindings/timer/ingenic,tcu.yaml.
diff --git a/MAINTAINERS b/MAINTAINERS
index 68f21d46614c..0617dd671c2d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3946,7 +3946,7 @@ L:	linux-crypto@vger.kernel.org
 S:	Supported
 F:	drivers/char/hw_random/cctrng.c
 F:	drivers/char/hw_random/cctrng.h
-F:	Documentation/devicetree/bindings/rng/arm-cctrng.txt
+F:	Documentation/devicetree/bindings/rng/arm-cctrng.yaml
 W:	https://developer.arm.com/products/system-ip/trustzone-cryptocell/cryptocell-700-family
 
 CEC FRAMEWORK
@@ -5490,7 +5490,7 @@ F:	include/uapi/drm/r128_drm.h
 DRM DRIVER FOR RAYDIUM RM67191 PANELS
 M:	Robert Chiras <robert.chiras@nxp.com>
 S:	Maintained
-F:	Documentation/devicetree/bindings/display/panel/raydium,rm67191.txt
+F:	Documentation/devicetree/bindings/display/panel/raydium,rm67191.yaml
 F:	drivers/gpu/drm/panel/panel-raydium-rm67191.c
 
 DRM DRIVER FOR ROCKTECH JH057N00900 PANELS
-- 
2.26.2
