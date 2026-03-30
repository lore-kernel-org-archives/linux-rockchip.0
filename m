Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 523071061B1E
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 20:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFYr46fyPSYAql1TLEScPYkh7FVmQnst1Gul0GXqEh8=; b=FR2AZZqR2yd1VU
	XImVU/KrTFh3pd1XLYxV6TpW8KytnQfAxnW3yBDFTu4e8Ykbvw6X1YRjTp6HQ00juJ2Yothd3S282
	NulxWwXl4p2p+7iZKqpTDyCRVv62oRvvvuVes/YIRFzRhb/m2frhq8UUW5gAcT1EnrPobV+iCMjvH
	RBn4wuSDRcD7skiQVjaQfwis6btwbypj6S1grFlM/lM+rkyuW4iHbGorZqiY2KDLT8ouX56YdLs87
	LzfTIUY1HPl9kEQdhr/KIepN5Paqg4xZZ0GxKbS+JPF3m9+NMae4YXYCQkOZstz1/qx1KtjaJyfBO
	1aFcfFSx5HVVfIUFdyng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7InP-0000000BoPP-2XIk;
	Mon, 30 Mar 2026 20:01:11 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7InL-0000000BoNN-1xMd
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Mar 2026 20:01:09 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7d556c1a79eso5048578a34.3
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2026 13:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774900866; x=1775505666; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SYmk7Juh371mJLYlWmXpOsfmVRoJgbYF90ddSYIGfYY=;
        b=A+9YIvfMc1pVSYtftMs8BZLLPaot3KLIsmFF6TAZEZOqtw+6zgZRuiSoMfBcpHNh7j
         /K9kG1QvsuNouBKuKaphPq/AxW0pUPXm0qRo70SZ3UGfAaR51sw9dhRjqR/kuo/t7WkD
         0W8Outr1HWFg5/7Tvp96pqlw94PUoxrrxrhTwxSjOaP4fniHVZIV8xpeBeIGEVKO7HyY
         59PuF6DgG0eELwDb6BHSCkUB9idcQIYlojxSsV+eUoIIhdeKjGMu4Qi23TTD5TDjv8z2
         4U5FoatU63WLBCmhdv8HoSw/c0mjWSiJjesWbOLybeTsN7wn56BwGZhb1TK3PcnJYP54
         xuxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774900866; x=1775505666;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SYmk7Juh371mJLYlWmXpOsfmVRoJgbYF90ddSYIGfYY=;
        b=pxga2m6DAu9EvUbnalDjwccUhjbvl+sqxRjISF6wK0Pbjv2oZCum4IrNKFNFAxrU6I
         BaL63es3A3XHuDjdnAOaEjRowNsVcBFBJPVoj8TZSwcu9KHFJw144XygjAt2QY9hEvIX
         9+IOnR1xFyKQHNaHzdmqO5EbUfmjJoWrF/q9K64eu2MlSmUDBxIcKWZK+wPooxiW3DQD
         7JvtJAYa0aR5eVwEcvMSR7d4giwBOiC1em2BuSbtRizt5MXyHqWRLj12w5CiQi818+G4
         taxBQXGj/vd1lI2KGzMxf5IbH8rpYq1C4kCUJ7IyzXJA+PazrRKkQuyqSEXX92D/yId3
         IP9w==
X-Forwarded-Encrypted: i=1; AJvYcCW+23FTOB+zI/W/fQaffvEbgSNmFWLn12s0qcp1e/Up8zuOiJMpKXzgj+6YOsUm0au4HPe/8vRUy58uLkAPgA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwMYwz4hwyxIvq6MHMTwjrq0rXAzR50zVpoM+tj2w/HGMH5YPT9
	cMjHLJaHkq9GjbBitgbnl2o3HpYFoCQFXneSANtpEVRaQgGBTj60GANA
X-Gm-Gg: ATEYQzwQj54gmuqe9TzAxXRFU+426mf7WfxJd7G/zFDr6//c4kcr1aKf0MhHu6iUSze
	3VPe/P7fh+C36FnDKE95UlnRVOBxEO5hgdnFsA3E5ONh6B04mZ/HW6fzgImR6qG9mqJqBKvLgTL
	3+zEFTYzjPnjltlf4trzq5BhT+YjIFdd3FQlRnU5e3QKG0Hh5GJJO+W51JSmusFzBcNyc9FYgoJ
	x16j6Fieizzi0AbdXECEMThdLjG/Ggfh1t4UylAXTuSkXZca3PNMV83RPi4rM5uz3D9cIBReQXt
	sEZbfb4RPD7RYTbbBnPpcgLVfNF/EnPbrEf+wBKH3VqXCt+uBLePs5LCB2EnJbnfGcABMkVcFrV
	AoCgiwnMV7n7PQvbcvSRASKaXAH2KdgMUPy71HXiA1sjBWjqZaT1YyrDc9sZahKjBW/2bpRc5+K
	5S2DGddEJnrm2AQIzxicQV
X-Received: by 2002:a05:6830:6ad3:b0:7d7:ecf8:6b with SMTP id 46e09a7af769-7d9fad90512mr8299965a34.2.1774900866434;
        Mon, 30 Mar 2026 13:01:06 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7da0a336353sm6601068a34.2.2026.03.30.13.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 13:01:05 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 1/9] dt-bindings: iio: imu: icm42607: Add devicetree binding
Date: Mon, 30 Mar 2026 14:58:45 -0500
Message-ID: <20260330195853.392877-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260330195853.392877-1-macroalpha82@gmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_130107_508541_F5950C82 
X-CRM114-Status: GOOD (  13.29  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add devicetree binding for the Invensense ICM42607 and Invensense
ICM42607P inertial measurement unit. This unit is a combined
accelerometer, gyroscope, and thermometer available via I2C or SPI.

This device is functionally very similar to the icm42600 series with a
very different register layout.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/iio/imu/invensense,icm42607.yaml | 95 +++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
new file mode 100644
index 000000000000..bbacdee5b906
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/imu/invensense,icm42607.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: InvenSense ICM-42607 Inertial Measurement Unit
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+description: |
+  6-axis MotionTracking device that combines a 3-axis gyroscope and a 3-axis
+  accelerometer.
+
+properties:
+  compatible:
+    enum:
+      - invensense,icm42607
+      - invensense,icm42607p
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      enum:
+        - INT1
+        - INT2
+
+  drive-open-drain:
+    type: boolean
+
+  mount-matrix: true
+
+  spi-cpha: true
+  spi-cpol: true
+
+  vdd-supply:
+    description: Regulator that provides power to the sensor
+
+  vddio-supply:
+    description: Regulator that provides power to the bus
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        icm42607p@68 {
+            compatible = "invensense,icm42607p";
+            reg = <0x68>;
+            interrupt-parent = <&gpio2>;
+            interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-names = "INT1";
+            vdd-supply = <&vdd>;
+            vddio-supply = <&vddio>;
+        };
+    };
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        icm42607p@0 {
+            compatible = "invensense,icm42607p";
+            reg = <0>;
+            spi-max-frequency = <24000000>;
+            spi-cpha;
+            spi-cpol;
+            interrupt-parent = <&gpio1>;
+            interrupts = <2 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-names = "INT1";
+            vdd-supply = <&vdd>;
+            vddio-supply = <&vddio>;
+        };
+    };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
