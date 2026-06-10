Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6BD7CD8CB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 14:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1+WXOSkdQmKZGYuRm+VV/Uyd33qelckqo5ie1iQex8=; b=DETTEiNuBd6tuj
	PjG7Zc3Cy9DqRU2JiDEWRSm8EmA1B06H7u0IquuwMVRljWUydUkfjPP7tsS9d69NiKqroWij4YlJd
	jf+aGXukwi5NfV4YktAYW016Exey73uZpFH+IrwvWo9ssuJB5f/C7Zwkwpr1KVT/KGOZJu9QsRLYA
	nOxxsH5L/E3VB/80WC6fzkvbpKrYvpUVtT5q2SCe4QHIXF7cW7DWYEHhNwtyQCG9oBOdJcQiOrGrP
	sn5VK1jm1TpllsYVGNXmUu0hQX0siavroa14ZCP0UvBoLVHTrHdJE8vCLWgx6biRq1SYZR6w3wTZY
	/GS9yQmxB20zHBMnakDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKCT-00000007weA-4BLb;
	Wed, 10 Jun 2026 14:46:38 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKCQ-00000007wbX-3ftv
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 14:46:36 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-69e43b02308so2732052eaf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 07:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781102793; x=1781707593; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rohFaEvdb620vArkGLpQqclQhDOuQqS+sgoSDAQS17E=;
        b=jNf3HvhSiumVPkeTbKGI/TuKZ4BB/wp15YwM1gFVhcim7VR3QPL00U0Pe5w/tNu7QT
         hieSK3ZiAd+ZxA7kHvbCGo2R7jmKIPl8EPvvId+efyJGSzWePRlICz4rlsA9boN0lVlq
         HsD2MnxB5xB2M+61y2J3Zou196J5QnndjdXdzBjYoROdFEeoKhUCs4f59sKzmsck4/th
         zqy3bPe9s1Os57J7qfm3vSeMJG07w0v9WeGUltppO/tb0+JUGkE3nZe+Z95k5CBHJ3HN
         NTAz99Xugr4fxvITsGbfwVQHgj6f0BcJfLdi+0cZL/t3rN/XRRivAqtsC1aHItNhlu2P
         H1nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781102793; x=1781707593;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rohFaEvdb620vArkGLpQqclQhDOuQqS+sgoSDAQS17E=;
        b=lvuf+YwBPhmjuqE/dRsg0shvNtHbzAd0u6u1nCsJkXloFF5KOD/iIJbk5sUskUkkEH
         lLHTxcDaN06KGQAOyx5geYXIueE9wA4blQUshXX5jy6r/xxpnRwu0qs0sNITX7b0X3+G
         kfaUf6MArbpYTngVBfb4Hl4KPPMueSnBUaIaFAA0MYQIue0BN0r4V3IFVicKxifjZYHN
         xxRFFZCRzKFIZUHqXQ92wwvVXBXi/eMoLvqTL3Y9VI+w1SkI6MvBhyWunEB7sux/RXwX
         /P3CxMfoEBi++Kku6UdgXCPIcoI9OrlE3q41FqMeEbUkv+2Rg6C0JZriUPGw6jahoI9W
         IwwA==
X-Gm-Message-State: AOJu0Yyh4h0nW/W113VFd7t1TBzO14L+IDYgPJUHnoIlVXeX00PDtS7d
	v4it9rI8kJaN+UU423+7LF0+enWzA9ArW8JvwwCm+wB5grdTxDUiyXW4OuCrqA==
X-Gm-Gg: Acq92OHT9y0XPHY9tj6jBgcPZi2Ux67tm/Ce8fl0mCpdQUfUqJKl76EqqZUq7Iy8nq0
	I7nfCoclm0yQrabaZ6FIWsnS+svBvtVwUEB3K9vnWxnjvJrzcZnpMLqKARctixuVqQcTxJHM7QW
	w1mDA22vOCXEOxhlPr7gr62AHKzgzcQJaYyo9NbfoR40NE1NuFmtsHmYj91oJfSDATi6Z0FBBcL
	I2vU7xcnVmLJvU8TnlZKgpGbzQRa9O6/pDsWLhy2L2Dzro1ECw9lqxzoE8rgK5tA37ZyqaYlXyq
	jpm45saWuVuPWK9GB5vZ9HSQKAiX0+8FHs5fWuOc+CIs4H4bak3pSV/X0NY9u2HPzoniPhx0wk2
	gWwFAARGxq+1d+DUbIZgyqrKZjiP/rcO7U4/fI17aBiRsieBTgRGaARu0mR3s1+kezbq4faWBxN
	NZxP4UE+j2THNaRJYohD8EDf196XUUhXQ=
X-Received: by 2002:a05:6820:626:b0:69e:89a1:ee0f with SMTP id 006d021491bc7-69e89a1f5admr10618764eaf.33.1781102793420;
        Wed, 10 Jun 2026 07:46:33 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e4644ddc2sm12069165eaf.12.2026.06.10.07.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 07:46:33 -0700 (PDT)
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
Subject: [PATCH V7 1/6] dt-bindings: power: supply: sgm41542: document sgm41542
Date: Wed, 10 Jun 2026 09:44:02 -0500
Message-ID: <20260610144407.438846-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260610144407.438846-1-macroalpha82@gmail.com>
References: <20260610144407.438846-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_074634_915314_1AEE2894 
X-CRM114-Status: GOOD (  12.03  )
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
