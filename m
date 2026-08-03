Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDCE5C5516F
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tiCb4nOO3fX+jbTYHjQqeL7cFKkYR7LoiqqPUlrmdA=; b=kn8DbQrfDahgYI
	ALjVVzCgptRwRW/cTLSZILbh5wKPQ87aLD7ZjztUamg6+nzj9BMjkj1BveVHfghgKNMcA3B5FGi0m
	Or7hFwtflLd3V2372fE+5ymdJtPLjBKmkj8rBwAfX93HipCCQ4aR6vBwOm1FND2Veyz/EAVcu07KX
	rrPKVgcMWe0PGZ3luoxKckb+zv3NYytMpRGgsp+90bYBhTXMtAFSFpdS1tNHbhIlqbanqp72WW189
	M6I1Sk0R9gKzanBU6iFvUIP/LK8GGX/qmICzWzoRBDXei56GGed9L3O3GAhoQGndYY4DLeLvW5G7m
	M5kTn5K53Up9OnuFfW3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql2b-0000000GMpR-1fRc;
	Mon, 03 Aug 2026 05:16:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql2X-0000000GMlZ-3lch
	for linux-rockchip@bombadil.infradead.org;
	Mon, 03 Aug 2026 05:16:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Jidbxiox7dX03nOKASiwvW/wC69oSzUN52btxDpp97E=; b=bTtj6XkOnvvSodqRstwHyTrdH2
	5WH35DSFWalrepPqB76qhK2pIgzyXcrmkBfy/V7vcMr5DfKFJ8DcwILO6X+1xrbdmsG3UDWHLtagL
	onWUrj7zCah+9kE4lI5HcYEiYNWQnqBRJnqUlXrO7dr+8niBw7uBm/Q13lbhphqCNDwlWfZ3+l4EU
	RuSqGBwJ/tfhgnngWZewHJuDtzgpO5JK7ZrB/E5oGWqCiG4UkbbBdwz+GlAppi/AptfYhx1OCGaTg
	qCnNb9X2MuT5W2aL0F29pZLQRpqPIe9KdlB6emiDfw7jls1wnlbpGIv0ImF808II/KLeumM6tI/dx
	b+DYTatw==;
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wql1o-00000008hrv-3skC
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:16:40 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7e9f69ee6f4so2714733a34.2
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734146; x=1786338946; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Jidbxiox7dX03nOKASiwvW/wC69oSzUN52btxDpp97E=;
        b=BHfvZKYkPbb5otwAbSnOia2kg4e6do0FW755BvaOrJbdFhYAINTlW60h9HqhSceVri
         O1k/p906iSGTZEahtKxL/TdqCvlFmwz2fUldgPEZRm/+fHHcO3/U65iR1xpFi06BmZ7s
         dIhzy/wR12oIAm0ZlqhMZsDm9NO+K+fHUZSdK5YveMr4nmyszrRBbA7buhz6qNFTdsTu
         B+ahxe/wtxK3wmybfubdCmjENfRdngBSPfAKhlyvS2z9w3omPZ3AOEyfM+VsV3M3hWeM
         N19H2vRge/YKICNm1EAQbYi0J76yYRh30OnfdaP9sTrDN69fWyYHUmrzt9fgWeZwXyh5
         QXcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734146; x=1786338946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Jidbxiox7dX03nOKASiwvW/wC69oSzUN52btxDpp97E=;
        b=AMXh2KHzJFd7ySEhThFwX3/mfVvwRHJJw20Yg2Gibtjz9zPUpCB9AFYj3h+eO2FERU
         GAfl02A/2a3wQLZvtHjVekwGONuXaA6DFcOCkCTqVIbjRrxMHqYDeWRrTqJn5ynxJqVC
         Lo2hepfrbKSBCLNXBYyDb3wTEFhFCIbQau0BO3MXuYRd2aQgP9fsxwxOcoEudRz9TEpg
         ZHUxzMc7VK7ruauTR093a4/BbWorXEb2iguHl2yPJcyRgnmztlIm4bwqpUo//FCc3OoU
         gr+XQUNFq1MK0jdaAaSE/d1IgDEKV3CpJS2V4iVyvPA2Mn0RaMCCybFG39n1dLCleJOk
         9OJQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrm5IpaVBElKTdMHhmo87YAPJy/pNcOmvlDfP0Jb5g1gTI9H0yTB7ATE8OprV5PUev2kPzcMa/Roj+8rCy0UA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGIYfix26NcyLYQf5PXuhVM0toApvls/XVGnDm+bqvAIvpdGOF
	ehM2UHLeUzrMaPlcFwhL2lfGXAtlZgPy0qpzXICTiwUVHggfv+aLUeEP
