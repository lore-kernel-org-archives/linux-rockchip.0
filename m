Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A868FC7115B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 21:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8khDxh7Kxjjy/zxVBu6NlsnU/h8pidnTrx8ZMIsjWo=; b=sp1jXZKyOZcNIt
	umrVD3NB3lX2R5CLCtFeH/42h9nldZ/vMrWzPiqr/gXm2ecsU3JwuLbS6mpVoMVvVk6Ro/CyNRBmc
	6j1hIysGpYlhEbu3sBvoO+oX2zu8NIVPvKyDMAfaFKUH5xtqj8qpxTHDS0FrbN9i9YnRCMWSCzDGw
	QmrJY/uPl460ZKM0stz5q2xBLOL9v1kIw9bk8lS3H4cnFz47sWB+/7rbnlgVOylV/najWtp2+mcJ9
	W48MlJK9qA+ow3fKnS1kBnNymLhQxRmsELd6Bhwg44zTKXZFbKWD0TAPTfsdTC/hPn3deZuRQcGCa
	KXgZbmEBS6qYcTYqbJnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uToVq-00000003zRT-2l3x;
	Mon, 23 Jun 2025 21:15:34 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjyZ-00000003POC-3Gqz
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Jun 2025 16:24:57 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-40a55314d06so906680b6e.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jun 2025 09:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750695895; x=1751300695; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+HSC3tTGPVXUONttMHd7HqYNURks/BinMnUKVCe11+E=;
        b=QXZs0OiEEhDOa3yk2zB6SImYhc1yTzTJ4M7dc+tcQ1mvcrw++wvPOUmCFfKw96K+dq
         S3uYqiWMCBDTgW5I11nJgAeLkDxtU45pjMmLf3jli99dukeKUNB1vY+D7WBrFLUESkuy
         Lv3PoCS7kn8Q5Ui608B4ENcVAYXyiQU+V03q2W4aSwVDVJjSN0DzqEKh7+XIy/1qFQaS
         gTd1JE9BnteYQ1XLS31c1s5flFbhBbFsDZydX7OiqIUauI8zgFy+DUIrTJDIpOS9ibX8
         IFCLVyolVSjkJXfsT2yuI6hpb2GLHMTHav58jTZ6Wc9t8xFFzUZI0yo8hGY0XBheUnx2
         Te7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750695895; x=1751300695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+HSC3tTGPVXUONttMHd7HqYNURks/BinMnUKVCe11+E=;
        b=RkjH/tye1l4bsjIeUBSGJAr+SKyJ2ifF1UG/2G/K2pLJZ6e74m0tMLH/izl/wDbldY
         WLudPOv4EOZ0o7FfeB+Kq6jXjX1Avgy8l+BM/drRS/pi9rzoCdgvns3EekvttwnqiXlm
         S8GHNTau2jorBse6fyAoKoaBOnX6QPVfYc1mLFGOTfsLJT/h0yA3w2ldAgnu4XYijdxV
         uT4Of2jBPayEAO4kl/H8HMxkoxxogcNcMsT8E1tx4MEzzZic7KiAFFxR9M0c1UlbA0Ij
         zu0gxS5XkSOzaXLMtQ//RcT3qxXzU9eJRQbNqCj+3dUTi15oINTojk9u/CWzsnyofd4k
         Ddjw==
X-Gm-Message-State: AOJu0YwiPFDFs0wk5ngXVt8gkRccn/ZZbDb3z0MoTydyzCAs+5inPiyH
	wby/iNANaPJp3f5Il47DQwvYjGwi13Z4gQnrlLFRqwbyBTbXDKv0p2jN
X-Gm-Gg: ASbGncvyHAu7nwik+i1dSDueZVIhVFP8ivisiBdRoqdpkJiKAgm65ZGfWeWZnVBTDx7
	wuLRr+BNWJsb9C/YrLFPzMiRT5QlsBkmYutt0E71C/xdgHOva22Svt7K1pc055peoYVDmsfwam6
	bZ9O5lqRi1a84Uhj5GM2EbkHspu7CrWghtv90AJ+koTmp4tS+vy3utjrFKlF5cxsy885aXrm5fp
	PYiaussi1UcCT3xnA3cd78++eczXmQKhEyRRjr8sUOPqPw4w7+qdrpmGM1SUiZd/ym3yweaEpSC
	mfcpWyxr+NeLWk82cLIaJvGYbVmAcp9rVtaSWSfmm6p3x1Mj1rdPZv0MWwTVHfLR+o2Y2qal9Bu
	K9yOC1w==
