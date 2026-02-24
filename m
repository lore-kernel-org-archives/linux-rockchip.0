Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22FB6F3C9BC
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 16:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtY829K3wbhQun+CoYoZRl27uQhx39ekkuBf8HaXFng=; b=mki0/Sah3ZJCbZ
	0vG8q3DvIISlF/iYoTbOlm+AODRLpFhaUbwuPvvmti+RIk+sgQaLKvZkNFSg1fO74DvFR2eIo8E1q
	o3FtMGt/8t2ZAVTeGo4GxxQkJeTtCXiwDwJ5MRIrLpg+k77aD9CdZ/K2fSiYqRpxaQYsAZrdvr9b5
	9NNlO2oYnsXyjEUOZ4Z4sxAaH7kxPJ5xUMow6qfKqKyIgG0te7DhJJIl3lUSu6V55R2508Nx7XG6n
	/ZX9bxvDlJpQlXJofdF0O9ivmIrxPAMAMTinsfglFJ+v9hakwpz22Ll1VoH+1GLBe7qlGZB67K3sM
	xaPmKu15cx1Gd71rpnZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvLt-00000002POd-1UyS;
	Tue, 24 Feb 2026 16:33:37 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvLp-00000002PN8-2vgD
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 16:33:35 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-45f18e8f2f5so4019882b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Feb 2026 08:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771950812; x=1772555612; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QUsICOMvXTU5rjy5Y1VVi2FLx1XR69GqWTxj0tN8RHA=;
        b=gpxCI9mq5rJiSWQagQgvJz/duE379GKMRUfLGOTBBkLZHBfKKR0hKkj/D+AoMlp64U
         apTAUlo6a9Uni3PsxK0rw8yH3SuloRhPJp/NWPC50Gntp2XHe6FGcpob48knf2KOePZ4
         dFSIuH6P7qMkAgHqa5dRPT3kWcE2prLVxOUPzm/xsLJn/bsiXp+cwJ0vwDiGIB18wz6q
         Mmt1jjFQuiehfHGYDQ+27ugjp8xxQVF13UTFEFMWoteOXWoI5moM4V7ndr/NiGtxSURc
         w5l8TyL5NGZbTs611qzvPLu0NNt9tI/iy9Qt9vlBUGuzccuadV0DYRMTRYkLf3R6c1gm
         SEqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771950812; x=1772555612;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QUsICOMvXTU5rjy5Y1VVi2FLx1XR69GqWTxj0tN8RHA=;
        b=XzbbHSnKUkQ2/MvGF5pDuOWmY01wI7VishSVT9NEImJlNLTh2x+nmVU9uL9z9nkarh
         /wOw4ZQbXmt5hTOuIuNN/d3qbb5W9rIgakzP7YyCIIcsRhK4+e57MfwoZ9oLzGGyI7An
         GRyvdNx3cBIQtLTtTqZZy8/JALCzA8OEc6P8e6RUM4UEsZoWwIARaK7xx3wSBkzy3LBh
         r8rfLKcgKdumkMV/KKpg+/svs3Zaql7LgPsvnIFMytUs9nhQ56yXikRxx2hgWKhaXfcY
         43iKTOIZyWXItsw3DBiei4lieN2TzieU2UEsZtZB06jxfzFXPuyd9cFfMJHNIVoZNVTM
         P3Ew==
X-Forwarded-Encrypted: i=1; AJvYcCW7VI545eNxVlU9i5dl6i1ATcLiyFreZrGmmE0608yjCrQVQFcxAiMhg7i6Gfmn1goyVjXN1VF/QbYRuMR+ow==@lists.infradead.org
X-Gm-Message-State: AOJu0YzVXfJu7D3Hwtabdt7OHHzjsSUTOgtbcVmIMX0IFg8H43Ko0zPB
	EaJdhOteLPMYkVgg6L1eh0spXUx+hU5a0QP8ZOmELOzPfLCDSWeMUDvp
X-Gm-Gg: AZuq6aIKvOOb/YuHGJoionIknI73aaiNf24lRc4fxS+FNpel023qEHmTqKNTrWZVmEt
	OnnykWw4/+A5+uogQnCm91QM4bABfaK2xUFdmJVMrOfKIklh4K5W8MtcY8fZjWAQE2nnjEnJ9tf
	Dt0T3q4c179k1zUxnrcKgJdQvF8YfVtZl+0tDqjcMBVmjX2Y931uHmP8KDtdFOZSg0ze2dcMjfF
	ZnteW+9wfRvriN+YzO/my6qlOQAQ8wCIjtCwdvwQ7Xd5bbAgUUQv5MUduPFMIYTwiFdg0pxenGR
	IH4SDaiRQY8wnR70qigTpBk0HE5UgW3T8Ec9rJBW1VitlmpCYrHF1JbDKxyMbL3xFxBe3FT91rX
	TH2G9hv3o3uZXOoqe6sbky4mFfIcrI1bOAR1tnaW3Q0QFcFvrop3iOWqLD94MpfrxVKnv0KSDht
	EmutJ8zUNLMCJHK3bfHXKd
X-Received: by 2002:a05:6808:4fd4:b0:45f:727:8fdf with SMTP id 5614622812f47-4644638d060mr7303360b6e.48.1771950811989;
        Tue, 24 Feb 2026 08:33:31 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52d0725c4sm11060130a34.25.2026.02.24.08.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 08:33:31 -0800 (PST)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] dt-bindings: iio: imu: icm42607: Add devicetree binding
Date: Tue, 24 Feb 2026 10:31:03 -0600
Message-ID: <20260224163109.370930-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260224163109.370930-1-macroalpha82@gmail.com>
References: <20260224163109.370930-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_083333_740141_5F3807B0 
X-CRM114-Status: GOOD (  13.71  )
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
 .../bindings/iio/imu/invensense,icm42607.yaml | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
new file mode 100644
index 000000000000..d783ef063f5c
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/imu/invensense,icm42607.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: InvenSense ICM-42607 Inertial Measurement Unit
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
