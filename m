Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C9BDC7115C
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jun 2025 18:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOhY7mRxIRTNx3jPuozrLrSFdqL7O/Xt2uYdw4Vae6Q=; b=p/gdVscCRLA2q3
	dtNDkoJtJZ2zbguxrulYMQfkxzTBTp/5LqBxfQeoZxoRp/cCrjMF/Qs4gLQgakqqqXn5cK4aZtGQI
	cNCfWX42oYM8xOtGDAK4GH/C8ttOhsiFuCxyfUI94tYewAtMMT7iVr/FAH+Ciweh20UDVeh6WomGi
	ufqzUvsNUp26uSd+5ban7tinbhtcjewWdcEZWkmitug6bJBGYO6rwbg8VqyIvBTaRGGnsgoFSuoDP
	c9svNiGOwDJD0OHFsKJ/fIxGSk9eL94r+fBddlBCXVlXbfYI7EvED91YftqFCLJaQ2oKsZ0dkCoDM
	Fto1jFEkDl953ostwpIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT2ZF-0000000071r-10ch;
	Sat, 21 Jun 2025 18:03:53 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT2ZB-000000006zt-1Auj
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Jun 2025 18:03:50 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-735a53ef4feso2069711a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 21 Jun 2025 11:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750529028; x=1751133828; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4Gq1SBjrOYc646ur4hahi6Z9le2MFhsfRKOcTdYR/s=;
        b=Bd/if+ZoczuZLzASF1x+rYbTlI9qBPyGn5y7NkDjBgvVf896oI3vryIUJfhqzfmysB
         joGBMU+8KnZ9/1VmmTn32h3Z6DLQrCT24oWyyjEXeSyuBWjeAKlyfZAjzVISExiFKE3F
         eh6nCzO0ibZUh2VsEM3eJTqzjlLew4+owJEepqPyRG0XJTsOvQOt6dTGyz7WUkGp4O9O
         b7pbvIkzI9nLEBK91pWg7vg+1CGratbMZNdWUCOAzgvwTHOdcfLKJOaxSSPbmAPMl1xv
         TLFTM5M1lCt09rviNNy+8WrcNgnw0o9Y78BAIv0wQD5XREOF1FI2MTA1ZYJCg+QlEcLD
         sMrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750529028; x=1751133828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y4Gq1SBjrOYc646ur4hahi6Z9le2MFhsfRKOcTdYR/s=;
        b=oB7MzKVORgouwJ67LkqNtYPbg38q2Rd7sdY+XGlI2f3dxTraLaWmBoY4cB6mqES2yT
         3JV5AERmmlw9fgyIHzWtyC+KDVh3wZ/rEtaMb0AGAcJ0yAqXozrai196hGbTTlOoUi/c
         NQz/f70ZeWOyxWXOlQKZNfRH8WiKeFi/Q/463Sirz7/8/EK0Wp48uV90FzBQBU0TQ66D
         0ws72Us39EvrbmULXvIfxQFnQpGut+nGhY3U3BFSkCjbgWc4u8pAL5BlxQGYEQB5WdS+
         DPfV8NZB5qwveOqJD+hLGw5dpWqxNRRW1nw8l9ss2kHWlae8HyrSO/01U9DBoeKFwLfG
         +6lA==
X-Gm-Message-State: AOJu0YxvrdKqsbRFIK7TRK4Ink255oerlIpJcbccbwuCPLbn6JRUxk4z
	/zioxdxUmJXRBjJxFY+gzKDGaRmb6YyWpB5V87bscULJHtTs/VxL4NIN
X-Gm-Gg: ASbGncv9bzHuI7fwrXNTckTzW6913ixEf2lCq5tI0+21pcLmconV4hpKY6rqplJhca2
	0OKh4zn8t6YaeFA8EuLjKApbAqAprz4F6n5krMydVXbqj6tyDY7OAANdK0ecGWRpL3t3QlCMHhw
	uwUgricRCEs3i3iC/OJEstv/PUbrq62De05FloabIfBA8hWaPpx4DWpth5akppvCRkXd5AjYIIL
	qXnZccctsVm6ObDLc8IGV9Mn6DAqYCzr/kgkVPz3/tjdoTZWjJgA18B3pu24yfR+crN7zk6ffW4
	W8Crw9LnoCRopeEwX6boB8BX2xswEESwPwFBYwyr1g+XtAkwK2U4GkXEZvH5cNeFEVqJx1o=
X-Google-Smtp-Source: AGHT+IGAz59q9ITvjFFtDnoqT64AfQ1+JJ8gmFMwBnIyV/T34ES1ka9yICRj7qrFh+7lVjAb9JWL9w==
X-Received: by 2002:a05:6830:8208:b0:72a:f44b:13ed with SMTP id 46e09a7af769-73a91a7825cmr3939211a34.2.1750529028326;
        Sat, 21 Jun 2025 11:03:48 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a90ca8707sm782895a34.46.2025.06.21.11.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 11:03:47 -0700 (PDT)
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
Subject: [PATCH V2 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
Date: Sat, 21 Jun 2025 13:01:15 -0500
Message-ID: <20250621180119.163423-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250621180119.163423-1-macroalpha82@gmail.com>
References: <20250621180119.163423-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250621_110349_319735_0A444077 
X-CRM114-Status: GOOD (  12.59  )
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
 .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 123 ++++++++++++++++++
 1 file changed, 123 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml

diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
new file mode 100644
index 000000000000..baaeadc2a3ab
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
@@ -0,0 +1,123 @@
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
+properties:
+  compatible:
+    const: ti,bq25703a
+
+  reg:
+    const: 0x6b
+    description: I2C slave address
+
+  interrupts:
+    maxItems: 1
+
+  power-supplies:
+    description:
+      The phandle for a power supply that provides input power.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  monitored-battery:
+    description:
+      The phandle for a simple-battery connected to this gauge.
+      A minimum of constant-charge-current-max-microamp,
+      constant-charge-voltage-max-microvolt, and
+      voltage-min-design-microvolt are required.
+    $ref: /schemas/types.yaml#/definitions/phandle
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
+additionalProperties: false
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
