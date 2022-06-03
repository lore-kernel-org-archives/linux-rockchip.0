Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62D44C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jun 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jRz+M22CGPXuapmQjFSO6ZfvAtIAS3KDOdWH/9Bf3Bw=; b=PWMYloH9A6RsVK
	9T7aYWzKYTeKR7Hq9Wgtb15RR6SYKolyXhnF/VcRza8iX8fBYX75uMjE1x/Twix5KYbbLzV0z/SO+
	kcReTTNljBPsElisq3atrahs6i/n9R0Z09AkDc1Wq/mF7BRwHgSSydYCpwqRAFhruWJ6/JJqJGSJ2
	qDZOIEVKvRaiduh+oU0xvr6nqQBxdX/+AZG/Z2Qd9zjjyyjzq1/tTzpicVo4VBbBYCMdzW/7Yf+qo
	mgsDZwPUB6twIYoUy7CawDD+VDdhl4cEUpJ1MdXdcLQ48qABO6Uasybr+km37VCbemkmW+d2ZBDVW
	k6czePwhPiKlsb11jf9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxAHT-008AvS-I2; Fri, 03 Jun 2022 16:36:11 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxAH9-008AqE-RW; Fri, 03 Jun 2022 16:35:53 +0000
Received: by mail-ed1-x52a.google.com with SMTP id h19so10912585edj.0;
        Fri, 03 Jun 2022 09:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nZjdpGq3ZYXbY5zAXh1coaTBlM0d2+j1gz8dKGWC3cg=;
        b=psSthRqtqvEn805uIy6r1574/iVQK9CygbJXrNGs8uODz/6BVapl/o1OACuAart9w4
         vU43KBFkwNhn+hXKbRvj8YyKbkpcJxj1EnpFGDjY0NhszBcuFXSvrJs0undf827HeaWC
         eMj8je1mza5j2mvBvXPCyuh3Bt5urniGB4qhs8d6u4IOTSRNTfDWQLCtNUqKZ+vKLOoI
         ZwEStRVRYbsaUKteX+H6sv5drtDzKozfq8L5DvIDaizp1MgExcQ54mOq+b1UILj0DNKh
         73zPnxsdEbPa0rDQx8LvsN3YK5pfQ7Xhf0EozaoMgWB5w+E1jgU8xdEu/6qNG3sf/jjK
         7S/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nZjdpGq3ZYXbY5zAXh1coaTBlM0d2+j1gz8dKGWC3cg=;
        b=T5SvKlh70zLqsaSLyizJa8n7Eh6vCMK6tLG9xBbQl5KJDPaTxjisQ7uoiAH65aYuYf
         e/iqkYqgdOdWOxLT9//Gs82j8YmnNmY9N5dyVjAZxITFN0CRzKaoTPkJdme9nNk7dHki
         045k8TeoeLnNeKVSJ2J682Wun0xFuw4VRy1Eu8se5tBDC752ogcX7SHAiBvka9goLiz1
         zyMZsQHYEN2brBaPHHsHHtgyLIvozLyf6ONp1krBfbjKO6Oo3IDqw3rmJlB3S3xogGFr
         tSm5Vnoj8ZZDYG5xO/OfCWyifzqY9OjUzFs1i3uE1naUsvF7i9xb5/ovBngJbxnpoaNa
         xAwA==
X-Gm-Message-State: AOAM532Kyqh8Y2Ocv/fLbPShMAUvcSv42xFbrwtfhWh/toSB27jhhRBO
	p3cYedSZtDTmkX4dxjFhYQE=
X-Google-Smtp-Source: ABdhPJy0HKMRGc+iDvuMVKrapUUyNranJyczR/nceafawj39x/qaFUJp/cGVGGZA1RG4uGtEYY2U/A==
X-Received: by 2002:a05:6402:1e88:b0:42f:b1ff:7858 with SMTP id f8-20020a0564021e8800b0042fb1ff7858mr1166862edf.407.1654274146550;
        Fri, 03 Jun 2022 09:35:46 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id n13-20020a056402060d00b0042dd630eb2csm4106189edv.96.2022.06.03.09.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 09:35:46 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: net: convert emac_rockchip.txt to YAML
Date: Fri,  3 Jun 2022 18:35:37 +0200
Message-Id: <20220603163539.537-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_093551_932376_C24B382C 
X-CRM114-Status: GOOD (  19.48  )
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

Convert emac_rockchip.txt to YAML.

Changes against original bindings:
  Add mdio sub node.
  Add extra clock for rk3036

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  use phy
  rename to rockchip,emac.yaml
  add more requirements
