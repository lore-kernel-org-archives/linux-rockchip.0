Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38352C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 11:18:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 054926147F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 11:18:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 054926147F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W5uB52XTadAvoIeLyNkLy7sp/WfPU5vEwQ7EtDxpT4Y=; b=gf85iG1FacDOSj
	TZZQrVu1/qJN//b4zQYpgPTaNei4Z9445oJ4JIaUiGqnq9Y6yopuO+ukEQFnESu6TfV6JrUqV3/xB
	Dfo2qDYwVdqoOHmNMvAA+6Zi4uuDMV4C+dcEl3xbLcxB/HViXZ6yZlE0g2CQZlzN9Q7v7TVmrFK4U
	Spm8O68QIJgM5BBLZpvlLmShFvaW+1qQK2UsiYTzUNlpv+zLy0if6LFKMhgrwesQMdNPpxj9yheyQ
	NIRHcllARn1ncT3rUCGm0IH0UxSNyNxFpHOfuGNVInbD38GuAXWs/4qn5Exh8u8Wfn7PeH//QN76b
	1cvNDONG95qy/+GY4k5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwjqs-001HB7-CY; Fri, 25 Jun 2021 11:18:26 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwjqN-001GzM-PT; Fri, 25 Jun 2021 11:17:59 +0000
Received: by mail-ed1-x529.google.com with SMTP id r7so12835569edv.12;
 Fri, 25 Jun 2021 04:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=glIlqsLlW3+eNH1Rsuvb5unmlWNQ3qBPIEFUnBlYsHY=;
 b=r2mUcRem3uXjpMSJNehycuAS8CXGVM0iz7Dh3Z83gwY7yaITh8y/aD+kK9tvLdKh3B
 p/8Gw3tMv7+xq4RYxgGL8hXceUVQv26rlNmb1GeJ9kKPdbpon9NU6Dvk0VEndjUEMtNM
 YA+utsz2ua9cey+4Z1cz1zSe/FRJrFP/DeHwFgrwfpsXG5olMbCBunvsnT++U+K8y9DR
 0nvi+GAczktqbOIz8hDYv162aCyf296LDzhYkK1RyVkD01zzWob+7Agjx/CAOGmarOqE
 A/3unroMM5TKudrHeTzgO0vW1zOxvKuWsiLLJ8t8zWZd93YlWLgJ+96HVtvPOAtXzydu
 f8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=glIlqsLlW3+eNH1Rsuvb5unmlWNQ3qBPIEFUnBlYsHY=;
 b=hesgorPhEqztlXMXsTHFo0g8hCFAKob45ICWBI7+F4XBI/LYCV4Hc9WcLBSPs4tQaz
 HirwHTmtPT1iLDSXoSnG12/EuCbf1l5gkp3Dzbb4IcJefR34RTQ9ZnMEpXbPFBGW6nR7
 GW0eeIkawVBa9XaHcN/QlrZfPkBSlJge6bB9ef4MMeIetGRgJYoG2c+QvO6oHK/7JDvs
 L0awtrW0dtmDa8A84t8QHAfxMAk7sKhuDyyfxzitm8s1UUcZQE23fy5DoevyDUJA9BDw
 LkrytgX7W1SoZN317LF/tRVJtWt37UKOTjyBthHYbQes6AwDvnbbYOui0gqtusORFamv
 M/Yg==
X-Gm-Message-State: AOAM532rP9xb0AgIo6dZfZzINVdfWLqNBV/Ew5VPbX46qElGRIUkujCm
 y2zzZ/TLN+TYLezT4JNlp0jTVgKat2oyAw==
X-Google-Smtp-Source: ABdhPJyuc38n3N69anEISH7eeH5MvevVwQIay3cloe5e2FxCNCQwEa7EWHhdKy7dLSYVwfBwLk5MfQ==
X-Received: by 2002:a05:6402:4cb:: with SMTP id
 n11mr13662400edw.292.1624619873275; 
 Fri, 25 Jun 2021 04:17:53 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b10sm3731238edx.4.2021.06.25.04.17.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Jun 2021 04:17:52 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: power: convert rockchip-io-domain.txt to
 YAML
