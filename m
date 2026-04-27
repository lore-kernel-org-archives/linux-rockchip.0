Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2683FF8869
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 17:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UatjUg0QCnHGsHcOsjMYfk7CPKobuUxGZvZ4JGGUbE=; b=yB9rc5uss98ul5
	QS5s+cHsTBSxijQRQmXwbG9KwMI5JaXWkwpqHiLCsUTCW2YeL8Q2frY5fYz9CH6phuiVGHdex+QsL
	bv8J6r34kHwGUVk9lVIJQHblxQ+QT2/Xq00SxTZ+UELZVx3huepZAL6er2HFvL/vrloWCqDu/JWs4
	oMWhcs1UvJ17lAKTrabQ5Hgo43WbnicuVbOaL6tY9h5VYDmEiPsMTiQ9LM6DBuGaLanHP70aK7iZo
	FIaxMSQq/abOnd1rMiZYFrdeO8CzK8JSmNjAkF2ZtQbfk2DuBgZvw0qR+d0YSvPnTdZhiznbSgKEd
	G4ultkSTe+l2o85Gr1SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHPUo-0000000HPgT-2Cjc;
	Mon, 27 Apr 2026 17:11:46 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHPUm-0000000HPfU-2RqU
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Apr 2026 17:11:45 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-6948ff6b006so4654590eaf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 10:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777309903; x=1777914703; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ff3Oah9+sf3dvTFmRGJs44c/nx8rxOEtIEmQFlJnbJA=;
        b=EhA0zIOHL0TJakseZYYK0qMUL2gC8RGPhD4qqwuUHiv5SSTDprPQws5inc4h+xjkPV
         wj3RKqdvb6mAR283+9r3A92MZBY9gV9GbC02b1rZ1dksyTK+Ft4I0xG/Arth0C2LD3LE
         im69peZJNxj7LvLTNyYB+4VPdARDUOUJ4qH3HG0NDHrfcSZtmsSLSRevENxp0ZIW1Jh9
         4814nN42KRWL8x6DlXv0JfNnAub+gCUgvfteqHGvcXsV1hMp8YhKM+XvyDoEtXe+t/iK
         ffRV42XNDqXDfCVFWPLE2nqLVaeLxZ4OW8lsOjJp8Q7r0iYw3vZvLYz6XOmMDaF6jpuA
         UTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777309903; x=1777914703;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ff3Oah9+sf3dvTFmRGJs44c/nx8rxOEtIEmQFlJnbJA=;
        b=K1/vE8lD97jFxC5/1+beJ2tvsh9jSZ3mamksriOcENSQ6GmDz+VFkHmpCGk2+6S6QR
         QzjCC5or1ZggmPXvt9etg0AZH2EtcbKT4lA6oKqf18geA52w1ocQe0oRoIJ6S6IWgPab
         ETr8Qh+RVjKW1dbB1QU/9V9O41znF5VHhyNuxYPuqoWfW5okZYDrXV9mApTMxrCkzeU9
         g1MN4fD6HMCkj7HTIOKqa/agW1DkRGQldYpmVAi5CzgZIY4d/lsbW8Bwoey8wSUp5N+I
         AnE8ac3q8TB3Huu01viA4/sB1lcl0w62sNL28J4vs9xuJqfUAlctwnBgA7FqWWp3+J9I
         HLSA==
X-Gm-Message-State: AOJu0Yx4cWS6so3Kf9sI/lJGLHrV6YdvJ5sUvH+lScukgcbNFk+P5seB
	GGfo3NIxucP4jBhBHjvZ6zgILurI1eNAIuRUZ5pYQx/bAdd+01C7iC4os6WbVg==
