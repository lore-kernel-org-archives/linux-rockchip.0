Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24772C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 22:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HOKOih1Hc+wWo3KUZvNDaESt1+GKYT4c8xQjA1rev2o=; b=UrkgPrwNMg4CAb
	K2828/fkEJ2xNyA5iVsKtEupZPxI4UEcfSc5ZUuwnnrma9QkLxk3e/A9OfdAnX9oVIxchGj7+VvR3
	RfggQLiPP8vDU0wbVGH+JSTNhUSMPXLhZhMs3w4WwRTeYEnfXH1ofL7Ss9QmpcdEXyYIjihxA4mQq
	cT1SWXGZCpnpGkdHZdMboJoAZJaFCHwPVLid/lWlofL61iLjgPBdeAcoWdNpK9GgGqiC1RjCu0JvL
	ILJ+AHHWMsdPoRJSl9M/MPQ/PZgZy42WUTRZgyQpWka4GP9PZ18cjEnAlQnQ4Pf/2AmuL13fMdOxp
	XU8yXtxu9uzFNBuhAGHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onpMK-00BBpJ-GT; Wed, 26 Oct 2022 22:58:52 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onpLw-00BBkt-8e; Wed, 26 Oct 2022 22:58:29 +0000
Received: by mail-ej1-x630.google.com with SMTP id bj12so25561763ejb.13;
        Wed, 26 Oct 2022 15:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tKXO41Y/SWSFFaAWCsB9RGz7D8TegGmZORhd3TxzdEs=;
        b=YezYmqKzkTpedLipitniPXjPQD7/CZzP7/gotJ69PCCHoOoAD13kadMq0mnOJ+xEco
         ZU//Bo5Lo6aSvY1FAi0czPITrw36AOUxYu9oUk13o/yoihxDLqMt7AOfj/Zklbx8AoDt
         AE4yQeqonK+bQy3wh2K28NULJ6FWGc5YRhJ1mcFVql3UWCB6P/7Srb2MUqaxI4LXOhbB
         2DYZCsGNeiIhp7rUKatVcRiS0fyGOo5lRYm5NVmoEaR7YM/9riMVLSCTXftOLAAalUKb
         cA5+jF9s+TvMMTFrXwlzx3qTr0Q4oehyjRHjhr8SQbzkEONyn92fzqURHh0jXvVTPQ+9
         ki6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tKXO41Y/SWSFFaAWCsB9RGz7D8TegGmZORhd3TxzdEs=;
        b=v42P198CS5aCX5MrQiqV5IoCskFG2Wbu9/VRJENiCluIJUuQmwTLUuyfs7IvOIHZTw
         f8DfwZC0NS5aLPfHqOkEt2exBd89dPaH/cD4SlT4T0ud53ODZaMZmPbLVdnlUlaObX7p
         JgsPQ+BzAR740bwsKp+Aa23Pkl8YfdAGzgFvR2LbpNkeN/TAanS/3est0kAGO5bHZNbW
         F3vz+RqCSzzCTpid+12R6EmHKyXv8Iq88VrfPrvUPe+WMG4Z2QobkFfOFS5vQzI6e6VV
         1ePkDFwbai6brBc/pyZxRBa03u2Dnirw2MODw4n0boc9U2VAfxxa6c/4FUd0MWsfiSIw
         izAw==
X-Gm-Message-State: ACrzQf0iehRwIYWZq6XXcqoam390rPm4kmOELjW2Z8kpQkhkaI9XZ6jE
	RZaOgeZOExQC4jgpruv0ZSU=
X-Google-Smtp-Source: AMsMyM6mQ/QRK3Y9ZsO5bVp1hlFiabnBy4SeH8oU4i4Vf7HLzAV3HiZy991kqc6SMFO9ebEhHJ9j2w==
X-Received: by 2002:a17:906:5a5f:b0:79f:9f1f:2fef with SMTP id my31-20020a1709065a5f00b0079f9f1f2fefmr24085589ejc.396.1666825104358;
        Wed, 26 Oct 2022 15:58:24 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id o19-20020a170906769300b0078250005a79sm3554252ejm.163.2022.10.26.15.58.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 15:58:23 -0700 (PDT)
Message-ID: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
Date: Thu, 27 Oct 2022 00:58:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/3] dt-bindings: rtc: convert haoyu,hym8563.txt to yaml
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_155828_355411_98CAEA18 
X-CRM114-Status: GOOD (  13.98  )
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

Convert haoyu,hym8563.txt to yaml.

Changed:
  Add clock-frequency property

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/rtc/haoyu,hym8563.txt | 30 ----------
 .../bindings/rtc/haoyu,hym8563.yaml           | 60 +++++++++++++++++++
 2 files changed, 60 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml

diff --git a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt b/Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt
deleted file mode 100644
index a8934fe2a..000000000
--- a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Haoyu Microelectronics HYM8563 Real Time Clock
-
-The HYM8563 provides basic rtc and alarm functionality
-as well as a clock output of up to 32kHz.
-
-Required properties:
-- compatible: should be: "haoyu,hym8563"
-- reg: i2c address
-- #clock-cells: the value should be 0
-
-Optional properties:
-- clock-output-names: From common clock binding
-- interrupts: rtc alarm/event interrupt
-
-Example:
-
-hym8563: hym8563@51 {
-	compatible = "haoyu,hym8563";
-	reg = <0x51>;
-
-	interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
-
-	#clock-cells = <0>;
-};
-
-device {
-...
-	clocks = <&hym8563>;
-...
-};
diff --git a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml b/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml
new file mode 100644
index 000000000..57729443f
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/haoyu,hym8563.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Haoyu Microelectronics HYM8563 Real Time Clock (RTC)
+
+description:
+  The HYM8563 provides basic RTC and alarm functionality
+  as well as a clock output of up to 32kHz.
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+allOf:
+  - $ref: "rtc.yaml#"
+
+properties:
+  compatible:
+    const: haoyu,hym8563
+
+  reg:
+    const: 0x51
+
+  interrupts:
+    maxItems: 1
+
+  clock-frequency:
+    enum: [1, 32, 1024, 32768]
+
+  clock-output-names:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        hym8563: rtc@51 {
+            compatible = "haoyu,hym8563";
+            reg = <0x51>;
+            interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
+            clock-frequency = <32768>;
+            clock-output-names = "xin32k";
+            #clock-cells = <0>;
+        };
+    };
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
