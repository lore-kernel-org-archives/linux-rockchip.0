Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2BA9C56202
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 02:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fx4yumEENUgkjnf4iZHxqVyWWCM2kABA7we4by6BNlE=; b=cSUhvW7Qhff90O
	iCqQnDVVGDO0Awe/pJk+D3GDJMbogWhy4a8EL7Ih8ods3dLyUvSA6u0V6sgiHQhjy1UjyLfWipvlW
	oBuUNgH3Dl4J+2757HcyguGMHuPZz2HzBEZB8cA2SKZlsf7vlukI5xgjfWTZGLE7pikjQOirF3vn/
	pwqaRcNHgjjPxAYvfkeu8B3DN/hWBzW9uNHvhcpqcgXdlJF8qo2VwHwcJuTmyi9IBS7ZfZS4I4mDw
	H0DqPKrc/J+rjsf6jeISm6rH1r+oxhfnyt2iX/MBYeLUZBds5ixQIwpcB3glzhpnnFnaGlKHu0GGb
	Axg0iShhFbV8Wnz2l80g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrRN9-000000037e5-0uOr;
	Wed, 05 Aug 2026 02:28:47 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrRMy-000000037PJ-2KNe
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 02:28:39 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-7e6128bd9b3so282134a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Aug 2026 19:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785896915; x=1786501715; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MjVtijpmJ/oNZWvDUTBmnWApL7aWLNJ+r5jlKeKXMpI=;
        b=PWVNs4EZgH7exHOCR0dEj+2GXjW6mWcsuPGnPUEHaUxIEgJ9SdP6Tqbv4/Y0pBP8+y
         1Q4417BomauxhVWwHeVLnRC8shuhKHLEBxLamFs2USrlh56keGDiZ61cVGdDttkozyzq
         /apLW1qM0vyZr66zQT+Ga1ssxOCqzdIZ9KV4Cx5iFm9IzsIvrE/Solxe38x4UItFUFSj
         16G+5TmXiHFQE7tc4vewjSy9aMLZTdG5iQntp6EgWO7hM91cWSSgGaZrhWy6Kq/YJ+Xz
         7J8QfgKK/2QfaAW73bpJlgoxbzOgX+lQDacD1X7qUkUR44UY2k6MMFrq8uggd1dueRFJ
         OPbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785896915; x=1786501715;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MjVtijpmJ/oNZWvDUTBmnWApL7aWLNJ+r5jlKeKXMpI=;
        b=idhy3hEQlsGiUoDFUUstnwpEQBN0C1MeQm32+c2SNOMODb7KxbmzxdzNHeJr1Er+Za
         JiHIfmDoGbtNrL6FIiIDHinJa6xLlgEvjL3LJ760Ha1SjyHyn7mLvtie/aGz4IFp8Udt
         OXv6lKpGAwJKDkof6HpTwuZ3IEENC1qvD0WC/aYw1aIAmJSz88V7unXjRfwJhM8Sx3uN
         nsUwrfg3UhNAVDciTvbQy0Tc87a49c8KX6yk32HAJMf2ZM7zJAfwlGr6AikxMtm/o/qi
         naY1srv2hVgeXCP5PIF99BRvDcDBMsrHg4KqETOGPqUG7Di+6NaZP1cxr2TpzSl3lnh2
         NCDQ==
X-Forwarded-Encrypted: i=1; AHgh+RoPiILL780WJXl7B4b2UvwEAlZcS+ldUufGrzm6B3Fvf2RX1grvzeXU5QtdMSPSQmfZ/BsewHgOUovbPeYLaA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0kvlw97DqwfdMi+rL29liOf/Avtt6dXSks8paJWqFro4HEq0c
	tW0o85hD0oaJuzeSyeArYI6M7Xy6lAA3J30rob0E46GjHx82wK7MxyVY
X-Gm-Gg: AR+sD133JlOPFt0OXdjOrwAqefZGECJDDEyVj2hCixwBmZKBUhYtGkWHuXrg7l3Fepw
	3Ukk08pe7jCt112FJS9dxwcR0nUutApELaVjjtB2g17vdiE2KqsxlLkKvJGDR6+23jXNonBU6SG
	jz8MuxK3utX1+uoaxq6L9obGzFLXlhYfmpdMJCtBR58vXedPcrKV4vkUM2aLY78Y94//zSs+QuR
	IXexWmLktZKtuFX9uW8i86t7sYJ96WKSiypo63/TReVjvVlWMei7lYQPewcoJ0vEGX+taaSiUFD
	4Tx/39b1WvvAzHvCwcCa93OVElXhIHW7rUwdb+jYTDFzjLJvmnovgsnuBfM3QOx35FPFwqRZ5AP
	L3qZElCYYR0phNq1ru0tKka7uTUwmfqkjc+FSayDxlCbe5cOb3iNhh8O5Ek7qWNlWvomSHB54cp
	43i/PJe1yWNnN2xhgLU3EBxczj/wjQ08O4dbrP+I/vPKo51eaSgz6f5wW+opEngY9JjOjGoalcP
	ifvnQPo4zHUdjDHCn5Ki0aoUS2H1KyE+6eAzBN27mA/xl75s+yQe9LN2GjNOSL62gwyrBcOQPkW
	7vpFyjbChoFCdBqbAJThRdCcP3VFpDSEkJ8hydOE33uoyMRXqG4l+7fk424urIZcsG2RpNEsAgF
	e+VwOpAtJGHZdhLobnFaddS4TnO4=
