Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CEBCC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 14:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/Z5wbETMDMH5wdqRqBxNpxFreHUnAAL3OWkaD43+vk=; b=jUjiVBzd3MtqcF
	4lI9ovvrUwOAyegVrqgG9w6fjlf6AwRjxH7QPdoClMSiP5cfeVdC7B3KA0bETxqXwLwqfImxksM7v
	+5QLj+kb8n8f0+bivUVaWIoxB5Frz/mXbHrMZxdGCxKBYGiz4TvuEdFKYBl2EGMwUuCLQ7o833KET
	QyqGM4IeHeVOf93aXleD5Q+DIALcStfH/2PWW3NYFKmGFbUiWDG3uLrC1ucUA+L7w+010yHjbS7WJ
	8QTXFXQcpwQWR/RiAAVtFr2wo9X94+W/kGJ4PNSCKsVqC33RQdOLH8I+ZyJYbx+ScnrRYxfe77Pkv
	cigm/apZZU/oJaY12Vlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8N0O-00DETA-EG; Thu, 22 Dec 2022 14:57:08 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MZ6-00CxyN-Ef; Thu, 22 Dec 2022 14:28:58 +0000
Received: by mail-ej1-x62f.google.com with SMTP id ud5so5311811ejc.4;
        Thu, 22 Dec 2022 06:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IiR9nJxZj0ahc9gYg7Q4kSlDraiLVtIVMlRjW0NAGg4=;
        b=kVO3wEjlUNasPOkQM+Z8XVHJ1D4eroDcNYLwjW2XFT1X4tvZMLhYsMzwjZLJn31O39
         yjmuS0HuXq1lSB/v+qiLEd/JfdlhFFF8ZoQZQOBhosIrGG7z23XCxzQvXdMMDv4liNZw
         CXZVDY5Fjvl3VTQ47YozPl/DmcpQBwyFeaKUtTFc7iNlEb2i2fR1IqIi04TSpIC2ixLn
         ThK0qRxwTTZQS2Vn/11sFIAtVgqcN1YwPPxG6L1IP1MG7340wDX88+f7bnFFdDiViIBQ
         1PSn4OcmRKU4pr4HNe2SPzP1VeNxXmPRiRltzh1VP1EPFGrGxrpjeAXekFVl0dvLvzKG
         vTxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IiR9nJxZj0ahc9gYg7Q4kSlDraiLVtIVMlRjW0NAGg4=;
        b=b6uDv5okYZ2Im29JkyLcl0PGpp51UCka/NTKuw7Zvgvnm9z7xUbqPjVFlqIrcLnT24
         f5eNjk/hI8+M9EuZi7clNhpT6tuGtpmXCGEKuTcBz7vcnMXmiaa6IyJ8s4ucoA5Xz8UU
         pDzanH3FO6qU/DUGBK8hfg5Efars26nl8eq/zezs4s6DVU7BsdOen+EXI8gbYYyfJacT
         9lQP+lvxQaIarq1NGZPZkWUmpgV9Y8A28ROrookjaxPgQxPjCNhFyeWhg3yQqK4i288q
         xtoqzshIM77+qzryltl7qwUfEi66fM8HtvvjA9D0KSEHnERIt+xmDbeJCTDlaOvbuPvF
         ZTog==
X-Gm-Message-State: AFqh2krXBYPdKmtg6eZe7Kixg4WfkMYghALBDBqam07xeeqg7FSKt0qS
	wqsze/5J0s7YwdNfyaAcPx0=
X-Google-Smtp-Source: AMrXdXve0iWMaQ1w3rvzZqthvoHgo3T68e7FSilnYAFSXme6eZvnTnnigr0DKcN5f6y2xvY0Z41wqA==
X-Received: by 2002:a17:906:5956:b0:81b:f617:eb99 with SMTP id g22-20020a170906595600b0081bf617eb99mr4531596ejr.67.1671719334856;
        Thu, 22 Dec 2022 06:28:54 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id vf20-20020a170907239400b0081586470b7csm298343ejb.173.2022.12.22.06.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:28:54 -0800 (PST)
Message-ID: <0336a3c4-4a43-c983-11d7-e2ae16187fc8@gmail.com>
Date: Thu, 22 Dec 2022 15:28:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 08/17] dt-bindings: usb: convert fcs,fusb302.txt to yaml
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_062856_581267_DE2980C7 
X-CRM114-Status: GOOD (  12.65  )
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

Convert fcs,fusb302.txt to yaml.

Changed:
  Add vbus-supply property

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V6:
  Add unevaluatedProperties
  Drop unused labels
---
 .../devicetree/bindings/usb/fcs,fusb302.txt   | 34 ----------
 .../devicetree/bindings/usb/fcs,fusb302.yaml  | 67 +++++++++++++++++++
 2 files changed, 67 insertions(+), 34 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/fcs,fusb302.txt
 create mode 100644 Documentation/devicetree/bindings/usb/fcs,fusb302.yaml

diff --git a/Documentation/devicetree/bindings/usb/fcs,fusb302.txt b/Documentation/devicetree/bindings/usb/fcs,fusb302.txt
deleted file mode 100644
index 60e465429..000000000
--- a/Documentation/devicetree/bindings/usb/fcs,fusb302.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-Fairchild FUSB302 Type-C Port controllers
-
-Required properties :
-- compatible             : "fcs,fusb302"
-- reg                    : I2C slave address
-- interrupts             : Interrupt specifier
-
-Required sub-node:
-- connector : The "usb-c-connector" attached to the FUSB302 IC. The bindings
-  of the connector node are specified in:
-
-	Documentation/devicetree/bindings/connector/usb-connector.yaml
-
-
-Example:
-
-fusb302: typec-portc@54 {
-	compatible = "fcs,fusb302";
-	reg = <0x54>;
-	interrupt-parent = <&nmi_intc>;
-	interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
-
-	usb_con: connector {
-		compatible = "usb-c-connector";
-		label = "USB-C";
-		power-role = "dual";
-		try-power-role = "sink";
-		source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
-		sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
-			     PDO_VAR(3000, 12000, 3000)
-			     PDO_PPS_APDO(3000, 11000, 3000)>;
-		op-sink-microwatt = <10000000>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/usb/fcs,fusb302.yaml b/Documentation/devicetree/bindings/usb/fcs,fusb302.yaml
new file mode 100644
index 000000000..b396ea0ab
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/fcs,fusb302.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/fcs,fusb302.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Fairchild FUSB302 Type-C Port controller
+
+maintainers:
+  - Rob Herring <robh@kernel.org>
+
+properties:
+  compatible:
+    const: fcs,fusb302
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  vbus-supply:
+    description: VBUS power supply
+
+  connector:
+    type: object
+    $ref: /schemas/connector/usb-connector.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - vbus-supply
+  - connector
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/usb/pd.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      typec-portc@54 {
+        compatible = "fcs,fusb302";
+        reg = <0x54>;
+        interrupt-parent = <&nmi_intc>;
+        interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+        vbus-supply = <&vbus_typec>;
+
+        connector {
+          compatible = "usb-c-connector";
+          label = "USB-C";
+          power-role = "dual";
+          try-power-role = "sink";
+          source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+          sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+                       PDO_VAR(3000, 12000, 3000)
+                       PDO_PPS_APDO(3000, 11000, 3000)>;
+          op-sink-microwatt = <10000000>;
+        };
+      };
+    };
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
