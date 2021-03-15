Return-Path: <SRS0=ms/I=IN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2B0AC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 08:57:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 24D3A64E89
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 08:57:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 24D3A64E89
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ELPt4SXLvbuV6dRR/v04UtUlweqv1PZj1yCYEtlRW0=; b=KGN7Mf6dTb681e0I5L84lGlhkd
	XuT3C4ndwxBLCBQSEoLWj3XqPpuZ0w9d/tT5VkMEIcGkJHtH4BybHnPso9MJO26aXeU4j1DTMXFPL
	E9tCs83QK2n1Wi5MEid5SmQE4xCcY+HqBCGo7p6vaO8APo+y/VibS2gt8EuBDKeHINCqT7VFrd18L
	GcVBEBjVHdFl5lQZ8b4kSZPW1+9Vf4lFLnhF5bnXQ+C00FgVRvyk7aYE1o0DbakhcrVoQ2ssI3JQv
	WPE1EHMu/4mRIf4uJe0WWLDN0nyKNh90Dkswf2dSYDzcydVj+sh5aGz5io5WYJERYjI26PNlmMgwa
	tSi5PT9Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLj1w-00FJTh-57; Mon, 15 Mar 2021 08:56:52 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLj1N-00FJO4-NR; Mon, 15 Mar 2021 08:56:22 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 741DBB9A8B;
 Mon, 15 Mar 2021 16:56:12 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13109T139929564739328S1615798570035027_; 
 Mon, 15 Mar 2021 16:56:12 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9079f2d2c860caa2dd85a51016204cdc>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: mturquette@baylibre.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org,
 heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, cl@rock-chips.com, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, tony.xie@rock-chips.com,
 finley.xiao@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v5 1/4] dt-binding: clock: Document rockchip,
 rk3568-cru bindings
Date: Mon, 15 Mar 2021 16:56:05 +0800
Message-Id: <20210315085608.16010-2-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210315085608.16010-1-zhangqing@rock-chips.com>
References: <20210315085608.16010-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_085618_470569_5324A453 
X-CRM114-Status: GOOD (  13.91  )
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

Document the device tree bindings of the rockchip Rk3568 SoC
clock driver in Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/clock/rockchip,rk3568-cru.yaml   | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
new file mode 100644
index 000000000000..b2c26097827f
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3568-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ROCKCHIP rk3568 Family Clock Control Module Binding
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3568 clock controller generates the clock and also implements a
+  reset controller for SoC peripherals.
+  (examples: provide SCLK_UART1\PCLK_UART1 and SRST_P_UART1\SRST_S_UART1 for UART module)
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3568-cru.h headers and can be
+  used in device tree sources.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3568-cru
+      - rockchip,rk3568-pmucru
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  # Clock Control Module node:
+  - |
+    pmucru: clock-controller@fdd00000 {
+      compatible = "rockchip,rk3568-pmucru";
+      reg = <0xfdd00000 0x1000>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
+  - |
+    cru: clock-controller@fdd20000 {
+      compatible = "rockchip,rk3568-cru";
+      reg = <0xfdd20000 0x1000>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