X-Received: by 2002:a05:6830:3741:b0:7e9:ea28:4c1f with SMTP id 46e09a7af769-7f1e5d893e2mr2408593a34.8.1785896915399;
        Tue, 04 Aug 2026 19:28:35 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f1df565d37sm2078153a34.16.2026.08.04.19.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 19:28:35 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Tue, 04 Aug 2026 20:27:05 -0600
Subject: [PATCH net-next v2 7/8] dt-bindings: net: x-powers: add
 AC200/AC300 EPHY
MIME-Version: 1.0
Message-Id: <20260804-submit-acx00-of-dynamic-v1-v2-7-3eef49ff1d8c@gmail.com>
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
In-Reply-To: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_192836_642036_0A3B2E55 
X-CRM114-Status: GOOD (  15.35  )
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

The AC200 and AC300 MDIO link interfaces report the same Clause 22
identifier and use a compatible link-side paged register layout, but need
different package control interfaces before that identifier can be read.

Describe the forced-ID PHY and require exactly one reference to an
enabled AC200 or AC300 control device. The PHY node's reg value is
programmed through the AC200 control interface. For AC300, it must match
the address selected by the package straps and is therefore limited to 0
through 7.

Allow a system to provide its optional two-bit SID configuration field.
Bit 0 identifies the AC200 or AC300 package and must agree with the
described control device. Bit 1 selects the AC300 low-calibration tuning
sequence. Omitting the field skips package validation and selects the
normal calibration sequence.

Also describe the optional xMII receive-clock inversion needed by some
integrations. Requiring an X-Powers control reference distinguishes these
integrations from the Rockchip RK630 PHY, which reports the same
identifier.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../bindings/net/x-powers,acx00-ephy.yaml          | 117 +++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/x-powers,acx00-ephy.yaml b/Documentation/devicetree/bindings/net/x-powers,acx00-ephy.yaml
new file mode 100644
index 000000000000..c280bcf8aa25
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/x-powers,acx00-ephy.yaml
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/x-powers,acx00-ephy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: X-Powers AC200 and AC300 Ethernet PHY
+
+maintainers:
+  - James Hilliard <james.hilliard1@gmail.com>
+
+description:
+  The AC200 and AC300 expose Fast Ethernet MDIO link interfaces which report
+  the same PHY ID and use a compatible link-side paged register layout. Each
+  package uses a different control interface to make its MDIO endpoint
+  accessible. A fixed board references its enabled AC200 or AC300 control
+  device. The PHY node's reg value is programmed through the AC200 interface;
+  for AC300 it must match the address selected by the package straps.
+
+select:
+  properties:
+    compatible:
+      contains:
+        const: ethernet-phy-id0044.1400
+  required:
+    - compatible
+  anyOf:
+    - required:
+        - x-powers,ac200-control
+    - required:
+        - x-powers,ac300-control
+
+properties:
+  compatible:
+    const: ethernet-phy-id0044.1400
+
+  nvmem-cells:
+    maxItems: 1
+    description:
+      Optional two-bit SoC SID configuration field. Bit 0 selects the package
+      variant, with zero for AC200 and one for AC300, and must agree with the
+      described control device. Bit 1 selects the AC300 vendor low-calibration
+      tuning sequence. Omitting the field selects the normal tuning sequence
+      without validating the package variant.
+
+  nvmem-cell-names:
+    const: configuration
+
+  x-powers,ac200-control:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Reference to the AC200 Ethernet PHY control function
+
+  x-powers,ac300-control:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Reference to the AC300 MDIO Ethernet PHY control device
+
+  x-powers,xmii-rx-clock-inverted:
+    type: boolean
+    description:
+      Invert the xMII receive clock inside the PHY. This is required by some
+      SoC integrations, including the Allwinner H6 AC200 connection.
+
+required:
+  - compatible
+
+oneOf:
+  - properties:
+      x-powers,ac300-control: false
+    required:
+      - x-powers,ac200-control
+  - properties:
+      x-powers,ac200-control: false
+    required:
+      - x-powers,ac300-control
+
+dependentRequired:
+  nvmem-cells: [ nvmem-cell-names ]
+
+allOf:
+  - $ref: ethernet-phy.yaml#
+  - if:
+      required:
+        - x-powers,ac300-control
+    then:
+      properties:
+        reg:
+          maximum: 7
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@0 {
+            compatible = "ethernet-phy-id0044.1400";
+            reg = <0>;
+            nvmem-cells = <&ephy_configuration>;
+            nvmem-cell-names = "configuration";
+            x-powers,ac300-control = <&ac300_ephy_ctl>;
+        };
+    };
+
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@1 {
+            compatible = "ethernet-phy-id0044.1400";
+            reg = <1>;
+            x-powers,ac200-control = <&ac200_ephy_ctl>;
+        };
+    };
+...

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