Date: Fri, 25 Jun 2021 13:17:43 +0200
Message-Id: <20210625111746.6269-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_041755_921554_7B0C7AFF 
X-CRM114-Status: GOOD (  26.89  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Current dts files with 'io-domains' nodes are manually verified.
In order to automate this process rockchip-io-domain.txt has to be
converted to YAML.

Changed:
  Add supply properties for:
    rockchip,rk3328-io-voltage-domain
    rockchip,rv1108-io-voltage-domain
    rockchip,rv1108-pmu-io-voltage-domain

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  move grf part in separate patch
  modify pin description

---

note for rob+dt:
unevaluatedProperties and
allOf:
  -if:
doesn't seem to work.
Changed to
allOf:
  - $ref:
---
 .../bindings/power/rockchip-io-domain.txt          | 135 ---------
 .../bindings/power/rockchip-io-domain.yaml         | 330 +++++++++++++++++++++
 2 files changed, 330 insertions(+), 135 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/rockchip-io-domain.txt
 create mode 100644 Documentation/devicetree/bindings/power/rockchip-io-domain.yaml

diff --git a/Documentation/devicetree/bindings/power/rockchip-io-domain.txt b/Documentation/devicetree/bindings/power/rockchip-io-domain.txt
deleted file mode 100644
index e66fd4eab..000000000
--- a/Documentation/devicetree/bindings/power/rockchip-io-domain.txt
+++ /dev/null
@@ -1,135 +0,0 @@
-Rockchip SRAM for IO Voltage Domains:
--------------------------------------
-
-IO domain voltages on some Rockchip SoCs are variable but need to be
-kept in sync between the regulators and the SoC using a special
-register.
-
-A specific example using rk3288:
-- If the regulator hooked up to a pin like SDMMC0_VDD is 3.3V then
-  bit 7 of GRF_IO_VSEL needs to be 0.  If the regulator hooked up to
-  that same pin is 1.8V then bit 7 of GRF_IO_VSEL needs to be 1.
-
-Said another way, this driver simply handles keeping bits in the SoC's
-general register file (GRF) in sync with the actual value of a voltage
-hooked up to the pins.
-
-Note that this driver specifically doesn't include:
-- any logic for deciding what voltage we should set regulators to
-- any logic for deciding whether regulators (or internal SoC blocks)
-  should have power or not have power
-
-If there were some other software that had the smarts of making
-decisions about regulators, it would work in conjunction with this
-driver.  When that other software adjusted a regulator's voltage then
-this driver would handle telling the SoC about it.  A good example is
-vqmmc for SD.  In that case the dw_mmc driver simply is told about a
-regulator.  It changes the regulator between 3.3V and 1.8V at the
-right time.  This driver notices the change and makes sure that the
-SoC is on the same page.
-
-
-Required properties:
-- compatible: should be one of:
-  - "rockchip,px30-io-voltage-domain" for px30
-  - "rockchip,px30-pmu-io-voltage-domain" for px30 pmu-domains
-  - "rockchip,rk3188-io-voltage-domain" for rk3188
-  - "rockchip,rk3228-io-voltage-domain" for rk3228
-  - "rockchip,rk3288-io-voltage-domain" for rk3288
-  - "rockchip,rk3328-io-voltage-domain" for rk3328
-  - "rockchip,rk3368-io-voltage-domain" for rk3368
-  - "rockchip,rk3368-pmu-io-voltage-domain" for rk3368 pmu-domains
-  - "rockchip,rk3399-io-voltage-domain" for rk3399
-  - "rockchip,rk3399-pmu-io-voltage-domain" for rk3399 pmu-domains
-  - "rockchip,rv1108-io-voltage-domain" for rv1108
-  - "rockchip,rv1108-pmu-io-voltage-domain" for rv1108 pmu-domains
-
-Deprecated properties:
-- rockchip,grf: phandle to the syscon managing the "general register files"
-    Systems should move the io-domains to a sub-node of the grf simple-mfd.
-
-You specify supplies using the standard regulator bindings by including
-a phandle the relevant regulator.  All specified supplies must be able
-to report their voltage.  The IO Voltage Domain for any non-specified
-supplies will be not be touched.
-
-Possible supplies for PX30:
-- vccio6-supply: The supply connected to VCCIO6.
-- vccio1-supply: The supply connected to VCCIO1.
-- vccio2-supply: The supply connected to VCCIO2.
-- vccio3-supply: The supply connected to VCCIO3.
-- vccio4-supply: The supply connected to VCCIO4.
-- vccio5-supply: The supply connected to VCCIO5.
-- vccio-oscgpi-supply: The supply connected to VCCIO_OSCGPI.
-
-Possible supplies for PX30 pmu-domains:
-- pmuio1-supply: The supply connected to PMUIO1.
-- pmuio2-supply: The supply connected to PMUIO2.
-
-Possible supplies for rk3188:
-- ap0-supply:    The supply connected to AP0_VCC.
-- ap1-supply:    The supply connected to AP1_VCC.
-- cif-supply:    The supply connected to CIF_VCC.
-- flash-supply:  The supply connected to FLASH_VCC.
-- lcdc0-supply:  The supply connected to LCD0_VCC.
-- lcdc1-supply:  The supply connected to LCD1_VCC.
-- vccio0-supply: The supply connected to VCCIO0.
-- vccio1-supply: The supply connected to VCCIO1.
-                 Sometimes also labeled VCCIO1 and VCCIO2.
-
-Possible supplies for rk3228:
-- vccio1-supply: The supply connected to VCCIO1.
-- vccio2-supply: The supply connected to VCCIO2.
-- vccio3-supply: The supply connected to VCCIO3.
-- vccio4-supply: The supply connected to VCCIO4.
-
-Possible supplies for rk3288:
-- audio-supply:  The supply connected to APIO4_VDD.
-- bb-supply:     The supply connected to APIO5_VDD.
-- dvp-supply:    The supply connected to DVPIO_VDD.
-- flash0-supply: The supply connected to FLASH0_VDD.  Typically for eMMC
-- flash1-supply: The supply connected to FLASH1_VDD.  Also known as SDIO1.
-- gpio30-supply: The supply connected to APIO1_VDD.
-- gpio1830       The supply connected to APIO2_VDD.
-- lcdc-supply:   The supply connected to LCDC_VDD.
-- sdcard-supply: The supply connected to SDMMC0_VDD.
-- wifi-supply:   The supply connected to APIO3_VDD.  Also known as SDIO0.
-
-Possible supplies for rk3368:
-- audio-supply:  The supply connected to APIO3_VDD.
-- dvp-supply:    The supply connected to DVPIO_VDD.
-- flash0-supply: The supply connected to FLASH0_VDD.  Typically for eMMC
-- gpio30-supply: The supply connected to APIO1_VDD.
-- gpio1830       The supply connected to APIO4_VDD.
-- sdcard-supply: The supply connected to SDMMC0_VDD.
-- wifi-supply:   The supply connected to APIO2_VDD.  Also known as SDIO0.
-
-Possible supplies for rk3368 pmu-domains:
-- pmu-supply:    The supply connected to PMUIO_VDD.
-- vop-supply:    The supply connected to LCDC_VDD.
-
-Possible supplies for rk3399:
-- bt656-supply:  The supply connected to APIO2_VDD.
-- audio-supply:  The supply connected to APIO5_VDD.
-- sdmmc-supply:  The supply connected to SDMMC0_VDD.
-- gpio1830       The supply connected to APIO4_VDD.
-
-Possible supplies for rk3399 pmu-domains:
-- pmu1830-supply:The supply connected to PMUIO2_VDD.
-
-Example:
-
-	io-domains {
-		compatible = "rockchip,rk3288-io-voltage-domain";
-		rockchip,grf = <&grf>;
-
-		audio-supply = <&vcc18_codec>;
-		bb-supply = <&vcc33_io>;
-		dvp-supply = <&vcc_18>;
-		flash0-supply = <&vcc18_flashio>;
-		gpio1830-supply = <&vcc33_io>;
-		gpio30-supply = <&vcc33_pmuio>;
-		lcdc-supply = <&vcc33_lcd>;
-		sdcard-supply = <&vccio_sd>;
-		wifi-supply = <&vcc18_wl>;
-	};
diff --git a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
new file mode 100644
index 000000000..121bec56b
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
@@ -0,0 +1,330 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/rockchip-io-domain.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SRAM for IO Voltage Domains
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  IO domain voltages on some Rockchip SoCs are variable but need to be
+  kept in sync between the regulators and the SoC using a special
+  register.
+
+  A specific example using rk3288
+    If the regulator hooked up to a pin like SDMMC0_VDD is 3.3V then
+    bit 7 of GRF_IO_VSEL needs to be 0. If the regulator hooked up to
+    that same pin is 1.8V then bit 7 of GRF_IO_VSEL needs to be 1.
+
+  Said another way, this driver simply handles keeping bits in the SoCs
+  General Register File (GRF) in sync with the actual value of a voltage
+  hooked up to the pins.
+
+  Note that this driver specifically does not include
+    any logic for deciding what voltage we should set regulators to
+    any logic for deciding whether regulators (or internal SoC blocks)
+    should have power or not have power
+
+  If there were some other software that had the smarts of making
+  decisions about regulators, it would work in conjunction with this
+  driver. When that other software adjusted a regulators voltage then
+  this driver would handle telling the SoC about it. A good example is
+  vqmmc for SD. In that case the dw_mmc driver simply is told about a
+  regulator. It changes the regulator between 3.3V and 1.8V at the
+  right time. This driver notices the change and makes sure that the
+  SoC is on the same page.
+
+  You specify supplies using the standard regulator bindings by including
+  a phandle the relevant regulator. All specified supplies must be able
+  to report their voltage. The IO Voltage Domain for any non-specified
+  supplies will be not be touched.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-io-voltage-domain
+      - rockchip,px30-pmu-io-voltage-domain
+      - rockchip,rk3188-io-voltage-domain
+      - rockchip,rk3228-io-voltage-domain
+      - rockchip,rk3288-io-voltage-domain
+      - rockchip,rk3328-io-voltage-domain
+      - rockchip,rk3368-io-voltage-domain
+      - rockchip,rk3368-pmu-io-voltage-domain
+      - rockchip,rk3399-io-voltage-domain
+      - rockchip,rk3399-pmu-io-voltage-domain
+      - rockchip,rv1108-io-voltage-domain
+      - rockchip,rv1108-pmu-io-voltage-domain
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+allOf:
+  - $ref: "#/$defs/px30"
+  - $ref: "#/$defs/px30-pmu"
+  - $ref: "#/$defs/rk3188"
+  - $ref: "#/$defs/rk3228"
+  - $ref: "#/$defs/rk3288"
+  - $ref: "#/$defs/rk3328"
+  - $ref: "#/$defs/rk3368"
+  - $ref: "#/$defs/rk3368-pmu"
+  - $ref: "#/$defs/rk3399"
+  - $ref: "#/$defs/rk3399-pmu"
+  - $ref: "#/$defs/rv1108"
+  - $ref: "#/$defs/rv1108-pmu"
+
+$defs:
+  px30:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,px30-io-voltage-domain
+
+    then:
+      properties:
+        vccio1-supply:
+          description: The supply connected to VCCIO1.
+        vccio2-supply:
+          description: The supply connected to VCCIO2.
+        vccio3-supply:
+          description: The supply connected to VCCIO3.
+        vccio4-supply:
+          description: The supply connected to VCCIO4.
+        vccio5-supply:
+          description: The supply connected to VCCIO5.
+        vccio6-supply:
+          description: The supply connected to VCCIO6.
+        vccio-oscgpi-supply:
+          description: The supply connected to VCCIO_OSCGPI.
+
+  px30-pmu:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,px30-pmu-io-voltage-domain
+
+    then:
+      properties:
+        pmuio1-supply:
+          description: The supply connected to PMUIO1.
+        pmuio2-supply:
+          description: The supply connected to PMUIO2.
+
+  rk3188:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3188-io-voltage-domain
+
+    then:
+      properties:
+        ap0-supply:
+          description: The supply connected to AP0_VCC.
+        ap1-supply:
+          description: The supply connected to AP1_VCC.
+        cif-supply:
+          description: The supply connected to CIF_VCC.
+        flash-supply:
+          description: The supply connected to FLASH_VCC.
+        lcdc0-supply:
+          description: The supply connected to LCD0_VCC.
+        lcdc1-supply:
+          description: The supply connected to LCD1_VCC.
+        vccio0-supply:
+          description: The supply connected to VCCIO0.
+        vccio1-supply:
+          description: The supply connected to VCCIO1. Also labeled as VCCIO2.
+
+  rk3228:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3228-io-voltage-domain
+
+    then:
+      properties:
+        vccio1-supply:
+          description: The supply connected to VCCIO1.
+        vccio2-supply:
+          description: The supply connected to VCCIO2.
+        vccio3-supply:
+          description: The supply connected to VCCIO3.
+        vccio4-supply:
+          description: The supply connected to VCCIO4.
+
+  rk3288:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3288-io-voltage-domain
+
+    then:
+      properties:
+        audio-supply:
+          description: The supply connected to APIO4_VDD.
+        bb-supply:
+          description: The supply connected to APIO5_VDD.
+        dvp-supply:
+          description: The supply connected to DVPIO_VDD.
+        flash0-supply:
+          description: The supply connected to FLASH0_VDD. Typically for eMMC.
+        flash1-supply:
+          description: The supply connected to FLASH1_VDD. Also known as SDIO1.
+        gpio30-supply:
+          description: The supply connected to APIO1_VDD.
+        gpio1830-supply:
+          description: The supply connected to APIO2_VDD.
+        lcdc-supply:
+          description: The supply connected to LCDC_VDD.
+        sdcard-supply:
+          description: The supply connected to SDMMC0_VDD.
+        wifi-supply:
+          description: The supply connected to APIO3_VDD. Also known as SDIO0.
+
+  rk3328:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3328-io-voltage-domain
+
+    then:
+      properties:
+        vccio1-supply:
+          description: The supply connected to VCCIO1.
+        vccio2-supply:
+          description: The supply connected to VCCIO2.
+        vccio3-supply:
+          description: The supply connected to VCCIO3.
+        vccio4-supply:
+          description: The supply connected to VCCIO4.
+        vccio5-supply:
+          description: The supply connected to VCCIO5.
+        vccio6-supply:
+          description: The supply connected to VCCIO6.
+        pmuio-supply:
+          description: The supply connected to VCCIO_PMU.
+
+  rk3368:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3368-io-voltage-domain
+
+    then:
+      properties:
+        audio-supply:
+          description: The supply connected to APIO3_VDD.
+        dvp-supply:
+          description: The supply connected to DVPIO_VDD.
+        flash0-supply:
+          description: The supply connected to FLASH0_VDD. Typically for eMMC.
+        gpio30-supply:
+          description: The supply connected to APIO1_VDD.
+        gpio1830-supply:
+          description: The supply connected to APIO4_VDD.
+        sdcard-supply:
+          description: The supply connected to SDMMC0_VDD.
+        wifi-supply:
+          description: The supply connected to APIO2_VDD. Also known as SDIO0.
+
+  rk3368-pmu:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3368-pmu-io-voltage-domain
+
+    then:
+      properties:
+        pmu-supply:
+          description: The supply connected to PMUIO_VDD.
+        vop-supply:
+          description: The supply connected to LCDC_VDD.
+
+  rk3399:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3399-io-voltage-domain
+
+    then:
+      properties:
+        audio-supply:
+          description: The supply connected to APIO5_VDD.
+        bt656-supply:
+          description: The supply connected to APIO2_VDD.
+        gpio1830-supply:
+          description: The supply connected to APIO4_VDD.
+        sdmmc-supply:
+          description: The supply connected to SDMMC0_VDD.
+
+  rk3399-pmu:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3399-pmu-io-voltage-domain
+
+    then:
+      properties:
+        pmu1830-supply:
+          description: The supply connected to PMUIO2_VDD.
+
+  rv1108:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rv1108-io-voltage-domain
+
+    then:
+      properties:
+        vccio1-supply:
+          description: The supply connected to APIO1_VDD.
+        vccio2-supply:
+          description: The supply connected to APIO2_VDD.
+        vccio3-supply:
+          description: The supply connected to APIO3_VDD.
+        vccio5-supply:
+          description: The supply connected to APIO5_VDD.
+        vccio6-supply:
+          description: The supply connected to APIO6_VDD.
+
+  rv1108-pmu:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rv1108-pmu-io-voltage-domain
+
+    then:
+      properties:
+        pmu-supply:
+          description: The supply connected to PMUIO_VDD.
+
+examples:
+  - |
+    io-domains {
+      compatible = "rockchip,rk3288-io-voltage-domain";
+      audio-supply = <&vcc18_codec>;
+      bb-supply = <&vcc33_io>;
+      dvp-supply = <&vcc_18>;
+      flash0-supply = <&vcc18_flashio>;
+      gpio1830-supply = <&vcc33_io>;
+      gpio30-supply = <&vcc33_pmuio>;
+      lcdc-supply = <&vcc33_lcd>;
+      sdcard-supply = <&vccio_sd>;
+      wifi-supply = <&vcc18_wl>;
+    };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
