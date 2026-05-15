Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76724CD4851
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 22:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzIHNG1VoJzHZc5Q7VqktaMW0v+uvX4o8IEie9cbQ94=; b=NUIVW6faMijjrB
	J3df1YjDt/3l0v7o2GwpBET2PdoxDodhppMDuKh4edfM+wj6m2s/Xxi2dX4xUCAwrGkZnxipvq9xx
	S2j+OTjarkEWU2zweiuoKftuLOLXpfNh8iVZA6lonibPTIH08vNewX9lN+nGkVNDiNQ7zkCu79qxG
	9sgNzJoAR6I5uKCiT4IADB1l+gRiIqnI/F3h5G+vJGVU3lJoK3rT2c5mSXBDb3A+dmmFbsGPxHqJ7
	Rjp/Ef6oMzwoWYdF57GOUgyZafdpc1J2AnaiTo7wSGLpAcCsR4Gc0It+ZXtUb1e9LirHnKRuHGGxi
	oFec7h9uC1oKZHn3NmXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wO0vE-00000009cV4-3VsO;
	Fri, 15 May 2026 22:22:20 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wO0vA-00000009cSF-29KY
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 22:22:17 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-463f00cda04so292511b6e.2
        for <linux-rockchip@lists.infradead.org>; Fri, 15 May 2026 15:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778883735; x=1779488535; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWRRU0GvDFaf4a964FT+cr5rSIOhJbhEFzH95X7dSHg=;
        b=TYoCgljDfUaSX6W2NecjT/UNn++4AxrJd51o5sPhWeV4mtHfjrBldmqeAESlI/RLmA
         yXU7mgsj2HApQPW6y0hr2+44Wi8yUg8zP84XQrLiKjocUtryGpm4y4/la8KKVA+fpT0f
         N0Q7ncEp9dKqC4OaXVztGkVeqSx5Y13oPVaob13j3WaiDxDzp44boViXvdfSIGgIQU13
         KbwxdbWi8nk39MT+TGpT0HjhNFQ9/yMlzQlTQBqhfuYjRkE5wCSwvfBOIdH2eZ+gXQEA
         85NcQIoTcGMncKyD2IDqXrjJXk86K+sJ36FgjUENfZWg3T2DfjiH4Q3iHAvFP1KKi32M
         rFjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778883735; x=1779488535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eWRRU0GvDFaf4a964FT+cr5rSIOhJbhEFzH95X7dSHg=;
        b=jNDGE0UyOBxpk99dIFMbNsPY37zpmEWgHAwTesqOGbJhxSk6qyNHFbxPhTdpvtdzvW
         Lwbg0NCILzNzkz5MdumiKMfd5ulKKzx7bDjEPeArOLzPilvH6tFgiMb9qYkF8twUvBDu
         7gZn2C2tsExWiSCNEriv5d+9BaLPL9FedMtFVdjXFV6b0+jrlaNHJkI8++OTUFuRoUFJ
         fyMhb8h4NYQinkjwYxr1CMCoU3TyicW//K1NjbfyAy2mUzjT+8NY2c5hmFlDLGqVm8Qa
         ZkyWQut/J4d/61E+Nvine2UD4B6STeEnE6bk59qxOoMs+Ql+tl7zPg6q+z8DAWXPIIuk
         KV+w==
X-Gm-Message-State: AOJu0Yyk+taC/rtZP6FjVyMukuN9caEiQBjuvsDbvVTWLr5rLufwunY6
	HTqMGEr8IGtBQ5Zi8nQbyZCFuTfXgxAu6+SBFO1jnVCS0r3jLfR8yraGel11U/P9
X-Gm-Gg: Acq92OGhmLQJpqeH2mNLv3xPoTFe0W/FrXq7Bx/nBLbRD1iuiOGKEDJnFc4uOqOvSZE
	fAky1cFbIBNPXaww5Ga70erhZUNjvqF4bl6Sy54xetUoVwvX90KrrydYf4OJ93vca4QQdhwcXxd
	PvfgBnOtTL3R/j4Y8tIIxJUgkLcodHBTiRYEfnSRkrEFDabaMt4xEzKp2mpR+Hz4Axx9nhJVT2w
	kTUhQhhTBLwYr02/AA3Rr0Q7VBWf5yTwoSSBlg3yEYi+fiCuJNJMvlO5jNKDeJ/f+IzWLfxqJT5
	jpLuv2WISE5QE8ZgTy/Ecowp+3b8TI0Hlr08F9fA1glWt6drUx7NTLUZ5gpj0uBniPLFFKqyGSj
	41KtvCst96QiN4RazAK2qHJSFmufDOYjx4zIYNkbPCzsI+zVFcAqqojuZCmV8KiFMNJ3hCADzUz
	HMo8T1VeIP2dNm2OuPUMAlCPoZjECUG9eqeo47QiJymg==
X-Received: by 2002:a05:6808:3204:b0:47c:6c9c:607d with SMTP id 5614622812f47-482e55a978bmr4321044b6e.2.1778883735358;
        Fri, 15 May 2026 15:22:15 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e568c0d889sm980764a34.9.2026.05.15.15.22.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 15:22:14 -0700 (PDT)
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
Subject: [PATCH V2 1/6] dt-bindings: power: supply: sgm41542: document sgm41542
Date: Fri, 15 May 2026 17:19:42 -0500
Message-ID: <20260515221947.299229-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515221947.299229-1-macroalpha82@gmail.com>
References: <20260515221947.299229-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_152216_557249_2D08D0F6 
X-CRM114-Status: GOOD (  14.34  )
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
index 000000000000..fa0d31e496f7
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/sgmicro,sgm41542-charger.yaml#
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
