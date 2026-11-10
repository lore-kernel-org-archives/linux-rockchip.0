Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73000606A33C
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 07:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=e9rtdAc+;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=F04h+i5Y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YWSTPPektOwYVX1u+/vx7kGI4jU4Y0AgDJecZYVlMQ0=; b=e9rtdAc+/6XaGwnkV60Sqn3IpG
	+bD9WL0Lw1BQVXjc7qKDWzbjJOfY1D3wBwO7ipUlFTAjA2ikPMfjcmiOlb6Rnc2e75LIeNyDscbB1
	My4pc9/MNxnSBlYocbp/Tz+1929YuMUoGD/8NlTR3rGtDutigQ9PlJI2k7nthMATV4S+U53w8TSRn
	DQI2Cdmg//oz7L4IkLEXh5JC60cqt2wCaF1890a7w0QGQKer2pIA8LUtMa0sWF/Wktzba3BMrDXO3
	43yKoeX7m/ANWe8iDDIO4oWR3SJCUW/4Sr4n+LPZodqRD5hLXfwdFZKw7KwQ3p017Gsu45033PcEv
	4KgZamfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQgZ7-00000002zfE-0v8f;
	Tue, 10 Nov 2026 07:46:49 +0000
Received: from mail-m8116.xmail.ntesmail.com ([156.224.81.16])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQgY4-00000002xtk-0wAB;
	Tue, 10 Nov 2026 07:45:54 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 542170ae8;
	Tue, 10 Nov 2026 15:45:39 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dave Jones <s.dave.jones@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v5 1/3] dt-bindings: phy: Add rockchip,rk3568-edp-phy
Date: Tue, 10 Nov 2026 15:45:31 +0800
Message-Id: <20261110074533.4052196-2-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261110074533.4052196-1-damon.ding@rock-chips.com>
References: <20261110074533.4052196-1-damon.ding@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa1c46b771c03a8kunm3f9229952eb2d7
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZTUtKVkpIQ09OS0JIThpOQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	JDQ0xVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=F04h+i5YOdJj+eYumMaoHEpQ/Y9uPBnFxpIVcFtHUV8q1/w6Ldkls9udjkG6jXZr/IK57dmfyuYmDnUxqm19j6NvANHvEaHou7FjAh12zj3aamx9LSu84tlB5BwlZ07jspMI+2dwQQY0hbz+jYW3yH5/CNnSbCV+rG1e+CnbB9s=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=z3zcGefP/ImEsmdAlTDnpQ/14sBuInMfCFAd504HG5Q=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_234544_600125_536CFBD0 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document the eDP transmitter PHY with Naneng IP block found on the
RK3568 SoC. The PHY has its own register window inside the eDP PHY GRF,
so its node is modeled as a child of the eDP PHY GRF syscon with a reg
property describing that window.

Also add the "rockchip,rk3568-edp-phy-grf" compatible with its own
binding schema, so the shared Rockchip GRF schema is not extended with
per-device conditionals.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Add the reg entry for the PHY node and the ranges/#address-cells/
  #size-cells for the parent syscon node.

Changes in v5:
- Move the APB clock (PCLK_EDPPHY_GRF) from the parent syscon node to
  the PHY node, matching the updated driver.
- Split the "rockchip,rk3568-edp-phy-grf" syscon node to its own
  binding schema, instead of extending the shared Rockchip GRF schema.
- Rename the reference clock to "ref".
- Drop the example from the PHY binding schema, as complete MFD
  examples belong in the GRF binding schema.
---
 .../bindings/phy/rockchip,rk3568-edp-phy.yaml | 46 +++++++++++
 .../rockchip/rockchip,rk3568-edp-phy-grf.yaml | 80 +++++++++++++++++++
 2 files changed, 126 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/rockchip/rockchip,rk3568-edp-phy-grf.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml
new file mode 100644
index 000000000000..06dd1d19dca2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,rk3568-edp-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip eDP Transmitter PHY with Naneng IP block
+
+maintainers:
+  - Damon Ding <damon.ding@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description:
+  On the RK3568 SoC the eDP PHY is controlled through the eDP PHY GRF
+  registers, therefore the PHY node is expected to be a child of the
+  eDP PHY GRF syscon node.
+
+properties:
+  compatible:
+    const: rockchip,rk3568-edp-phy
+
+  reg:
+    maxItems: 1
+    description: PHY registers within the eDP PHY GRF.
+
+  clocks:
+    items:
+      - description: Reference clock from the PMU CRU
+      - description: APB clock gating the PHY register window
+
+  clock-names:
+    items:
+      - const: ref
+      - const: apb
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#phy-cells"
+
+additionalProperties: false
diff --git a/Documentation/devicetree/bindings/soc/rockchip/rockchip,rk3568-edp-phy-grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/rockchip,rk3568-edp-phy-grf.yaml
new file mode 100644
index 000000000000..852420798f06
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/rockchip/rockchip,rk3568-edp-phy-grf.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/rockchip/rockchip,rk3568-edp-phy-grf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip eDP PHY GRF on the RK3568 SoC
+
+maintainers:
+  - Damon Ding <damon.ding@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description:
+  The eDP PHY GRF is a dedicated register file on the RK3568 SoC,
+  holding the registers used by the eDP Transmitter PHY with Naneng IP
+  block. The PHY itself is modeled as a child node, with its reg
+  property describing the PHY register window inside the GRF.
+
+properties:
+  compatible:
+    items:
+      - const: rockchip,rk3568-edp-phy-grf
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges: true
+
+patternProperties:
+  "^phy@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/phy/rockchip,rk3568-edp-phy.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      edp_phy_grf: syscon@fdcb0000 {
+        compatible = "rockchip,rk3568-edp-phy-grf", "syscon", "simple-mfd";
+        reg = <0x0 0xfdcb0000 0x0 0x8000>;
+        clocks = <&cru PCLK_EDPPHY_GRF>;
+        ranges = <0x0 0x0 0xfdcb0000 0x100>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        edp_phy: phy@0 {
+          compatible = "rockchip,rk3568-edp-phy";
+          reg = <0x0 0x100>;
+          clocks = <&pmucru XIN_OSC0_EDPPHY_G>, <&cru PCLK_EDPPHY_GRF>;
+          clock-names = "ref", "apb";
+          #phy-cells = <0>;
+        };
+      };
+    };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