X-Google-Smtp-Source: AGHT+IGifQrV3aIV7Nvo31pCmRa5jhQWQl51Xt5Ty7Lm01Ni3Azz67vgkxbnQNjKMzes9DfvIHJaOA==
X-Received: by 2002:a05:6808:4f09:b0:402:a5c:906 with SMTP id 5614622812f47-40ac6f1f615mr11028079b6e.34.1750695894753;
        Mon, 23 Jun 2025 09:24:54 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:61a2:e42d:d809:3616])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40ac6ced44esm1427308b6e.24.2025.06.23.09.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 09:24:54 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
Date: Mon, 23 Jun 2025 11:22:19 -0500
Message-ID: <20250623162223.184304-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250623162223.184304-1-macroalpha82@gmail.com>
References: <20250623162223.184304-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_092455_836347_E84C8C24 
X-CRM114-Status: GOOD (  12.93  )
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

Document the Texas instruments BQ25703A series of charger managers/
buck/boost regulators.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 121 ++++++++++++++++++
 1 file changed, 121 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml

diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
new file mode 100644
index 000000000000..0727f24b8e54
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
@@ -0,0 +1,121 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/ti,bq25703a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: BQ25703A Charger Manager/Buck/Boost Converter
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: /schemas/power/supply/power-supply.yaml#
+
+properties:
+  compatible:
+    const: ti,bq25703a
+
+  reg:
+    const: 0x6b
+
+  interrupts:
+    maxItems: 1
+
+  power-supplies: true
+
+  monitored-battery:
+    description:
+      The phandle for a simple-battery connected to this gauge.
+      A minimum of constant-charge-current-max-microamp,
+      constant-charge-voltage-max-microvolt, and
+      voltage-min-design-microvolt are required.
+
+  input-current-limit-microamp:
+    description:
+      Maximum total input current allowed used for both charging and
+      powering the device.
+    minimum: 50000
+    maximum: 6400000
+    default: 3250000
+
+  regulators:
+    type: object
+    additionalProperties: false
+    description:
+      Boost converter regulator output of bq257xx.
+
+    properties:
+      "usb-otg-vbus":
+        type: object
+        $ref: /schemas/regulator/regulator.yaml
+
+        properties:
+          regulator-name: true
+          regulator-min-microamp:
+            minimum: 0
+            maximum: 6350000
+          regulator-max-microamp:
+            minimum: 0
+            maximum: 6350000
+          regulator-min-microvolt:
+            minimum: 4480000
+            maximum: 20800000
+          regulator-max-microvolt:
+            minimum: 4480000
+            maximum: 20800000
+          enable-gpios:
+            description:
+              The BQ25703 may require both a register write and a GPIO
+              toggle to enable the boost regulator.
+
+        additionalProperties: false
+
+        required:
+          - regulator-name
+          - regulator-min-microamp
+          - regulator-max-microamp
+          - regulator-min-microvolt
+          - regulator-max-microvolt
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - input-current-limit-microamp
+  - monitored-battery
+  - power-supplies
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        bq25703: charger@6b {
+            compatible = "ti,bq25703a";
+            reg = <0x6b>;
+            input-current-limit-microamp = <5000000>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <RK_PD5 IRQ_TYPE_LEVEL_LOW>;
+            monitored-battery = <&battery>;
+            power-supplies = <&fusb302>;
+
+            regulators {
+                usb_otg_vbus: usb-otg-vbus {
+                    enable-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
+                    regulator-max-microamp = <960000>;
+                    regulator-max-microvolt = <5088000>;
+                    regulator-min-microamp = <512000>;
+                    regulator-min-microvolt = <4992000>;
+                    regulator-name = "usb_otg_vbus";
+                };
+            };
+        };
+    };
+
+...
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
