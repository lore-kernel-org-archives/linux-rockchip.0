Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64785CD8CA4
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 17:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1+WXOSkdQmKZGYuRm+VV/Uyd33qelckqo5ie1iQex8=; b=vlhmqhSw/ww6Xn
	Dw6g1s2+TTWnLWrnwW4HHf7ZcebHDNx4Mt+Ok2Xr19qo+tU8ZWJrC7H5JS07K55bVJdDWVP3/GFlc
	NwabatoZwX8XZSzEMsUsdxPrUi1/1W94Tq7ZdBtPscKdf69MyaScKVzIXwU6JAjVDx6NaMBK1mUvI
	6czjjCeE7wwn9g48SnG/B+rp/5oOTIGc9yxAbBQep10D1q+XHEm6kU14nCvpeDYaB3pf97HhwY/IB
	lA6iEEIlrzS82STuPPZg1cSoOZ7rBQcGg7Hwk09CUXyOWdUC36CCwZw1H9Zx1dJUh6WvgJF1CWaPl
	VOv4ljnE7UClozzjnoMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeEE-00000004EQl-19ci;
	Mon, 08 Jun 2026 17:57:38 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeEB-00000004EPg-415Q
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 17:57:37 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-44192448b56so533420fac.2
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 10:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780941455; x=1781546255; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rohFaEvdb620vArkGLpQqclQhDOuQqS+sgoSDAQS17E=;
        b=kPMc2wOjrH1bonwsmfx6G+tmYiyPqHaxJL/DlZrUqwaydVvx+qLPRxUnOFHPR52GYK
         BXQkuYDU7sHNjB/M9pbF8SK08GeJ/ZcR6TsKGUsN25QNU+Qzvp0o+L7+8WhStQ2Zkf9Z
         wYbHb9pCXQK4uJe9z0VQA9n7/PWMVkj/F1P2U8E52TTwla6/nuJ9sVOb3wfmV2jZ6zIP
         T1DuzwDoDVCa12bylMUy32tcGU2GFTeeoyLXsXNRdvFIIYdesY8+8bw4oILqYCYtZtae
         MDQAlYy3we3GsAiP0RDC1jaq5/M1jZE00ls+YFIpdOZSZwTXwr0OOBUO+iAmwxhirkfk
         IWlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780941455; x=1781546255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rohFaEvdb620vArkGLpQqclQhDOuQqS+sgoSDAQS17E=;
        b=lu6Vk3fyz5zhbWLAnnvMg5R+kLtz6QYS1yazezIfwQQok8z6whzxnUiVnH7M8DxYJb
         sxdJKhGxdfmCMl210jwu3y+FsXGf5hYSUWtNi1tvxlxh973NPgO4bmb7TmjV20wB3NHJ
         680TTwlPMJf2/E+7hq42IUg37t0GQncDYGm3GbPE9vRHpgTxMy01blDo30jXpMmNFraI
         Di2xDMl+qD60/cxw+zTUQ4O5ptXn1yZEnbiUuOP88mMD+ULA/OKlrWWdMlGxavkLtQOT
         0cROC7LBG3DbsGZ3vjVKdY1tVYfJcqOSOgXrnQlCl73ROm5OZDAevUnpjb4gcWeDD6tK
         PAqg==
X-Gm-Message-State: AOJu0YzZAg2916WiDp/s1dBqjVpGVq4t6zAyQxT1kNcEd0FFzDTrvilf
	xUi7gJwzxXQiyXLDKDai5qcCFJedcD9z/aiiubgiAae/q05gRU7sI7m6DbEYphkA
X-Gm-Gg: Acq92OGkEgBWtRKfgVVa2m9oxLEOTWMupS7MlF/W5a9Ap5AkJNGV/ZB16HQLrBdPEyj
	gs9/bvMjweRZzj9LIL97uSq1jc/EKSD85cueoelpTc6argEvfWJdClLESnGpOXLxmQYOn6FpGBY
	QjJyCi+nbNbVg3Vcy109usJsdOCLjNCJGnRiH/ATkgr/YeHDdImdPLjKsK9X1867HuX19FQmrOu
	hFGQI+KsL52jAWdT5ei0MR6tTf6gCrHTgNv1zhBIKmCq4a+u52eItJ1a3f5OtzdEpg89lpoaCTU
	ud1l9IAud+JIaRDjDTBWz1c1KNftYv6ig9lR8Vl/Wige22KJqRXuU/h4BCMhddUaStQEEau6mZo
	S3Cv+G4vD/VK6+NNSftEeYb4i1q5ia87qPg8f3yE/V2huIqSjfV2HlJlCNJJicABrCsrXSBR3TT
	IQq3U9YCnYu4eIfS7tEEXKgX+1nhRl/6g=
X-Received: by 2002:a05:6870:e3cf:b0:430:7c2:9a30 with SMTP id 586e51a60fabf-4413d942f37mr8199517fac.15.1780941454573;
        Mon, 08 Jun 2026 10:57:34 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d8297395sm15214316fac.11.2026.06.08.10.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 10:57:34 -0700 (PDT)
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
Subject: [PATCH V6 1/6] dt-bindings: power: supply: sgm41542: document sgm41542
Date: Mon,  8 Jun 2026 12:55:16 -0500
Message-ID: <20260608175521.67449-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608175521.67449-1-macroalpha82@gmail.com>
References: <20260608175521.67449-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_105736_003038_F06CFE50 
X-CRM114-Status: GOOD (  12.07  )
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
