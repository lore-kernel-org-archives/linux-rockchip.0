Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55176CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 16:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTQAxsKpHxj8bS+MLfb7EICQqvWiVxMwwczjlA7VqPU=; b=jUzNU1l5TZE5Sn
	BC0MEWM7q2fVejppWdJ2pzvnA1BpsvoJPQ2F2O4p9FkuhzF0JPGzGWOgm/npehEtQUTS77bsScm02
	TEezPUpfPbnspxZoc09u3lNw95AwJ1mJtALZL4CGFJHo3n5LbsXFNwcA73XuMB05PLoYs6Frj93d4
	zLXuBJbHbE1G44lFLWr/aQX+UkRjwQH7SRLvGrvc5hS68xn33E7YHE5juXgrcG/KTvQ4bc+JJ8BR6
	V94K4Xp/+MnrKS5nSi+MYoxguv/tYDgAmm5bJ2n+p9kHOgsr2mEMmhGc53MMFd8bCO4q1KKl/xkCr
	UvBDxYRpnhLFbRYoDthQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Yd-0000000BUcr-2Ij0;
	Mon, 01 Jun 2026 16:32:07 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Ya-0000000BUb0-1LGn
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 16:32:05 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-7e6b5c374e5so1408326a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 09:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780331523; x=1780936323; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZXpOKEKYRzrZLjXmBOmkIohxSYzh/0A5SCufM5dsPR8=;
        b=WWBg+LBsVOMjVYj/dZSBub2ADx2hJbzRj6JuyGlV/QvSlaQYltETLTE7gqKGwTqe2w
         8MnhlGpeneAhVfJBtE8sXiKbTsBHSVCDzxRW3h80pdwKhJkXNPCpzDKyFoPH4xZMDasL
         078outTT/bbWTpGbT9e15Cnq5jPt1GPhjs4Lzt0MhSG2U51avNYbdDWGhmQFAEPW7KaL
         seL+Wz7OrGX7uyZfUd7GFglkh1e2SdA6PKm9kZqW86+g5kpP6hJbKS4n84kFHJ3ETTBp
         CTRLF9RkPu7A+1LpZj91t4SIGcvRVg8DQaDRdStB1qAL5bFYBjB0R1Y9mYTE3xCKKlSV
         OK3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780331523; x=1780936323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZXpOKEKYRzrZLjXmBOmkIohxSYzh/0A5SCufM5dsPR8=;
        b=PWtJvi5/Imt+1iJMm3ajbEQR8vCczc3ye+eMFhiqwXnsL2rKO9o5nENuxtc7EBo3wP
         3gq9WdvQDArOrNOQFCApqTGct0C/6qW+BeF7ZIlprGzud/f+jUwV2uSGaVG7W1JxFB66
         Q3yOt364zKcrHiftKtSD+A24EmWh/PrZuavQUkx7KohZRQmtKJDZpomjesMLNfGqSLfo
         ZGjSd3X2n9eOJSlKBNy38E8NN8vqNg0zp/v2y3Q+qeO4r74nve0/hZ2yVIGSemBoDIQ9
         Xw8gMhOS84F5HfihGWEctgICFz0RmWSmEquae1Br52nT8tkPsUeKIQUSUrG4H5jyYfE0
         jiQg==
X-Gm-Message-State: AOJu0YzB866fxU0hKQYxsjX4tu0FLKZZJx1YujUMzRE5mh5YQy5sZN+o
	H3giy741kFrwi5yXuFv4xDJfn4ZUGvYP9zyCNfgdwf7qyA3Gr3gH4RfanyMDO9ld
X-Gm-Gg: Acq92OE/Z60Pr8u6wlHvLw5nHkvQ+7gy5SS9bLVO5It7X9edUiuolyfCNz1SDgrdcBj
	iAfmGUB8C2RnSrar3GEjE4Nl0HSf0WGjN505CuRh6pcIKUMPMsP2f4qaEaUkssX6COKv2v5zxsj
	1Crn+Cfdb3NqQ8rn4JeLgeQS26sngA+kQTk6M47/Pjqc2I2WS4hmIDp+WBLSxwLzsHZ0MOobceG
	iO4xL4aCcogUe90ox4slERSbl0mpVapHUKFF4kG1fYpIYjin4mnKxDnm0DcXRWPLxUcY6ZaRZOY
	JfU/+7jjBqFf7JXek5H67QXjaig5S2zsHebfPMmAwz7mRvp4TfXuFFid/8O7m3XLVB0axvxglmT
	IAE8zJPZwCBO5rHWMOFoas71Wchd4p9HktsMoMlHLLx3h11qVVd6hVfkw6UlHcC1foJ63lVAM/j
	TQljGjnHsBhCN1il5n6lrfGDnDa3Ro9rI=
X-Received: by 2002:a05:6830:6011:b0:7e6:d003:929b with SMTP id 46e09a7af769-7e6d21c0157mr139808a34.1.1780331523331;
        Mon, 01 Jun 2026 09:32:03 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e695d69b20sm8024928a34.22.2026.06.01.09.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 09:32:03 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
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
Subject: [PATCH V3 1/6] dt-bindings: power: supply: sgm41542: document sgm41542
Date: Mon,  1 Jun 2026 11:29:46 -0500
Message-ID: <20260601162951.254968-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260601162951.254968-1-macroalpha82@gmail.com>
References: <20260601162951.254968-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_093204_363889_8029F396 
X-CRM114-Status: GOOD (  15.06  )
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
The parameters of input-current-limit-microamp and
input-voltage-limit-microvolt are defined as such since they are in
common use among multiple bindings currently.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../power/supply/sgmicro,sgm41542.yaml        | 99 +++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
new file mode 100644
index 000000000000..8d37f502c1f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/sgmicro,sgm41542.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SGM41542 Battery Charger
+
+description:
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
