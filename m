Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE9C433E6
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 06:48:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1F0364E31
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 06:48:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1F0364E31
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tU2LzgZLUSKHWZTHG7h6oSnHCyfYSi1fk6hiTvfEkR4=; b=sJjI0/05TRVlJ4xeUw4T8aDI8F
	8d1XEGgWAyAj8B+uIOepYqilUA6/nVaLjGeXEZ7cjmgo89uBn0ZrQreWlqcljvOVlifaAbqXPoYdg
	rLX6rGOYdyGrBtumeVptrw1Z5RBkdXUjO0Q1gidGhDgMO4/VRUhyXSO48L3rng3rd6VoTiCnG9t3L
	ovF+IEIor/XdFAfGiF27py1BvSKTSDL0AFIteks4RyknDJAS97xm5cVe101poXdfLfvp08NkEUZSa
	ltVX0C9m25Hfs/0b9N2jEYbctnAJnddTGXCFJFfTR7PEjkrN22eP5WTND0bYx6sAov0GRwl0MCDqB
	Qi2aqcUA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGcLq-0008Gz-Pl; Mon, 01 Mar 2021 06:48:18 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGcLf-0008ED-FP; Mon, 01 Mar 2021 06:48:11 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 012BCC773B;
 Mon,  1 Mar 2021 14:47:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31655T140708449044224S1614581271100343_; 
 Mon, 01 Mar 2021 14:47:53 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <52b2238924d7b763dd3652637e22d8c3>
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
Subject: [PATCH v3 1/4] dt-binding: clock: Document rockchip,
 rk3568-cru bindings
Date: Mon,  1 Mar 2021 14:47:46 +0800
Message-Id: <20210301064749.10392-2-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210301064749.10392-1-zhangqing@rock-chips.com>
References: <20210301064749.10392-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_014807_985752_9FE55D1A 
X-CRM114-Status: GOOD (  14.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: huangtao@rock-chips.com, devicetree@vger.kernel.org,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 cl@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Document the device tree bindings of the rockchip Rk3568 SoC
clock driver in Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
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