X-Gm-Gg: AR+sD13PY+AxR1jUHMImOdhbSaL1MVEreUTdEofZWc4IqTlrL6EvB29BUweJ1qPtNHT
	YSxImQqQmsCHbDUwj39Vy3KPxHUHrl5+JMSkfSRQf9a/8mKbvnLFHi6D1jEPvPXDm+hZ4eXRMTa
	ab8XD8lBUNtN1nkIASe5UprpH/O5vd49iW7QlQHIipG77LqY2sRjofNIniUMzQk7TNZrrajoKjD
	2NZX7wMW/94xM5Kh9cjk38RzysICx2dJkM0BrwhsX0/yJgTtlOuB7TKQs6QtF7ijLJLr3P+a5lH
	AWOIUVv6fdogM1e0igUUgp/F2QFchkdvDKF3vl1zJR+sS5k6oM/+2eN+zH6BBiA5BGAbJlA1liX
	1C6Y1/+i3XFky5pLgBezjBxYdxhhjociO2o9QdQabTtHRpubPa97R/DUyRkqLPzTxtcUYTuGbAc
	RIti4D6R0mS9BxRbA07lYhIAC6f/FbfTJS9SFKLFuHk8oqNxMxiGHwaayO8bqsmPQhC5wZBR5ym
	LTpehNc1hCD0mpUWQPnc0FtMS0HecEuzoEE24N9NNhqIOxDsEHvZC9HrA/s2OwjVUDkPRO4M8Uy
	8qKUKawb33X6S/cvrIXx0wzZgBVe/muXgFBxqHJelW4N8M0r3RXPlioQHNYuvkpKarWAGLh89sA
	AAkzibr3fXzUqojHE
X-Received: by 2002:a05:6830:411d:b0:7d9:f50f:9691 with SMTP id 46e09a7af769-7f1968c88e1mr15370101a34.0.1785734141726;
        Sun, 02 Aug 2026 22:15:41 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:40 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:23 -0600
Subject: [PATCH 13/21] dt-bindings: net: x-powers: add AC200/AC300 EPHY
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-13-0a53cd9e21cc@gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Richard Genoud <richard.genoud@bootlin.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_061627_094657_4FC62A0B 
X-CRM114-Status: GOOD (  19.34  )
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

AC200 and AC300 companion ICs contain compatible Fast Ethernet
link-PHY implementations which report the same PHY ID but use
different control interfaces.

Describe the forced-ID link PHY and its control-device references.
Fixed systems reference one already enabled control interface. A fixed
AC300 system may optionally provide the configuration field for its
calibration-range bit; omitting it selects the normal range. Systems which
can contain either companion reference both candidates and require a
logical two-bit NVMEM field for variant selection and AC300 calibration-
range tuning.

The link node reg value is programmed through the AC200 control
interface, while AC300 requires it to match the package-strapped
address. A control reference is required to distinguish this
integration from other PHYs which report the same ID. Also describe
the optional xMII receive-clock inversion required by some integrations.

Describe the three fixed-function package LED outputs using standard
PHY LED children. Their functions are link/activity, 100 Mbps speed
and duplex, and their polarity is shared. Omitting the container
retains the vendor fallback with all outputs active-low; an explicit
container enables only the outputs it describes and may select the
shared polarity.

Allow a PHY with a routed interrupt to be marked as a wakeup source
for magic-packet and link-change Wake-on-LAN.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../bindings/net/x-powers,acx00-ephy.yaml          | 217 +++++++++++++++++++++
 1 file changed, 217 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/x-powers,acx00-ephy.yaml b/Documentation/devicetree/bindings/net/x-powers,acx00-ephy.yaml