---
 .../devicetree/bindings/net/emac_rockchip.txt |  52 --------
 .../bindings/net/rockchip,emac.yaml           | 115 ++++++++++++++++++
 2 files changed, 115 insertions(+), 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/emac_rockchip.txt
 create mode 100644 Documentation/devicetree/bindings/net/rockchip,emac.yaml

diff --git a/Documentation/devicetree/bindings/net/emac_rockchip.txt b/Documentation/devicetree/bindings/net/emac_rockchip.txt
deleted file mode 100644
index 05bd7dafc..000000000
--- a/Documentation/devicetree/bindings/net/emac_rockchip.txt
+++ /dev/null
@@ -1,52 +0,0 @@
-* ARC EMAC 10/100 Ethernet platform driver for Rockchip RK3036/RK3066/RK3188 SoCs
-
-Required properties:
-- compatible: should be "rockchip,<name>-emac"
-   "rockchip,rk3036-emac": found on RK3036 SoCs
-   "rockchip,rk3066-emac": found on RK3066 SoCs
-   "rockchip,rk3188-emac": found on RK3188 SoCs
-- reg: Address and length of the register set for the device
-- interrupts: Should contain the EMAC interrupts
-- rockchip,grf: phandle to the syscon grf used to control speed and mode
-  for emac.
-- phy: see ethernet.txt file in the same directory.
-- phy-mode: see ethernet.txt file in the same directory.
-
-Optional properties:
-- phy-supply: phandle to a regulator if the PHY needs one
-
-Clock handling:
-- clocks: Must contain an entry for each entry in clock-names.
-- clock-names: Shall be "hclk" for the host clock needed to calculate and set
-  polling period of EMAC and "macref" for the reference clock needed to transfer
-  data to and from the phy.
-
-Child nodes of the driver are the individual PHY devices connected to the
-MDIO bus. They must have a "reg" property given the PHY address on the MDIO bus.
-
-Examples:
-
-ethernet@10204000 {
-	compatible = "rockchip,rk3188-emac";
-	reg = <0xc0fc2000 0x3c>;
-	interrupts = <6>;
-	mac-address = [ 00 11 22 33 44 55 ];
-
-	clocks = <&cru HCLK_EMAC>, <&cru SCLK_MAC>;
-	clock-names = "hclk", "macref";
-
-	pinctrl-names = "default";
-	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&phy_int>;
-
-	rockchip,grf = <&grf>;
-
-	phy = <&phy0>;
-	phy-mode = "rmii";
-	phy-supply = <&vcc_rmii>;
-
-	#address-cells = <1>;
-	#size-cells = <0>;
-	phy0: ethernet-phy@0 {
-	      reg = <1>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/net/rockchip,emac.yaml b/Documentation/devicetree/bindings/net/rockchip,emac.yaml
new file mode 100644
index 000000000..a6d4f14df
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/rockchip,emac.yaml
@@ -0,0 +1,115 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/rockchip,emac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3036/RK3066/RK3188 Ethernet Media Access Controller (EMAC)
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3036-emac
+      - rockchip,rk3066-emac
+      - rockchip,rk3188-emac
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    items:
+      - description: host clock
+      - description: reference clock
+      - description: mac TX/RX clock
+
+  clock-names:
+    minItems: 2
+    items:
+      - const: hclk
+      - const: macref
+      - const: macclk
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon GRF used to control speed and mode for the EMAC.
+
+  phy-supply:
+    description:
+      Phandle to a regulator if the PHY needs one.
+
+  mdio:
+    $ref: mdio.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - rockchip,grf
+  - phy
+  - phy-mode
+  - mdio
+
+allOf:
+  - $ref: "ethernet-controller.yaml#"
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3036-emac
+
+    then:
+      properties:
+        clocks:
+          minItems: 3
+
+        clock-names:
+          minItems: 3
+
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+
+        clock-names:
+          maxItems: 2
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3188-cru-common.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    ethernet@10204000 {
+      compatible = "rockchip,rk3188-emac";
+      reg = <0xc0fc2000 0x3c>;
+      interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru HCLK_EMAC>, <&cru SCLK_MAC>;
+      clock-names = "hclk", "macref";
+      rockchip,grf = <&grf>;
+      pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&phy_int>;
+      pinctrl-names = "default";
+      phy = <&phy0>;
+      phy-mode = "rmii";
+      phy-supply = <&vcc_rmii>;
+
+      mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        phy0: ethernet-phy@0 {
+          reg = <1>;
+        };
+      };
+    };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
