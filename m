Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD828C53219
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 20:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1iajEI3WUvNRXvnlW7UPbW5Zn7arLgJhYYRl3GB/Xc=; b=0qq44GIVsl9yEt
	L7GC3B1x7jTTG6+x7ChqluuU27FGQoQKftTQ91cchkgf2q8tCP8JdVhrC/CmQyqgGI7W4zEsvMGnn
	dQF+ckonrcz81y8hjcfdphafTFGMC9uI//cTb0pZGMtYJ40ot6ARXiQnEs2AOON59RHpBYKlzOrEV
	+KVR/yLexdK+w0PhzW5T/KOYpO+7Dexaq3vpqE4HdV2WF4cogrkuA83PZMM05ioeUh7HUHDp8dIlG
	+dy+nP13/S7nf953sv2vB1b+hXY938khfbS5kH/W1pCCCi/r3KfjCENoceAHMC2afcvGziAqtC+1j
	RKcxrb+H5uAPPznzdnlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woobu-00000006ENo-4Bad;
	Tue, 28 Jul 2026 20:41:11 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woobr-00000006EM7-0nnO
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 20:41:08 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-43cce34c881so133032fac.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 13:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785271266; x=1785876066; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wxlSATJdp1icBuAyE2MHftLf5IzsPs8NNyx38DkjeJg=;
        b=ZCGvgEgogbooAe5RcnY9+w1faQX/CGj90X1flq9KGXfDm7EqPKJwy7Z9WmxaSp3fg0
         6AYYRQVG1bHFwlJdFXvVp/jYoFkyhLSPOTAlW4P7HEPSCFi+BNZ8fHXjbmEjk3RLrwIn
         kaByTWSmkpQl0fDWjdufUFDScufgsut81fVQNxfMcrt7rpiXyPtSm9CLpXlwjAibrZO2
         ounMiYECBrCdlNkXBzjYccBKR4pEj5+3BIWwzEWAft5/I8aeL4BLM0PoAdaxLvsjzFJb
         tMaMH1s3NWbWcDOefJuQnekhPAcIwcZjT7pYfBbKRftgWnBFUUMyDhFI7DqBqzP2DCS0
         Z4Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785271266; x=1785876066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=wxlSATJdp1icBuAyE2MHftLf5IzsPs8NNyx38DkjeJg=;
        b=ew08HFkr+i7YBVgoUUIhny9qQT/lCkBq7hIV9iCu1fx9e3dXBoitEjk7fBAnlkbfxX
         wUF2xRQyryBW2RWBcnUKz9bjpi+KsNWaFXr/Mji/oXOm1wPwOgS/OKeF4z+YhLVNSQnw
         OIBcu1iEt1dACRTZS2NPnhTk8SgZi7AMzEIoSmQWgbGt9Ci3MeBeS1+c+mN7Mt/8qWKk
         LtPIBgzfOhSMZMqZDNqTMs0PMKNldq3zq0qXFfQAMBDBh16lftTujgUlItRHT1fZ9wz/
         ki/EAtzVXobzHWpMnCoeMB+dOt5/DaNkYD89ZdfPnuNCJiVeJqXLnNBXjniEsMkCGBTX
         5b6A==
X-Gm-Message-State: AOJu0YwWJf3jGmwTG7NN04ii3vIn1kjVtYDxR8W4EdLvgWDvNupdm5tM
	epCMsXnjnHMIupDmzD+H3ob7Ct+Nz63olwh0rSQoNA+jfJzVKamLfbZ4hiPn0g==
X-Gm-Gg: AR+sD10EO2Gn6VXCslC59u4VWYCzP3KVjDA+dI7F2sK2rxjG6CuKlI9sauK7MMg1p7G
	xnhWSuZOy1WHWck85XT/al/99bXamoE9SNfkzxZnZstxu6jrhn9Enth8IaBIqj1eInmlA+xCjX/
	tgREehabNGVZQ3sI/doaK3PAiSuemXo8M1Kk73ePi51bXRI4q8ZlZOuT4OAvZYZ44JO8Pn9U/jV
	mKrtv7NSR+Wh/SfVQtblKyQ3CBVHjeQJ8Ev7tprO5wJC8hR77wx0aYAgF5rOR3VlgcmAqjRlktN
	rxlNfcKpFXQtbvN1Vtuwv8ZQK4J81U4W061ZDgM9y6YkkP1GzHZ6qWNgaxERPpldxzLdRsJB6AF
	5r00GVQYTmBFYKgivcAH+o4mWg3ePj9CtFIqUWBIO9xV8RSzgWAmSzhhZfOnqIdUdbQjBS3N2JK
	DAGoZC7lguldJZ257oZqxiM8j1Ns2TFaiJxdFy+e6LANFxzFvSmzeFEPDoTnFZ7tfPCZ1OrlnHb
	Y5gXKDw
X-Received: by 2002:a05:6808:1451:b0:496:dfe1:e8ce with SMTP id 5614622812f47-4ad5b83450cmr2320808b6e.22.1785271265851;
        Tue, 28 Jul 2026 13:41:05 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9162:e42b:cb94:2d55])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ad6efc5c3fsm129884b6e.13.2026.07.28.13.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 13:41:05 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V10 1/4] dt-bindings: power: supply: sgm41542: document sgm41542
Date: Tue, 28 Jul 2026 15:38:29 -0500
Message-ID: <20260728203832.166402-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260728203832.166402-1-macroalpha82@gmail.com>
References: <20260728203832.166402-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_134107_244171_058F982E 
X-CRM114-Status: GOOD (  12.15  )
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
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../power/supply/sgmicro,sgm41542.yaml        | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
new file mode 100644
index 000000000000..af80fe528505
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
@@ -0,0 +1,96 @@
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
+    default: 2400000
+    minimum: 100000
+    maximum: 3800000
+
+  input-voltage-limit-microvolt:
+    default: 4500000
+    minimum: 3900000
+    maximum: 12000000
+
+  interrupts:
+    maxItems: 1
+
+  monitored-battery:
+    description: |
+        The charger uses the following battery properties
+        constant-charge-current-max-microamp (default 2040000)
+        constant-charge-voltage-max-microvolt (default 4208000)
+        charge-term-current-microamp (default 180000)
+        precharge-current-microamp (default 180000)
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
