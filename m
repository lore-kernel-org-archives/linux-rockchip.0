Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B354CC4453D
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 17:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1iajEI3WUvNRXvnlW7UPbW5Zn7arLgJhYYRl3GB/Xc=; b=1YbLBxiESz7ZTs
	dwNgjV4KP93Zk37t3RefLyIJVvbjU0P4iU9GvjaSsKajlRdzAo0m9SWS3YRjCapj51ps/Ry+p7kfA
	dUIkb7X6IvleIwN/rr8bNYBnhs3vQ1dk4fW34GdwMUkDLHDiLR2OjrXSg+sQng1i1foGkMm1U5Wn2
	h7C9kQCNFQIP5PUIbdyJ+4TbLnZiZ/UFJYLNnR5wjHuluBUsfm2umnAfwn9FWViLMaBQjRB3jw5e9
	WBwZnmTwEPrYF/bBsomfa0dcC4tyqKfaFtNwsIFiWiJNUSldZcYFHCIH2wVJand4J9qsqAsQMHfWL
	DoWAl/5rMw2hrLvTRybw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaJD-0000000CPIQ-0iwQ;
	Wed, 22 Jul 2026 17:00:39 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaJ9-0000000CPGt-1oNY
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 17:00:36 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-495b250b01cso6514460b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 10:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784739634; x=1785344434; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wxlSATJdp1icBuAyE2MHftLf5IzsPs8NNyx38DkjeJg=;
        b=BQ+mRjkTCYjTUMb70wNMz5T2vYI5Gxps6vDiWpiLYw+qp2cD/wfdtTol0s/uQQM3OU
         unn153f0f38+IIjcHLGHMoeYhu2JnbcaKmVM1Ro88zbjpfZ6Ta2t4WmPOxvHWpnVw2Ze
         qRr/UFykNM4j2JGcG79crg0ySfmLEuOjaktGkn4b/EjK1VvZn/MXPT7lonQoVz0cgbTh
         752pDFjzuQwIUons9TWPwPfC9SWtgKAxZX7qfzPrUxE9weqzrmRNdBCYmgzxCcMOPdZv
         IUbghUlAJ65W3OP3hD2vbKLMeHstEnfLABeuM6EJQJ8fILd37/pnNL+RvK+0kcMcIDC8
         ZmUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784739634; x=1785344434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=wxlSATJdp1icBuAyE2MHftLf5IzsPs8NNyx38DkjeJg=;
        b=Whck3WUIxrMUPNGkFray5QXkSKdysYUPn7wBGulDk5VT8AqaR6A96ucl0VLlFaJOuL
         rNd4lL3B8bL41CFd2cXfMgsPchchq/Is80OuX47mI7I1XbUuCG3kSlTgbefomc0gEn+l
         Q+JUEPQHM+IjiCT5ePFaH2UC+67nwbLPh3KJXWfmo+VoDB0EZfpdfYbYZi4yTyuBAO5w
         jU+QhAD+4lPTIahUf7bnPU5gOYEqo4ek+zlBsWrKBL4vmCw/sVLfqeRQU66ijJzeTeMj
         CniFLWzA8VUKtqAa+R6siYTb1ueE0tgYZass94avxtl9THNOj9RmWABNDM9ap7XFC3jN
         3RHA==
X-Gm-Message-State: AOJu0YxGEngY9apzGqE6Lv/coQ1YzThstPypPfXLPfwUS2z9SFxzmXqr
	UOlmZ7es5hQgtfFC+IShci9awK9gyfjkWqumOuXSzIfBvGxW7FY13f/RKd3GRw==
X-Gm-Gg: AR+sD13aJopj9s6zVtfJawnU/nbrLOym6z+0VVIHC/yHmFh3vIlot9zQzhDwYuteTO/
	g9hSFKa6iS3wrUCDbU57Sp2+uK1tBwV4xqLrkuXt3fKV+UYZUEfzrrsLRhTwTFwC1DjtXkW4j38
	b9SJPdlQKhY6tTkinfqym1h8+2ow++0IOH4hUs+cfVyHLwALFUO1nztwjPcEc+GEujbH2yZ9WU0
	M4DYCpLxucxbmCjJ50eY52aO0MMnEr2sasJeaM5W8tFP7ZD5vbLTACIosDAG2ck7ilsuKn4grRg
	1cHKs8tCzKlwkl1v0NP3HsLalJhoWt9O2w8A91mp42P14+5N2kfRbtG0zQIbhrRTWzYn25Dp3gc
	T8c5XYWvGWJxkiznj0T9E6Qh1wk2yWt7Fjye5BoFl3E23843zNzuVmBGNVFySLN5OlcxN3Q178j
	bA
X-Received: by 2002:a05:6808:d46:b0:4a4:adaf:5570 with SMTP id 5614622812f47-4a4d01f0c99mr13263406b6e.4.1784739634199;
        Wed, 22 Jul 2026 10:00:34 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ab0e9af0afsm1399619b6e.12.2026.07.22.10.00.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 10:00:33 -0700 (PDT)
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
Subject: [PATCH V9 1/4] dt-bindings: power: supply: sgm41542: document sgm41542
Date: Wed, 22 Jul 2026 11:58:03 -0500
Message-ID: <20260722165806.161020-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260722165806.161020-1-macroalpha82@gmail.com>
References: <20260722165806.161020-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_100035_493615_FA969E86 
X-CRM114-Status: GOOD (  12.02  )
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
