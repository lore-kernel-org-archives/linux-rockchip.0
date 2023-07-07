Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB768EB64D9
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 21:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EFMXGOCATBQ6hF+iBngon8L5iht/mLQwLLVaTAu1Jmg=; b=j/lLFeXSARFSe+
	Z6/Y/CbYLQ1yTalpT6NcSakSXD1+ktZ0z5pnpMstvYIrFfQ7YBg8r7VGRXoWijddZi8RCI5/hp4rl
	1ppYDJwQHU28PQv3LRfwGVw/7TJzqqzPMTdcBU0OVUxWh3TaxcIUN8gQwGhg1hw8a7/5LXcJaaZu9
	TALUH1qXKCDJ0VMbt0jqIpPKFxXZp6imC2axs9DdaPFNC0O+diGOFlWLsRdu48dbcISd8biQU0JoZ
	+8SUsQwktTbxJz1ILNrUvAS5vHwMr/A9Ui4XHJTuzaA3X0tFE6FeqSLd15lO1kdeSRosYxsV+cA2F
	xP9XEnKe8qZ7vYSD7d9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHsfF-005hEj-0F;
	Fri, 07 Jul 2023 21:06:53 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHsfB-005hE1-27;
	Fri, 07 Jul 2023 21:06:51 +0000
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-78372b895d6so89488839f.2;
        Fri, 07 Jul 2023 14:06:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688764007; x=1691356007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LsmkCXtt1/Ie/i62Qx5OYBjxzfr/7TqmjkdxzkTOMHo=;
        b=Fhdpe1e7p1VDMjC8lPrp3rY6ap5jnX2Z92nYujGEBNXdSnrZOnHrQilOP8AskTcyB5
         hCehwwy6K7iIi1xtV5xAOBLhmIxAPXF4b7OgGaBE4opFG0V7hTg98NV6Qe9QCnuiti49
         C2T0pYEE2aQcOCbjgXCzx3yuKb39aiHYDxrTgAeQ3ABtGIHwf9inn35O+4PJVuwaQmtE
         +IFoPQUkJd9hr2MBRWoj2vbAcC9paEOSZHBYaLsRGSLRKHH6Z8u2icZRS+5FxWF/Chd3
         WPY5RKsVX430uIT278FhvR2ynSBV5fxcAqeIGvMoeW9pb9IQhPCIxd4qGopSpQNDYZZr
         kLtg==
X-Gm-Message-State: ABy/qLYbfRGzQzQANJwtHZYOV70JcRssPbGOx4ks8Vjy5KJc0m0w9hvA
	DJmAH+te3O7Nw8p/BnLTjg==
X-Google-Smtp-Source: APBJJlF0NqZyk+kOePWf4tPR6zQ0SW1fzsw7bbKDzg0TH94gwND+UbwC0Sq8WxQiy3PuHChGbqYNMg==
X-Received: by 2002:a5e:c005:0:b0:785:5917:a35f with SMTP id u5-20020a5ec005000000b007855917a35fmr6819221iol.8.1688764007306;
        Fri, 07 Jul 2023 14:06:47 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id l12-20020a02ccec000000b0042b05586c52sm1538288jaq.25.2023.07.07.14.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 14:06:46 -0700 (PDT)
Received: (nullmailer pid 868731 invoked by uid 1000);
	Fri, 07 Jul 2023 21:06:44 -0000
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Scally <djrscally@gmail.com>, Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>, Tommaso Merciai <tommaso.merciai@amarulasolutions.com>, Helen Koike <helen.koike@collabora.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] media: dt-bindings: Merge OV5695 into OV5693 binding
Date: Fri,  7 Jul 2023 15:06:04 -0600
Message-Id: <20230707210604.868002-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_140649_691993_8D2CAA29 
X-CRM114-Status: GOOD (  15.84  )
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

'link-frequencies' is required by OV5693, but not OV5695. Just drop it
from being required. Expressing it conditionally would be ugly. It
shouldn't really be required either as the driver only supports 1
frequency anyways.

The rockchip-isp1 binding example is missing required properties, so it
has to be updated as well.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/media/i2c/ov5695.txt  | 41 -------------------
 .../bindings/media/i2c/ovti,ov5693.yaml       | 19 +++++----
 .../bindings/media/rockchip-isp1.yaml         |  1 +
 3 files changed, 13 insertions(+), 48 deletions(-)
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
index 359dc08440a8..a3d73a87d797 100644
--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov5693.yaml
@@ -5,26 +5,29 @@
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
 
 properties:
   compatible:
-    const: ovti,ov5693
+    enum:
+      - ovti,ov5693
+      - ovti,ov5695
 
   reg:
     maxItems: 1
@@ -34,6 +37,9 @@ properties:
       System input clock (aka XVCLK). From 6 to 27 MHz.
     maxItems: 1
 
+  clock-names:
+    const: xvclk
+
   dovdd-supply:
     description:
       Digital I/O voltage supply, 1.8V.
@@ -72,7 +78,6 @@ properties:
 
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
