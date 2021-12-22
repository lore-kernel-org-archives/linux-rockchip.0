Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527D2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 21:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymetp90rjv5VL+G3JOcOwuyovxfoBx8oQ3EvkLjjorc=; b=rE5rhjwQZ85bww
	Tz8/e88/wV5A4CEPfbdx4HGz7ttMnyZRzEKlWOz37yr+PwD+Rp94td8H74ndYBC8lAqcO8w3pIh2L
	EkyIgcy5LLyJWZ3gclBDKqDLN10K3+WBBqMjNJTn7iagD5rHhyFYNUENC3HizW/E4SfLQ6arZfFa6
	nHkQj3cPwCWnM8lNWcEc6az0oyEeGXujkHa1/WAPdaa/yzsPxLirfImhLFbeIyGsL/G/ynvTd9X9S
	LqG+OYgUgHtWMXQbVwtEcQ7V0sD7WDufqk5/UZTLdDhkeLA9ZXa6+MY6RItU0ZCJOUmNzQL+VsDED
	/xQhxkwjqeVGetPx2osA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n09D4-00BLpN-60; Wed, 22 Dec 2021 21:31:42 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n09C9-00BLNF-P1; Wed, 22 Dec 2021 21:30:48 +0000
Received: by mail-ed1-x532.google.com with SMTP id x15so13717521edv.1;
 Wed, 22 Dec 2021 13:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q9xBnp+DcnB6XC5obBOXShIXNIp0uQFFeRvqFbdve3w=;
 b=BOyE9hxYPdMU2y5WUQnnm+p4QwH8QQt6K/e+4iD6zZ/oQWSYfvd+ETgFHHAD2wkEqb
 FuEPHeB0WLKhN8pguiTPR2VzuQJxeF4QOnJtG9iUiY6Vjx+axAFS9FaaWGoBsEJCkYJR
 N4d+KpiAmge/Spiza0Vtc1ryWD73w8TLQHiZp4qSpNzWKL0EnGErK+HrAbzqAMmy8VrN
 G7rvEByUqTdqyVxiVRVvFmH2j2iweJKwY+lqBpcZdtO++o3Kb1u8ml2g1fYEM6EMAFmH
 0xgSNRnoMdxW0XbmTN8a89UEr/z3gZx5pLMmctzmZ3LmVKqyMlRJooowfoMWy3JM+Yf1
 rGlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q9xBnp+DcnB6XC5obBOXShIXNIp0uQFFeRvqFbdve3w=;
 b=D9YuTzi2sSMUtZ0Zgt9YZjhdAkyaoJmXtSA+6e3t32m6qgAbkqjZhv0H7kXgNTAM7o
 yYqbdmu787Z6nDuiGgxn5lzaiP01YRqtcC2a+SCxNoNlmO7ua5KhaD4whW05+sWI2Ks7
 UAL7GQsx27gYIvCYJbNq3kH8+SotRUm0UNw7ooZjnRB+8sEg5NjDyDCXYBL8/V6ETPMM
 9XkZ7yBlYHqy44nIC+NeMO7iVriB7UHcvpTbStAf1LjNsDoSz7CXCZtpbRy4KJCi3IdJ
 QkWBYYjlGP/bR5EUkmXh3r8YcitNrIHIlZ/pxH4Y/wF32RCD6GOnUQ/GvXCbq1JLGME4
 Yocg==
X-Gm-Message-State: AOAM531f0+ojfOR56oVPFef1t2JHR7oqLe/SD53fv1oToCvU0UI/IJCU
 K3lsH8GRnN1Xmnj4y2d4rjs=
X-Google-Smtp-Source: ABdhPJyXgoXKOqrBn8mrW2mn2gHaC6E5k8NmTCsecC/cPmhf+k3OxerK4SD9CswDtgpfmM16W5coig==
X-Received: by 2002:a05:6402:440a:: with SMTP id
 y10mr4257267eda.371.1640208641640; 
 Wed, 22 Dec 2021 13:30:41 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ne2sm1087776ejc.108.2021.12.22.13.30.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:30:41 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 p.zabel@pengutronix.de, lee.jones@linaro.org, yifeng.zhao@rock-chips.com,
 kever.yang@rock-chips.com, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [RFC PATCH v6 2/4] dt-bindings: phy: rockchip: add naneng multi phy
 bindings
Date: Wed, 22 Dec 2021 22:30:30 +0100
Message-Id: <20211222213032.7678-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211222213032.7678-1-jbx6244@gmail.com>
References: <20211222213032.7678-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_133045_874998_99885B77 
X-CRM114-Status: GOOD (  15.97  )
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

From: Yifeng Zhao <yifeng.zhao@rock-chips.com>

Add the compatible strings for the Naneng multi phy found on Rockchip SoCs.

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changes in v6:
- change from comb to multi phy
- add parent node
- change compatible strings
- remove rockchip,sgmii-mac-sel
- remove rockchip,dis-u3otg0-port
- remove rockchip,dis-u3otg1-port

Changes in v5:
- modify description for ssc and ext-refclk
- remove apb reset

