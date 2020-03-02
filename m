From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 2/2] dt-bindings: usb: dwc2: add compatible property for rk3368 usb
Date: Mon,  2 Mar 2020 12:58:12 +0100
Message-ID: <20200302115812.7207-2-jbx6244@gmail.com>
References: <20200302115812.7207-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200302115812.7207-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives these errors:

arch/arm64/boot/dts/rockchip/rk3368-evb-act8846.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3368-geekbox.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3368-r88.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas

The compatible property for rk3368 dwc2 usb was somehow never added to
the documention. Fix this error by adding
'rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2'
to dwc2.yaml.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index e9f4cea21..14aeb67e8 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -45,6 +45,10 @@ properties:
           - const: rockchip,rk3328-usb
           - const: rockchip,rk3066-usb
           - const: snps,dwc2
+      - items:
+          - const: rockchip,rk3368-usb
+          - const: rockchip,rk3066-usb
+          - const: snps,dwc2
       - const: lantiq,arx100-usb
       - const: lantiq,xrx200-usb
       - items:
-- 
2.11.0
