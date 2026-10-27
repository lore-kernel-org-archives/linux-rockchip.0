Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8E2606A321
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 08:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GwhOLVEA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=a33VnfPI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fpJFiGy3wYvDfk9inprWqqMChXOjd6JhMujv8noJgao=; b=GwhOLVEAPzI3RLoyMqk63sxdZ4
	qyVKkXAJSNmNHmygyzFyy31bhP6MUThR4hT592KXhFP+3x5bezXHHl/xbNDheS40xhj7q0DU0BTuG
	L7GM6izvpcXy9sGSdp586ut2GprgU0tM1FLaqkzFzoGtsb9puGpnz9mL2A0f1/+rBxQziMyTPRXbg
	gnFY9520Q2oCoW89OhuITOKhhre9u7roSpG8WeoEjpKGBayYgeVY42wnW9ggPjp37qn2LvAkzVgv9
	AoqOA0kvy7To/9uymoyx2Wp57Ffex+s2Tup5awdcA2F1kp/z2Nb1P0eoHiXvAtNGQ3wpN7QVt1IXM
	tpONBzUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcoZ-000000044zc-0Zoi;
	Tue, 27 Oct 2026 08:45:51 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcoT-000000044wL-346F
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 08:45:47 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-8a06e79e152so1899403b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 01:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793090745; x=1793695545; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fUtBDBFlnuwqHCLsz+VPCk4N74H4c6MrUI5YYlRszuU=;
        b=a33VnfPI28AZxuMvxthp1JsA4B+jm5YdtGbL3frZ4rHH98aVhYD5J116Tqg54qpNIM
         liTsUMCY5miUYkyeOMOe12f88k7Rx4mGdFDdCI9IFGaYa2pzUWRzU3Oa+eSo3c5qeYvw
         AV3S8obpAJwBljpkzVRVe0/6TW4xAgc0woLGau2aRsdTVUFGthimbkAZbTbwsay3vQai
         JIDfzNKYR44EZJayTWQVyKxKLVahbj6pHAQ6xq787dIvT5OAmN9MydSN9U7wb1mGyFQX
         28d44NkAucs7bIh0RqxaTkbAB7MUEgClr5d2pCOPfE9yf1V2K30wuQONZ4bzl78tOmtk
         kX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793090745; x=1793695545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=fUtBDBFlnuwqHCLsz+VPCk4N74H4c6MrUI5YYlRszuU=;
        b=GM6OhnIbu1XhD8Cly+bmKRpy+vL4mkFVp8I+fl32pUR3Nq+7PkhhNU2cmP1avgj/Au
         AfE0gCvv8bGU+34NAZuddLthnpJLo+vPww1MWVqt+/gh5g+Hg+Rd5hIw/sRDS/ET+slj
         RUD9XSnT9BDk+gE7d8X/MSjyblwSi5wkAWkJ3DvA/ur2IhtP/uAKnvnOW3jgGaJhuk7X
         LbuTJ+qn6JRJtwMCO6DWI1npaNox/NdZcPyQSsd1vN1Zp/WxRexQspQSMN/cGXH3z8UB
         6ghJV7blT4/1GkPnEanSxaoTROsOCfzMLziLuZjfbvRQSlLZXD1Dbi3QF3mPlk6Y54XV
         ksEQ==
X-Forwarded-Encrypted: i=1; AKwUvByQm5Ao8xP0ghshOcSVCqyI8ZvSUcwuu3HTZPmnqueyXutjaWsUr64X/PPZgzQXDEO46my8VmY9kK6qf2dPNw==@lists.infradead.org
X-Gm-Message-State: AFq9FYL0JCJO3P1q/WruzVGN7cF707mx/8tUEcYw+3b7ZjHN7DyinbEj
	ZX82LYEM0iiwwWwl95wvUpJogqwmKQ7rxsG0tjVkgLsN+utr240qFWk9
X-Gm-Gg: AYBFou3o559IhiKf4lkT9yWViX7vgPFWzklquYYlFhqw2w+rJ94ilGz5oZxCWh2gZRD
	tZqkYZ2BWq+g61WZUsr6YlEQalxGj+RyPwL68sRTqyuFDhVf5q/bFjzotZ6Kx85JGTbf0wASrxC
	V9JBOFx9vg9gQvk8Vihw0/3zDJ7JMIdgjwhXd1WzOSXRbixlgvALqmCX8zOwrMLxFjUrHpJfxqq
	og/GiSU3hu2ZNCa1nrbW8+62/j9hRlINUx4vFC9eW24QxBwOUP0q/SKt4eAtSNRYcsES0H11dMa
	4wW3g12vRCKQ/UzdgL9t8y19wynEhL7Btr5lZexUuplgo5wI6AASG3AMmNThkBXv7ZcAYLyGpYd
	I7SKV8ML/gAHsO7cyG06uhPalUO84njn2DnA0Y7t9PVjiMIGiL+BrAIpJAL1LFUDrcemZWJBxzL
	AOeZuKZn5GXl95rWVJJFIV+nUx6bB1r3VXv0c+wV/USJV5j6pMv65BkXHtsMWwbkFGHxOOJdj4W
	XF6RtG0oxSwqKE5cdqInAMBMv6bEbMFlRQFKfqxDvU9SVGkAfaHO84ZE0WTsQHWl/eqXg==
