Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D23CDC5ACA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Aug 2023 20:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wxXa4+HZ3eAxBwuxrSwDVUSAYbdqvxjwlZKDIqK77Vo=; b=yNIy/vEj3Ukh2u
	+TGngoF/44gqzh/1olAGCB7y+mrlX2We6cXi7x1BrounOcgFWZiDyg0lr6dpjnmMiEohVOCP7/778
	KvcF5A8RmU2p0K7Dd4Re1Uaz0qIaXlOkflNV/PGFUFJiBcGRP2RRQNebB330xwsZeNiqe4h+YTaGx
	WO5aHV1LmkUHbbqJCEfrapZ2cR/AAdq4iW9ykj4Aek3wtYrGHwmge058wSKz9YrKL5XhfIYHqrqjx
	a6pJqRPw7TmQpDWi8Mb9Xx+xQPnFFTD+z277omOTzQ2AFdYn/eXnuLDaADbOi6nxbeG+teXoaIHa/
	DkBvCq83n7izNJlLYjqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWjaE-0076QP-2y;
	Thu, 17 Aug 2023 20:27:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWjaB-0076PQ-1b;
	Thu, 17 Aug 2023 20:27:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DF2A761123;
	Thu, 17 Aug 2023 20:27:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8328C433C8;
	Thu, 17 Aug 2023 20:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692304022;
	bh=vq2QpcRQNb8e+Lmh0hjoG6fR40fGSWsXLdAb85uymp4=;
	h=From:To:Cc:Subject:Date:From;
	b=Pa63xgTJLDwrTiqLIXUYrrhQPTKymqcGn6CppUTTby4L6Cpi/59FDtvRXFDzFIOE0
	 ZiTpmpcVP03d4oSIs0nEBtqZ+YP6g5myuwimzGYjNMSh1K9ibKi0qxNT3gY7HmKhuO
	 a+xlziNUxvou5pHDDqxI0f4csZAj8swIFW94KFUKvR6diY7O4CVfQVWfMsljtXXgjd
	 gkY3ymzyzSmonWho08QabPrLs0Lt+NjoQaj4T/Q6mIgFUlqGJvetLwZksXwzwRU09J
	 4gXwSqHC2Ik09/owIP7ppv2W5OiTIMsbq3EiGlRqnj1kAdf8wAjKahP4pI78ma8zP9
	 cJM1fegVlmF7g==