new file mode 100644
index 000000000000..3e01f6b44006
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/x-powers,acx00-ephy.yaml
@@ -0,0 +1,217 @@
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
+  The AC200 and AC300 contain compatible Fast Ethernet link-PHY
+  implementations which report the same PHY ID, but use different control
+  interfaces. Systems with a fixed companion IC describe one control
+  interface, which must already be enabled. A fixed AC300 system may provide
+  an NVMEM configuration field to select its calibration range; omitting the
+  field selects the normal range. Systems that can contain either companion IC
+  describe both control interfaces and require the field to select the
+  matching one before the PHY identification registers are accessible. In
+  that dual-control topology, the AC200 I2C controller and AC300 control
+  device may use status "fail-needs-probe" so the selected one can be enabled
+  dynamically. The PHY node's reg value is programmed through the AC200
+  control interface. For AC300, it must match the address selected by the
+  package straps.
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
+      Logical SoC SID field whose bit 0 selects the AC300 control interface in
+      a dual-control topology and whose bit 1 selects its low-calibration
+      tuning sequence.
+
+  nvmem-cell-names:
+    description:
+      In a dual-control topology the configuration field uses bit 0 to select
+      AC200 (zero) or AC300 (one). Bit 1 selects the AC300 vendor sequence for
+      a low-level calibration value in both dual and fixed AC300 topologies.
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
+  wakeup-source:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Indicates that the PHY interrupt is routed to a wake-capable interrupt
+      controller and may be used for magic-packet or link-change Wake-on-LAN.
+
+  leds:
+    type: object
+    description: |
+      Package LED outputs. Output 0 indicates link and flashes for transmit or
+      receive activity, output 1 indicates a 100 Mbps link, and output 2
+      indicates full duplex and flashes on a half-duplex collision. The
+      polarity setting is shared by all outputs, so active-high or active-low
+      declarations on different children must agree. Without an leds
+      container, all three outputs are enabled active-low to match the vendor
+      initialization. An explicit container replaces that fallback: only
+      outputs described by available child nodes are enabled, with active-low
+      used when no child specifies a polarity.
+
+    properties:
+      '#address-cells':
+        const: 1
+
+      '#size-cells':
+        const: 0
+
+    patternProperties:
+      '^led@[0-2]$':
+        type: object
+        $ref: /schemas/leds/common.yaml#
+
+        properties:
+          reg:
+            enum: [0, 1, 2]
+
+          inactive-high-impedance: false
+
+        required:
+          - reg
+
+        unevaluatedProperties: false
+
+    additionalProperties: false
+
+required:
+  - compatible
+
+oneOf:
+  - properties:
+      nvmem-cells: false
+      nvmem-cell-names: false
+      x-powers,ac300-control: false
+    required:
+      - x-powers,ac200-control
+  - properties:
+      x-powers,ac200-control: false
+    required:
+      - x-powers,ac300-control
+  - required:
+      - nvmem-cells
+      - nvmem-cell-names
+      - x-powers,ac200-control
+      - x-powers,ac300-control
+
+dependentRequired:
+  nvmem-cells: [ nvmem-cell-names ]
+  nvmem-cell-names: [ nvmem-cells ]
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
+    #include <dt-bindings/leds/common.h>
+
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@0 {
+            compatible = "ethernet-phy-id0044.1400";
+            reg = <0>;
+            nvmem-cells = <&ephy_config>;
+            nvmem-cell-names = "configuration";
+            x-powers,ac300-control = <&ac300_ephy_ctl>;
+
+            leds {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                led@0 {
+                    reg = <0>;
+                    color = <LED_COLOR_ID_GREEN>;
+                    function = LED_FUNCTION_LAN;
+                    active-low;
+                    default-state = "keep";
+                };
+
+                led@1 {
+                    reg = <1>;
+                    color = <LED_COLOR_ID_YELLOW>;
+                    function = LED_FUNCTION_LAN;
+                    function-enumerator = <1>;
+                    active-low;
+                    default-state = "keep";
+                };
+            };
+        };
+    };
+
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@0 {
+            compatible = "ethernet-phy-id0044.1400";
+            reg = <0>;
+            x-powers,ac200-control = <&ac200_ephy_ctl>;
+        };
+    };
+
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@0 {
+            compatible = "ethernet-phy-id0044.1400";
+            reg = <0>;
+            nvmem-cells = <&ephy_config>;
+            nvmem-cell-names = "configuration";
+            x-powers,ac200-control = <&ac200_ephy_ctl>;
+            x-powers,ac300-control = <&ac300_ephy_ctl>;
+        };
+    };
+...

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