X-Received: by 2002:a05:6a20:ef03:b0:3e2:1a24:fb82 with SMTP id adf61e73a8af0-3e7bfa2023bmr5501098637.16.1793090744450;
        Tue, 27 Oct 2026 01:45:44 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdad8f2c611sm267581a12.10.2026.10.27.01.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 01:45:43 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	Joseph Chen <chenjh@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [PATCH v5 1/3] dt-bindings: mfd: rk8xx: add board level power hold GPIOs
Date: Tue, 27 Oct 2026 16:45:07 +0800
Message-ID: <20261027084511.1992-2-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20261027084511.1992-1-yaozhonguwl@gmail.com>
References: <20261027084511.1992-1-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_014545_786384_83320883 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Some boards route "power hold" lines from the SoC into the board's power
circuitry. Those lines have to be held asserted while the system is
running and released before the PMIC shutdown request is written,
otherwise the rails can drop and come back up instead of staying off.

Add power-hold-gpios to describe those lines and power-hold-delay-ms for
the settle time. The driver reads them for every RK8xx variant that is
the system power controller, so add them to all seven RK8xx schemas.

The array is bounded at two entries. Firefly's vendor kernel handles
exactly two such lines, pmic,hold-gpio and pmic,stby-gpio, and its board
files use one or both of them, with an RK808 and with an RK818.

The lines are released from the PMIC's power-off path, so they are only
meaningful when the PMIC is the system power controller. Require that.
A board adding these lines is expected to switch to the generic
system-power-controller property at the same time, so the deprecated
rockchip,system-power-controller spelling is not accepted here.

Assisted-by: LLM
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 .../bindings/mfd/rockchip,rk801.yaml          | 24 +++++++++++++++++++
 .../bindings/mfd/rockchip,rk805.yaml          | 24 +++++++++++++++++++
 .../bindings/mfd/rockchip,rk806.yaml          | 24 +++++++++++++++++++
 .../bindings/mfd/rockchip,rk808.yaml          | 24 +++++++++++++++++++
 .../bindings/mfd/rockchip,rk816.yaml          | 24 +++++++++++++++++++
 .../bindings/mfd/rockchip,rk817.yaml          | 24 +++++++++++++++++++
 .../bindings/mfd/rockchip,rk818.yaml          | 24 +++++++++++++++++++
 7 files changed, 168 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
index 7c71447..bfba394 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
@@ -29,6 +29,26 @@ properties:
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  power-hold-gpios:
+    minItems: 1
+    maxItems: 2
+    description: >
+      Board level power hold lines driven by the SoC. They have to be held
+      asserted while the system is running and released before the PMIC
+      shutdown request is written, otherwise the rails can drop and come
+      back up instead of staying off. Only meaningful when this PMIC is the
+      system power controller, as the lines are released as part of its
+      power-off path.
+
+      The lines are released in the order listed, and power-hold-delay-ms
+      elapses once, after the last of them.
+
+  power-hold-delay-ms:
+    default: 0
+    description:
+      Time to wait after releasing power-hold-gpios before the shutdown
+      request is written, to let the lines settle.
+
   wakeup-source:
     type: boolean
     description:
@@ -71,6 +91,10 @@ properties:
         unevaluatedProperties: false
     additionalProperties: false
 
+dependentRequired:
+  power-hold-gpios: [ system-power-controller ]
+  power-hold-delay-ms: [ power-hold-gpios ]
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
index da23915..7895c31 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
@@ -48,6 +48,26 @@ properties:
 
   system-power-controller: true
 
+  power-hold-gpios:
+    minItems: 1
+    maxItems: 2
+    description: >
+      Board level power hold lines driven by the SoC. They have to be held
+      asserted while the system is running and released before the PMIC
+      shutdown request is written, otherwise the rails can drop and come
+      back up instead of staying off. Only meaningful when this PMIC is the
+      system power controller, as the lines are released as part of its
+      power-off path.
+
+      The lines are released in the order listed, and power-hold-delay-ms
+      elapses once, after the last of them.
+
+  power-hold-delay-ms:
+    default: 0
+    description:
+      Time to wait after releasing power-hold-gpios before the shutdown
+      request is written, to let the lines settle.
+
   wakeup-source:
     type: boolean
     description:
@@ -102,6 +122,10 @@ allOf:
         clock-output-names:
           maxItems: 2
 
+dependentRequired:
+  power-hold-gpios: [ system-power-controller ]
+  power-hold-delay-ms: [ power-hold-gpios ]
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
index eb5bca3..b719b07 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
@@ -31,6 +31,26 @@ properties:
 
   system-power-controller: true
 