Changes in v4:
- restyle
- remove some minItems
- add more properties
- remove reset-names
- move #phy-cells
- add rockchip,rk3568-pipe-grf
- add rockchip,rk3568-pipe-phy-grf

Changes in v3: None

Changes in v2:
- Fix dtschema/dtc warnings/errors
---
 .../phy/phy-rockchip-naneng-multiphy.yaml     | 167 ++++++++++++++++++
 1 file changed, 167 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-multiphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-multiphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-multiphy.yaml
new file mode 100644
index 000000000..40ec1b240
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-multiphy.yaml
@@ -0,0 +1,167 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-multiphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC Naneng Multi Phy Device Tree Bindings
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3566-naneng-multiphy
+      - rockchip,rk3568-naneng-multiphy
+
+  rockchip,pipe-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Some additional phy settings are accessed through GRF regs.
+
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 2
+
+required:
+  - compatible
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+patternProperties:
+  "multi-phy@[0-9a-f]+$":
+    type: object
+
+    properties:
+      reg:
+        maxItems: 1
+
+      clocks:
+        items:
+          - description: reference clock
+          - description: apb clock
+          - description: pipe clock
+
+      clock-names:
+        items:
+          - const: ref
+          - const: apb
+          - const: pipe
+
+      resets:
+        items:
+          - description: exclusive PHY reset line
+
+      rockchip,enable-ssc:
+        type: boolean
+        description:
+          The option SSC can be enabled for U3, SATA and PCIE.
+          Most commercially available platforms use SSC to reduce EMI.
+
+      rockchip,ext-refclk:
+        type: boolean
+        description:
+          Many PCIe connections, especially backplane connections,
+          require a synchronous reference clock between the two link partners.
+          To achieve this a common clock source, referred to as REFCLK in
+          the PCI Express Card Electromechanical Specification,
+          should be used by both ends of the PCIe link.
+          In PCIe mode one can choose to use an internal
+          or an external reference clock.
+          By default the internal clock is selected. The PCIe PHY provides a 100MHz
+          differential clock output(optional with SSC) for system applications.
+          When selecting this option an externally 100MHz differential
+          reference clock needs to be provided to the PCIe PHY.
+
+      rockchip,pipe-phy-grf:
+        $ref: /schemas/types.yaml#/definitions/phandle
+        description:
+          Some additional pipe settings are accessed through GRF regs.
+
+      "#phy-cells":
+        const: 1
+
+    required:
+      - reg
+      - clocks
+      - clock-names
+      - resets
+      - rockchip,pipe-phy-grf
+      - "#phy-cells"
+
+    additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+
+    pipegrf: syscon@fdc50000 {
+      compatible = "rockchip,rk3568-pipe-grf", "syscon";
+      reg = <0xfdc50000 0x1000>;
+    };
+
+    pipe_phy_grf0: syscon@fdc70000 {
+      compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
+      reg = <0xfdc70000 0x1000>;
+    };
+
+    pipe_phy_grf1: syscon@fdc80000 {
+      compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
+      reg = <0xfdc80000 0x1000>;
+    };
+
+    pipe_phy_grf2: syscon@fdc90000 {
+      compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
+      reg = <0xfdc90000 0x1000>;
+    };
+
+    multiphy: multiphy {
+      compatible = "rockchip,rk3568-naneng-multiphy";
+      rockchip,pipe-grf = <&pipegrf>;
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      multiphy0: multi-phy@fe820000 {
+        reg = <0x0 0xfe820000 0x0 0x100>;
+        clocks = <&pmucru CLK_PCIEPHY0_REF>,
+                 <&cru PCLK_PIPEPHY0>,
+                 <&cru PCLK_PIPE>;
+        clock-names = "ref", "apb", "pipe";
+        assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
+        assigned-clock-rates = <100000000>;
+        resets = <&cru SRST_PIPEPHY0>;
+        rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
+        #phy-cells = <1>;
+      };
+
+      multiphy1: multi-phy@fe830000 {
+        reg = <0x0 0xfe830000 0x0 0x100>;
+        clocks = <&pmucru CLK_PCIEPHY1_REF>,
+                 <&cru PCLK_PIPEPHY1>,
+                 <&cru PCLK_PIPE>;
+        clock-names = "ref", "apb", "pipe";
+        assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
+        assigned-clock-rates = <100000000>;
+        resets = <&cru SRST_PIPEPHY1>;
+        rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
+        #phy-cells = <1>;
+      };
+
+      multiphy2: multi-phy@fe840000 {
+        reg = <0x0 0xfe840000 0x0 0x100>;
+        clocks = <&pmucru CLK_PCIEPHY2_REF>,
+                 <&cru PCLK_PIPEPHY2>,
+                 <&cru PCLK_PIPE>;
+        clock-names = "ref", "apb", "pipe";
+        assigned-clocks = <&pmucru CLK_PCIEPHY2_REF>;
+        assigned-clock-rates = <100000000>;
+        resets = <&cru SRST_PIPEPHY2>;
+        rockchip,pipe-phy-grf = <&pipe_phy_grf2>;
+        #phy-cells = <1>;
+      };
+    };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