X-Gm-Gg: AeBDiet0D05b2FvwrnSFdDEXK93XQ4/3PtOIMy3i0lM4AHuFYuZuqwUzrNZ1j9/KHcx
	oTbGRwFgp4gV8yD2snjpaes6Dj7CtCkVPlKxU4YCiDMxAmYAgSCp7mFhPVP+wzyoTUrhXUB+KHA
	Nj+AbjVIeeoKsIuDZeU12nft+502Z9+Zb18Y2swibizv+o6Z24EKJnuSDaGUZm3Sys/YRKlbunH
	6g2hGS1cJESREf+L3MF0PKhIsZRBowwVgLHlXXMTs34TlKsTGWQ8BUpE+B/LjzxQFmHWa6Q+pPI
	+e3LeQwXgUsorYNW4dSnUKosHuC2JoczsoPkV7NLdzJQJPhk/Ji55CSnJal8OoDR3WSVO2OBGWN
	O6T79Q+g5SovHn6RM5ne+6YsirYJynOJw4/ebAHl13cfyL8pHTH59G2CDbLB5hWkcdjeLuG8zap
	kFgDHOjF7BVZtmYZn9b2w4t++Z+18poMs=
X-Received: by 2002:a05:6820:1b10:b0:684:5041:9296 with SMTP id 006d021491bc7-69462de2716mr23720910eaf.10.1777309903103;
        Mon, 27 Apr 2026 10:11:43 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6955036558esm10261236eaf.14.2026.04.27.10.11.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 10:11:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/6] dt-bindings: power: supply: sgm41542: document sgm41542
Date: Mon, 27 Apr 2026 12:09:09 -0500
Message-ID: <20260427170914.5062-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260427170914.5062-1-macroalpha82@gmail.com>
References: <20260427170914.5062-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_101144_629301_47FEF086 
X-CRM114-Status: GOOD (  14.64  )
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

Document the SG Micro sgm41542 battery charger/boost converter.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../supply/sgmicro,sgm41542-charger.yaml      | 99 +++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml
new file mode 100644
index 000000000000..3e5041e5b551
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/sgmicro,sgm41542-charger.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SGM41542 Battery Charger
+
+description: |
+  The SGMicro SGM41542 is a single cell battery charger/boost controller.
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+  - Xu Shengfei <xsf@rock-chips.com>
+
+properties:
+  compatible:
+    const: sgmicro,sgm41542
+
+  input-current-limit-microamp:
+    description:
+      Optional value to clamp the maximum input current limit to for
+      the device. If omitted, the default value for the hardware will
+      be used (2400000).
+    minimum: 100000
+    maximum: 3800000
+
+  input-voltage-limit-microvolt:
+    description:
+      Optional value to clamp the maximum input voltage limit to for
+      the device. If omitted, the default value for the hardware will
+      be used (4500000).
+    minimum: 3900000
+    maximum: 12000000
+
+  interrupts:
+    maxItems: 1
+
+  monitored-battery:
+    description: |
+        A phandle to a monitored battery node. Values for the following
+        are used by the driver and if not present will result in default
+        values being applied:
+        constant-charge-current-max-microamp
+        constant-charge-voltage-max-microvolt
+        charge-term-current-microamp
+        precharge-current-microamp
+
+  reg:
+    maxItems: 1
+
+  regulators:
+    type: object
+    properties:
+      otg-vbus:
+        type: object
+        description: OTG boost regulator
+        $ref: /schemas/regulator/regulator.yaml
+        unevaluatedProperties: false
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    battery: battery {
+      compatible = "simple-battery";
+      constant-charge-current-max-microamp = <10000000>;
+      constant-charge-voltage-max-microvolt = <4350000>;
+      precharge-current-microamp = <180000>;
+      charge-term-current-microamp = <300000>;
+    };
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      charger@3b {
+        compatible = "sgmicro,sgm41542";
+        reg = <0x3b>;
+        input-current-limit-microamp = <3000000>;
+        input-voltage-limit-microvolt = <4500000>;
+        interrupt-parent = <&gpio0>;
+        interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
+        monitored-battery = <&battery>;
+
+        regulators {
+          otg-vbus {
+            regulator-max-microvolt = <5000000>;
+            regulator-min-microvolt = <5000000>;
+          };
+        };
+      };
+    };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