+  power-hold-gpios:
+    minItems: 1
+    maxItems: 2
+    description: >
+      Board level power hold lines driven by the SoC. They have to be held
+      asserted while the system is running and released before the PMIC
+      shutdown request is written, otherwise the rails can drop and come
+      back up instead of staying off. Only meaningful when this PMIC is the
+      system power controller, as the lines are released as part of its
+      power-off path.
+
+      The lines are released in the order listed, and power-hold-delay-ms
+      elapses once, after the last of them.
+
+  power-hold-delay-ms:
+    default: 0
+    description:
+      Time to wait after releasing power-hold-gpios before the shutdown
+      request is written, to let the lines settle.
+
   rockchip,reset-mode:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [0, 1, 2]
@@ -138,6 +158,10 @@ patternProperties:
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml
 
+dependentRequired:
+  power-hold-gpios: [ system-power-controller ]
+  power-hold-delay-ms: [ power-hold-gpios ]
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
index 50dfffa..0be2bb9 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
@@ -43,6 +43,26 @@ properties:
 
   system-power-controller: true
 
+  power-hold-gpios:
+    minItems: 1
+    maxItems: 2
+    description: >
+      Board level power hold lines driven by the SoC. They have to be held
+      asserted while the system is running and released before the PMIC
+      shutdown request is written, otherwise the rails can drop and come
+      back up instead of staying off. Only meaningful when this PMIC is the
+      system power controller, as the lines are released as part of its
+      power-off path.
+
+      The lines are released in the order listed, and power-hold-delay-ms
+      elapses once, after the last of them.
+
+  power-hold-delay-ms:
+    default: 0
+    description:
+      Time to wait after releasing power-hold-gpios before the shutdown
+      request is written, to let the lines settle.
+
   wakeup-source:
     type: boolean
     description:
@@ -113,6 +133,10 @@ properties:
         unevaluatedProperties: false
     unevaluatedProperties: false
 
+dependentRequired:
+  power-hold-gpios: [ system-power-controller ]
+  power-hold-delay-ms: [ power-hold-gpios ]
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
index a58d945..a834a9c 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
@@ -44,6 +44,26 @@ properties:
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  power-hold-gpios:
+    minItems: 1
+    maxItems: 2
+    description: >
+      Board level power hold lines driven by the SoC. They have to be held
+      asserted while the system is running and released before the PMIC
+      shutdown request is written, otherwise the rails can drop and come
+      back up instead of staying off. Only meaningful when this PMIC is the
+      system power controller, as the lines are released as part of its
+      power-off path.
+
+      The lines are released in the order listed, and power-hold-delay-ms
+      elapses once, after the last of them.
+
+  power-hold-delay-ms:
+    default: 0
+    description:
+      Time to wait after releasing power-hold-gpios before the shutdown
+      request is written, to let the lines settle.
+
   wakeup-source: true
 
   vcc1-supply:
@@ -101,6 +121,10 @@ patternProperties:
         $ref: /schemas/types.yaml#/definitions/string
         const: gpio0
 
+dependentRequired:
+  power-hold-gpios: [ system-power-controller ]
+  power-hold-delay-ms: [ power-hold-gpios ]
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index 2cb6d17..2c05275 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -55,6 +55,26 @@ properties:
 
   system-power-controller: true
 
+  power-hold-gpios:
+    minItems: 1
+    maxItems: 2
+    description: >
+      Board level power hold lines driven by the SoC. They have to be held
+      asserted while the system is running and released before the PMIC
+      shutdown request is written, otherwise the rails can drop and come
+      back up instead of staying off. Only meaningful when this PMIC is the
+      system power controller, as the lines are released as part of its
+      power-off path.
+
+      The lines are released in the order listed, and power-hold-delay-ms
+      elapses once, after the last of them.
+
+  power-hold-delay-ms:
+    default: 0
+    description:
+      Time to wait after releasing power-hold-gpios before the shutdown
+      request is written, to let the lines settle.
+
   wakeup-source:
     type: boolean
     description:
@@ -189,6 +209,10 @@ allOf:
           patternProperties:
             "^(BOOST|OTG_SWITCH)$": false
 
+dependentRequired:
+  power-hold-gpios: [ system-power-controller ]
+  power-hold-delay-ms: [ power-hold-gpios ]
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
index 90d944c..319c0f2 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
@@ -43,6 +43,26 @@ properties:
 
   system-power-controller: true
 
+  power-hold-gpios:
+    minItems: 1
+    maxItems: 2
+    description: >
+      Board level power hold lines driven by the SoC. They have to be held
+      asserted while the system is running and released before the PMIC
+      shutdown request is written, otherwise the rails can drop and come
+      back up instead of staying off. Only meaningful when this PMIC is the
+      system power controller, as the lines are released as part of its
+      power-off path.
+
+      The lines are released in the order listed, and power-hold-delay-ms
+      elapses once, after the last of them.
+
+  power-hold-delay-ms:
+    default: 0
+    description:
+      Time to wait after releasing power-hold-gpios before the shutdown
+      request is written, to let the lines settle.
+
   wakeup-source:
     type: boolean
     description:
@@ -105,6 +125,10 @@ properties:
         unevaluatedProperties: false
     unevaluatedProperties: false
 
+dependentRequired:
+  power-hold-gpios: [ system-power-controller ]
+  power-hold-delay-ms: [ power-hold-gpios ]
+
 required:
   - compatible
   - reg
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