Received: (nullmailer pid 2179908 invoked by uid 1000);
	Thu, 17 Aug 2023 20:26:59 -0000
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Scally <djrscally@gmail.com>, Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>, Tommaso Merciai <tommaso.merciai@amarulasolutions.com>, Helen Koike <helen.koike@collabora.com>
Cc: Conor Dooley <conor.dooley@microchip.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] media: dt-bindings: Merge OV5695 into OV5693 binding
Date: Thu, 17 Aug 2023 15:26:46 -0500
Message-Id: <20230817202647.2179609-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_132703_618218_F112952A 
X-CRM114-Status: GOOD (  15.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The OV5695 binding is almost the same as the OV5693 binding. The only
difference is 'clock-names' is defined for OV5695. However, the lack of
clock-names is an omission as the Linux OV5693 driver expects the same
'xvclk' clock name.

'link-frequencies' is required by OV5693, but not OV5695, so make that
conditional. Really, this shouldn't vary by device, but we're stuck with
the existing binding use.

The rockchip-isp1 binding example is missing required properties, so it
has to be updated as well.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
 - Make link-frequencies conditionally required
---
 .../devicetree/bindings/media/i2c/ov5695.txt  | 41 -------------------
 .../bindings/media/i2c/ovti,ov5693.yaml       | 31 ++++++++++----
 .../bindings/media/rockchip-isp1.yaml         |  1 +
 3 files changed, 25 insertions(+), 48 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5695.txt

diff --git a/Documentation/devicetree/bindings/media/i2c/ov5695.txt b/Documentation/devicetree/bindings/media/i2c/ov5695.txt
deleted file mode 100644
index 640a63717d96..000000000000
--- a/Documentation/devicetree/bindings/media/i2c/ov5695.txt
+++ /dev/null
@@ -1,41 +0,0 @@
-* Omnivision OV5695 MIPI CSI-2 sensor
-
-Required Properties:
-- compatible: shall be "ovti,ov5695"
-- clocks: reference to the xvclk input clock
-- clock-names: shall be "xvclk"
-- avdd-supply: Analog voltage supply, 2.8 volts
-- dovdd-supply: Digital I/O voltage supply, 1.8 volts
-- dvdd-supply: Digital core voltage supply, 1.2 volts
-- reset-gpios: Low active reset gpio
-
-The device node shall contain one 'port' child node with an
-'endpoint' subnode for its digital output video port,
-in accordance with the video interface bindings defined in
-Documentation/devicetree/bindings/media/video-interfaces.txt.
-The endpoint optional property 'data-lanes' shall be "<1 2>".
-
-Example:
-&i2c7 {
-	ov5695: camera-sensor@36 {
-		compatible = "ovti,ov5695";
-		reg = <0x36>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&clk_24m_cam>;
-
-		clocks = <&cru SCLK_TESTCLKOUT1>;
-		clock-names = "xvclk";
-
-		avdd-supply = <&pp2800_cam>;
-		dovdd-supply = <&pp1800>;
-		dvdd-supply = <&pp1250_cam>;
-		reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
-
-		port {
-			wcam_out: endpoint {
-				remote-endpoint = <&mipi_in_wcam>;
-				data-lanes = <1 2>;
-			};
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml
index 359dc08440a8..6829a4aadd22 100644
--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml
@@ -5,26 +5,41 @@
 $id: http://devicetree.org/schemas/media/i2c/ovti,ov5693.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Omnivision OV5693 CMOS Sensor
+title: Omnivision OV5693/OV5695 CMOS Sensors
 
 maintainers:
   - Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
 
 description: |
-  The Omnivision OV5693 is a high performance, 1/4-inch, 5 megapixel, CMOS
-  image sensor that delivers 2592x1944 at 30fps. It provides full-frame,
+  The Omnivision OV5693/OV5695 are high performance, 1/4-inch, 5 megapixel, CMOS
+  image sensors that deliver 2592x1944 at 30fps. It provides full-frame,
   sub-sampled, and windowed 10-bit MIPI images in various formats via the
   Serial Camera Control Bus (SCCB) interface.
 
-  OV5693 is controlled via I2C and two-wire Serial Camera Control Bus (SCCB).
-  The sensor output is available via CSI-2 serial data output (up to 2-lane).
+  OV5693/OV5695 are controlled via I2C and two-wire Serial Camera Control Bus
+  (SCCB). The sensor output is available via CSI-2 serial data output (up to
+  2-lane).
 
 allOf:
   - $ref: /schemas/media/video-interface-devices.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ovti,ov5693
+    then:
+      properties:
+        port:
+          properties:
+            endpoint:
+              required:
+                - link-frequencies
 
 properties:
   compatible:
-    const: ovti,ov5693
+    enum:
+      - ovti,ov5693
+      - ovti,ov5695
 
   reg:
     maxItems: 1
@@ -34,6 +49,9 @@ properties:
       System input clock (aka XVCLK). From 6 to 27 MHz.
     maxItems: 1
 
+  clock-names:
+    const: xvclk
+
   dovdd-supply:
     description:
       Digital I/O voltage supply, 1.8V.
@@ -72,7 +90,6 @@ properties:
 
         required:
           - data-lanes
-          - link-frequencies
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index 0bad7e640148..e466dff8286d 100644
--- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -199,6 +199,7 @@ examples:
             wcam: camera@36 {
                 compatible = "ovti,ov5695";
                 reg = <0x36>;
+                clocks = <&cru SCLK_TESTCLKOUT1>;
 
                 port {
                     wcam_out: endpoint {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
