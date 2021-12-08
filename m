Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 765E5C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 18:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhJ8YeTWJCSi9UsPq+9F7BxBl5EdQisvTL9OiMTslIM=; b=061O/07J8rFrwm
	PV9jwRTO0iMeXOZUl/HvYENByw4E8MQqKHZGVZXX4oSGlviN/WHjFLVKk2U1TqTWVngHa0mLO+sAO
	iFgiaNVpUV9bhbqlXGrIM/AFIUIlw0pKF70Ks6yZ/JiiMpVzitIyuFCNKBzfKx5AA/ek/xUDXiequ
	8nDxFTsZ1JVeqSWJiNjY6dXLKyYF2kSQcbqVtEYypDOPeOR6BBbzeBMg+nyW6ou8/Ooitbp9nmclm
	+SQ/fni06oksym4KypGcdqeUwA+Tt6ReMHmx6ni38b32RrRpgYcrp739KrYMuXj9xcIyEbsaRhy6l
	CcRchif2nL9ViVTZx9sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv26T-00Dwc9-8n; Wed, 08 Dec 2021 18:55:45 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv25o-00DwKH-Gw; Wed, 08 Dec 2021 18:55:06 +0000
Received: by mail-ed1-x52e.google.com with SMTP id y13so11486567edd.13;
 Wed, 08 Dec 2021 10:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k87N5jZmnUdGHFqhTtJn+9rczDSFekNyBn4AmfAku7w=;
 b=fOb+9WGDxrX2K9K/D2COkmgfnILbCc3uvU1qW4UA5EgzNuDFSitSIdWWv5W5tpvUsR
 Mun8aPk75JSSGJzSy9AXHP14/Ejs3LWHuZ6QEPiy+Oli4U2W9g25EiG8Qf3nvyPM0i8D
 1THpAnsQ7r/V0ajttgmVk0meSEBHN/v/qaiNEzCsOdlI9B0BzkR1lkxCricpq2xnuwBo
 IOEIOhOo5xWbCLOzrYp13pWjv1itfUXa+8OYxDO3khIqm/wze5j6G73GndbsUs+Xryrg
 ju0bGHF1lxjVhgzmOHLi/Rp1XRZ15I/zk+wbDcdklmTva/ECgRZ2Qu9N3yFO5aNLE7/0
 AqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k87N5jZmnUdGHFqhTtJn+9rczDSFekNyBn4AmfAku7w=;
 b=DkvB7cNWtdXc4/3NB9A+WF0eFTJmEq+XKPFqdxubk4rbFauYYsub9tllVFtQ5UWr/s
 qAGwNQEo8W2/Qe8zbo8WniXAvaHLX8G0fUqkYOC5Gwdv9CdymhMmjh4LgCXL5/HVdQQ6
 aRKpLl8qTo5Cff30XWG5PMusSbtmpqOswSbIzxkDB56Waml5gFao9MbBvYX7e2Quf45+
 9SNOfNtl8dQ5saEsFRvemoHwa1AEhmiheIx5+y7qRP7JhU6pwKLG+DoPKlrNq5eoIknl
 fghWldIyFY1OdBn3nkelYJcbCOHCn8YOCfRiBFvQFBAshDwaPlDx5YqVptJMtggkmG7k
 CeSQ==
X-Gm-Message-State: AOAM533O80mI91kpu1JVY8wIkGJuzPSW5ey4xfnh7qunuBqyA1spKMhw
 No91LpXDwsnzc9ITD5awoy8=
X-Google-Smtp-Source: ABdhPJywhDKnSGvpvkUtgBnA8V3Fjc0CiLG17JO3J+ADuwQTZBnGP6NqULAxiP70cSfJ+fQP7AeYpA==
X-Received: by 2002:a17:907:7b99:: with SMTP id
 ne25mr9626193ejc.15.1638989702598; 
 Wed, 08 Dec 2021 10:55:02 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g18sm1862273ejt.36.2021.12.08.10.55.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 10:55:02 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 p.zabel@pengutronix.de, yifeng.zhao@rock-chips.com,
 kever.yang@rock-chips.com, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [RFC PATCH v4 2/4] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
Date: Wed,  8 Dec 2021 19:54:47 +0100
Message-Id: <20211208185449.16763-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211208185449.16763-1-jbx6244@gmail.com>
References: <20211208185449.16763-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_105504_599461_EFF25217 
X-CRM114-Status: GOOD (  15.00  )
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

Add the compatible strings for the Naneng combo PHY found on rockchip SoC.

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V4:
  restyle
  remove some minItems
  add more properties
  remove reset-names
  move #phy-cells
  add rockchip,rk3568-pipe-grf
  add rockchip,rk3568-pipe-phy-grf
---
 .../phy/phy-rockchip-naneng-combphy.yaml      | 127 ++++++++++++++++++
 1 file changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
new file mode 100644
index 000000000..d309e2008
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -0,0 +1,127 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC Naneng Combo Phy Device Tree Bindings
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3568-naneng-combphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: reference clock
+      - description: apb clock
+      - description: pipe clock
+
+  clock-names:
+    items:
+      - const: ref
+      - const: apb
+      - const: pipe
+
+  resets:
+    items:
+      - description: exclusive apb reset line
+      - description: exclusive PHY reset line
+
+  rockchip,dis-u3otg0-port:
+    type: boolean
+    description:
+      Disable the u3otg0 port.
+
+  rockchip,dis-u3otg1-port:
+    type: boolean
+    description:
+      Disable the u3otg1 port.
+
+  rockchip,enable-ssc:
+    type: boolean
+    description:
+      In U3 and SATA mode the SSC option is already disabled by default.
+      In PCIE mode the option SSC can be enabled.
+      If Spread Spectrum Clocking (SSC) is used it is
+      required that a common reference clock is used by the link partners.
+      Most commercially available platforms with PCIe backplanes use
+      SSC to reduce EMI.
+
+  rockchip,ext-refclk:
+    type: boolean
+    description:
+      Many PCIe connections, especially backplane connections,
+      require a synchronous reference clock between the two link partners.
+      To achieve this a common clock source, referred to as REFCLK in
+      the PCI Express Card Electromechanical Specification,
+      should be used by both ends of the PCIe link.
+      The PCIe PHY provides 100MHz differential clock output
+      (optional with SSC) in RC mode for system applications.
+
+  rockchip,pipe-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Some additional phy settings are accessed through GRF regs.
+
+  rockchip,pipe-phy-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Some additional pipe settings are accessed through GRF regs.
+
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    default: 0
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+
+  "#phy-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - rockchip,pipe-grf
+  - rockchip,pipe-phy-grf
+  - "#phy-cells"
+
+additionalProperties: false
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
+    combphy0: phy@fe820000 {
+      compatible = "rockchip,rk3568-naneng-combphy";
+      reg = <0xfe820000 0x100>;
+      clocks = <&pmucru CLK_PCIEPHY0_REF>,
+               <&cru PCLK_PIPEPHY0>,
+               <&cru PCLK_PIPE>;
+      clock-names = "ref", "apb", "pipe";
+      assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
+      assigned-clock-rates = <100000000>;
+      resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;
+      rockchip,pipe-grf = <&pipegrf>;
+      rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
+      #phy-cells = <1>;
+    };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
