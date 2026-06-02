Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66EFECD6E5D
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 21:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfjIWCAcOnm/kurBCqPXyIczJ/Dxg9BEYOjLDHHMBO8=; b=dRKnaVgQgvLGDz
	Ju3sbTNBr1SHhektK1pv0uUqYLLxyJS2qe1yr/Eyuh6Yda0Ci7zhbO5Aci1Y/ScIohbG0VnU4R2Lz
	AgbrUVjzD4iIF22Lo7f2mJV40uUMMw+XdqhzmvPuX3CcRNyjBwpVQTBGiYQsnzF/vgMqsYiLJSo8N
	J/wwOcrlKPiXRl503kBcKUN1C8qcd4HiLg80rR0h5gl7drPTQOEb3TfLkrdkktthQSrQdw1Ch2uV8
	681laRPrqKeMWzQdr6zwhkymRcr+ZSqSaqLS/xK5NoaXPy+ODvkHiMU5sK6OaWZqCSs+LVyO5oxAM
	3Fs2KxwsvOZJkX4l5FpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWeP-0000000Dp9B-0UTt;
	Tue, 02 Jun 2026 21:27:53 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWeJ-0000000Dp6H-3Xmi
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 21:27:50 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-486539875c1so351952b6e.0
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 14:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780435667; x=1781040467; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ASzuiA/oWwreVgFn7/8SW3dexF4emahYNJXfppn07Ak=;
        b=mGgcMtRCxMfudb0EwUqM5xCnX4r/xOp51yeHHt2OoSH3xPhzfeqWy8UopB39mQBU5F
         8rCKR0JD8qHgnBItvP9g8/bfEJ1fXOLSdtwgMvRwaSvV+rkx0jKHMLUKa94WBzsLPt+2
         h7tJ53bH3hUMKQ9Q6cP6zz28kclSId72c6rc8XOAzdb95WDgl+A2s0nU97TFqLr48VB6
         gvhG1QsA+grqBq23m1zsbx403zyz0pc/KB+XxeW3Ee2iV6BvlAMut60PCQrE8d8I0yMN
         B/KtC7WXenfVpKzmJpXkekhQdt2X6fcx2QqAHl2TamuGCYM9b0FEJX/E/zQyrr/2cZLh
         x0dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780435667; x=1781040467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ASzuiA/oWwreVgFn7/8SW3dexF4emahYNJXfppn07Ak=;
        b=Xyy3CX1qRNhoDwDBklr2zt+BabATGTT5xC/HCUR6AXS3mDTj6HEziyfm3x8SOTWM1m
         IFg1Os1CRumwxCahQDmPskUsPN8TzzKJnV7rzEAMO+fNiRc5JKQjIC/cP9Nu6yZCUBnb
         rbkl8hViVwq0FutUiEWkiqlnnP947XWoVfV5tID4eUvoEZMn2syQiOYmH9ynLah6/tnr
         JMRbyTLAsj+Opa+4nHMCbxI5Y1m/QUCev4M0/vq0yF8oQaDzcWYUhACia4KBYclNfYGZ
         3i0Tmb4e0KhXp3G/HORhmDImYSLL0Y8XMseS3SiCpOY75j+eMko0iD5yhWvQa4nniqOD
         ctNw==
X-Gm-Message-State: AOJu0Yw8eiiOKIDw/4oLTpLo9xlTbLNVYNQzt9w6tmOhHsJdIxo47yBn
	kh8r4BUajzR+qg7VeTaok/lp4t0BPA6KPhEazSDGppEtSMOunhbBG8kfViUDpdKo
X-Gm-Gg: Acq92OEFTpIUyFmbm/S08UWgwIzwW+R3+ePb3HMb2cnxoB9+M/6BfZW050/FIGtuxRi
	cJFZ8TcQGPSi0zyQUO67TccWTxu0ptNoO90okyXcWEgu/tL7gnXk3FovxZKUo9FgnWRUCgiINYa
	JB64WZT3WCTGh/i1p416qndHzlhD9TgarSBaEG5uWghTM2wi3mmTMCVo1QqnJYt5rSY6BXN3Q21
	R83DfUzryjb3JxkNrlS2rntwyWd53IbV8Z8g/NuCj6oHvyeG7e4aCNnXxz+mOmPhzv/tfQ14fSI
	InAr9LJ1CBKYrbMb8y3H1MONjPknHqY8Dfj/XGxGInHeDl+GCqdNSoac7MxI2ELhrV/JCXXRAiP
	Bv/bBLeNRFU0Wq13cW9OCIz3lhzQIV14c8p0tYnM2ttGlkLhY/bw9OQ6qTTUIIKJy7492Rh4Hiq
	MC0mnVHoYxAyDY8Lrbu0H5z+jDwQvIvow=
X-Received: by 2002:a05:6808:4fd0:b0:486:37ab:e80d with SMTP id 5614622812f47-4865a8e101fmr403833b6e.1.1780435666693;
        Tue, 02 Jun 2026 14:27:46 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b5a53bcsm216722b6e.3.2026.06.02.14.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 14:27:46 -0700 (PDT)
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
Subject: [PATCH V4 1/6] dt-bindings: power: supply: sgm41542: document sgm41542
Date: Tue,  2 Jun 2026 16:25:07 -0500
Message-ID: <20260602212512.418166-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602212512.418166-1-macroalpha82@gmail.com>
References: <20260602212512.418166-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_142749_100029_C76BEC28 
X-CRM114-Status: GOOD (  14.84  )
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
 .../power/supply/sgmicro,sgm41542.yaml        | 104 ++++++++++++++++++
 1 file changed, 104 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
new file mode 100644
index 000000000000..a97afea83700
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
@@ -0,0 +1,104 @@
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
+allOf:
+  - $ref: power-supply.yaml#
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
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    battery: battery {
+      compatible = "simple-battery";
+      constant-charge-current-max-microamp = <10000000>;
+      constant-charge-voltage-max-microvolt = <4350000>;
+      precharge-current-microamp = <180000>;
+      charge-term-current-microamp = <300000>;
+    };
+
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
