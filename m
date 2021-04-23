Return-Path: <SRS0=DeNp=JU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF84C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 01:44:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A6DF6144D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 01:44:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7A6DF6144D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HRdSkXZzqOXDa2kcPJqhEytqboO0iC/5aYff6znXUHk=; b=XxiZS5/Wom96JNMxp2hEk/9UCP
	Ix4H+l6rQ3BEjnGqEM/HKLNVNP0GtuMpfgbZxgFD6sKhAWBPek+x1VO1ywbDNS5kbLD7KpCpnb4yN
	g4vuflmZCGJXCa8gyScZTgoFu0nMv7HXQvjggMK4hAB8zvFJ4Jk68SbYnRKoa49gYJldX8KvLwAcm
	zz8LtnWtNq/mKfCI2ae230arNCHo9yWIOfElvfriQaU6tG9H9A0WanLPSpIQ5VTgT8xDeuDgU3dC0
	O/5zz9uLadI3BbOW67chnjZRB8NPWxm6LisfqVUdlWFiJvpoxDh8Qa4COLllsWxv3J23J2mFcLpov
	gkKecHYA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZkrk-000In8-Ep; Fri, 23 Apr 2021 01:44:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZkrh-000Imf-TW
 for linux-rockchip@desiato.infradead.org; Fri, 23 Apr 2021 01:44:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=omTUnYi1xAiCkb/mqdv52QSiiybviptG9Be+MiSyVqU=; b=SW6Sji8ehSJoIzUBBbaXCIMBdK
 x96jEBOh7M11YrTjL4/KVqe2KVgEhYZy+q+hO9LklOMpRfldWsyRYWBHpLwWp6C1j+BA2q7nCTXEv
 3H4eQR0uY7x2jAzIDlplNoMCYtg2BvjW8Oorvj1az59qHXUVWTCB7HdXCjV76CdobG/ZPA6PGluUd
 TiH2XvcBP1fwxi2BLVMbxWJGKyCaIz3llNCn199s52aYiEJmaEqxRv5yx6NykwIDvpQ6pyBuB78Uc
 ZJHUC5DNIn4wRIAZTrCh2Juo4gdoTUOhtF3kn1/CpMST4Fl9FNtPNdUYgfPn51CmOEgAkN/SEDyQF
 LXO3VDtQ==;
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZkrb-00E5Tp-ID
 for linux-rockchip@lists.infradead.org; Fri, 23 Apr 2021 01:44:13 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id DE00DBA143;
 Fri, 23 Apr 2021 09:44:03 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31919T139684250371840S1619142242534325_; 
 Fri, 23 Apr 2021 09:44:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1992614d86c6477ffb7c4ec9c31cbe71>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 8
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de,
	linus.walleij@linaro.org,
	robh+dt@kernel.org
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH] dt-bindings: pinctrl: rockchip: Convert to json-schema
Date: Fri, 23 Apr 2021 09:44:00 +0800
Message-Id: <20210423014400.1433347-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_184411_947836_1EAA4EE6 
X-CRM114-Status: GOOD (  16.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Convert the pinctrl/rockchip,pinctrl.txt binding document to
json-schema.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 .../bindings/pinctrl/rockchip,pinctrl.yaml    | 163 ++++++++++++++++++
 1 file changed, 163 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
new file mode 100644
index 000000000000..59cddcd30dbc
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -0,0 +1,163 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/rockchip,rockchip-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Pinmux Controller
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The Rockchip Pinmux Controller, enables the IC
+  to share one PAD to several functional blocks. The sharing is done by
+  multiplexing the PAD input/output signals. For each PAD there are several
+  muxing options with option 0 being the use as a GPIO.
+
+  Please refer to pinctrl-bindings.txt in this directory for details of the
+  common pinctrl bindings used by client devices, including the meaning of the
+  phrase "pin configuration node".
+
+  The Rockchip pin configuration node is a node of a group of pins which can be
+  used for a specific device or function. This node represents both mux and
+  config of the pins in that group. The 'pins' selects the function mode(also
+  named pin mode) this pin can work on and the 'config' configures various pad
+  settings such as pull-up, etc.
+
+  The pins are grouped into up to 5 individual pin banks which need to be
+  defined as gpio sub-nodes of the pinmux controller.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-pinctrl
+      - rockchip,rv1108-pinctrl
+      - rockchip,rk2928-pinctrl
+      - rockchip,rk3066a-pinctrl
+      - rockchip,rk3066b-pinctrl
+      - rockchip,rk3128-pinctrl
+      - rockchip,rk3188-pinctrl
+      - rockchip,rk3228-pinctrl
+      - rockchip,rk3288-pinctrl
+      - rockchip,rk3308-pinctrl
+      - rockchip,rk3328-pinctrl
+      - rockchip,rk3368-pinctrl
+      - rockchip,rk3399-pinctrl
+      - rockchip,rk3568-pinctrl
+
+  rockchip,grf:
+    description: |
+      phandle referencing a syscon providing the "general register files"
+    maxItems: 1
+
+  rockchip,pmu:
+    description: |
+      Optional. Phandle referencing a syscon providing the pmu registers
+      as some SoCs carry parts of the iomux controller registers there.
+      Required for at least rk3188 and rk3288. On the rk3368 this should
+      point to the PMUGRF syscon.
+    maxItems: 1
+
+  ranges: true
+
+patternProperties:
+  "^gpio[0-9]@[0-9a-f]":
+    type: object
+    description: gpio sub node
+
+    properties:
+      compatible:
+        enum:
+          - rockchip,gpio-bank
+          - rockchip,rk3188-gpio-bank0
+
+      reg:
+        maxItems: 2
+
+      interrupts:
+        description: Specifies the Rockchip summary IRQ
+        maxItems: 1
+
+      interrupt-controller: true
+
+      '#interrupt-cells':
+        description:
+          Specifies the PIN numbers and Flags, as defined in defined in
+          include/dt-bindings/interrupt-controller/irq.h
+        const: 2
+
+      gpio-controller: true
+
+      '#gpio-cells':
+        const: 2
+
+      clocks:
+        description: clock that drives this gpio bank
+        minItems: 1
+        maxItems: 2
+
+      required:
+        - compatible
+        - reg
+        - interrupts
+        - interrupt-controller
+        - '#interrupt-cells'
+        - gpio-controller
+        - '#gpio-cells'
+        - clocks
+
+      additionalProperties: false
+
+required:
+  - compatible
+  - rockchip,grf
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+additionalProperties: true
+
+examples:
+  - |
+        #include <dt-bindings/pinctrl/rockchip.h>
+        pcfg_pull_default: pcfg_pull_default {
+            bias-pull-pin-default
+        };
+
+        pinctrl@20008000 {
+            compatible = "rockchip,rk3066a-pinctrl";
+            rockchip,grf = <&grf>;
+            #address-cells = <1>;
+            #size-cells = <1>;
+            ranges;
+
+            gpio0: gpio0@20034000 {
+                compatible = "rockchip,gpio-bank";
+                reg = <0x20034000 0x100>;
+                interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-controller;
+                #interrupt-cells = <2>;
+                gpio-controller;
+                #gpio-cells = <2>;
+                clocks = <&clk_gates8 9>;
+            };
+
+            uart2 {
+                uart2_xfer: uart2-xfer {
+                    rockchip,pins = <1 RK_PB0 1 &pcfg_pull_default>,
+                                    <1 RK_PB1 1 &pcfg_pull_default>;
+                };
+            };
+        };
+
+        uart2: serial@20064000 {
+            compatible = "snps,dw-apb-uart";
+                reg = <0x20064000 0x400>;
+                interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&mux_uart2>;
+                pinctrl-0 = <&uart2_xfer>;
+                pinctrl-names = "default";
+                reg-shift = <2>;
+                reg-io-width = <1>;
+        };
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
