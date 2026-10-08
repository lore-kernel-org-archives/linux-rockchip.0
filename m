Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF230CA6011
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 17:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5CztLib7NkOrxqbFVa/9jTobMeKIuBY84sAhJiQtkw=; b=V62pQLWP84aYqo
	aMusW9bQ2g7uHNhcN9Ml15RJYkfkL44uTqu1aIKD4AVnho8xOnjpAQ0T+qqmAR0M7kLzS8jq3I1JI
	y4HrK6RQE+bxYRIW2YSRZ3YavA7BYS/vS9zMs8ILOnbBQzrNqcxpMDxFOh0c+hGFG5rXzkEVnUOfg
	wdksfgtptdOiKKiu9jXqQqNrX1Vye9rqR7gQyqatyT/f2d6qIjMn65CittgTYEH2O0QffnQv60I/8
	8z5PYRfFi/DM17sWi97F7qULSRScZsTZkcDwhVL9276LskaImhPvK0bfgt3lt7IrtPnDUbsnat5VK
	hULFJlYYOP6LjTkHzo7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEsIl-00000004ojB-2JVL;
	Thu, 08 Oct 2026 17:53:07 +0000
Received: from mail-pj2-x09.google.com ([2607:f8b0:4864:39::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEsIi-00000004ogD-0Yus
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 17:53:06 +0000
Received: by mail-pj2-x09.google.com with SMTP id 98e67ed59e1d1-3a8c118e711so1032165a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 10:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791481983; x=1792086783; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QbQK6NgiCotND3PJt+n3FsbZUv6wfc19zH2Mf9/gmJ0=;
        b=sMFTxZ/wqlqgjnNa2p/mXNA8Y8G9V7NxIgRSD//ACCi2UDdmTkEr5o99dZyc0sW5d4
         W9lUQ2dD26XcEU5GN8IdYt4gffOqMRQzSKqxcv/kN2L4efo8VMWJIjvUN68eBIvDRNqF
         iJSCF1iOXc9Xw32LfqeM5F7Hbjt7paWfhrkoWnauC2NbcHz11G8SqEQh2zfRft6AkhRa
         02Sf2G6j11eVjjKSsWa7aXzc8gDdeDqr1T9pkKbdtIrGaL4diDyl9wD3Ui213L1FPlFC
         xEaDgTe76MFq8YjIlFbq2NVhFBGzRzAyeVDe3bTFaKOT4khYhyUAmKsFm8D2nb6qFNSk
         W1og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791481983; x=1792086783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=QbQK6NgiCotND3PJt+n3FsbZUv6wfc19zH2Mf9/gmJ0=;
        b=wxg1KHDJ/c0hmFTOYoslM18qMpn8qawpenkTNBHRAnPMiu4HLMjrDDVrrKL5XL1z+4
         6gYsE6NaX342yujSLtbM4EyBxG+Ea/+ogJh+fgXeAuXCh2enbAb+M/+N1J0JQZjedjLN
         YsT6+GNrfY/HadxqwjUBKcNVuDf2VlfW81EJf/1f2ps62i4aTyr/HZxmoAbQ59wKRBYb
         IWzXxZvaqE/TPvyxwN654xrmDkPSHMV7n9qphCG02rWd6ujELDYUI0FBgpPgoDey7dHc
         ZeWxCRnO+xtOKbjfFp8I/JRAGRIn6bzUhSFLi2lUuO5rF1uEiUiRsV3kTAMX8nGmQCZC
         U5lA==
X-Forwarded-Encrypted: i=1; AKwUvByHJA8GAbz1D3LhdlsPPrtwyZqyDL6GU5xMuZ1LGvfssEY7BDO3FJd82HH18bEfLmxf8wpjFg4RWeWGealQ8A==@lists.infradead.org
X-Gm-Message-State: AFq9FYI8+nTXYyPB2jcUhstK8LQI+DLzkCCsNjHw+ksbEMME4OHUi+TR
	BLh3egt4sdvcK4cEErr7a4Dh4kjKYCSf/Rm+n2diiL9J4c+wWOxjhvLX
X-Gm-Gg: AYBFou30CcDEcDcTUqgcUbf9WgB70b8N9oK5EhjpkV8OOUmDKKYEAuoeSAo28feBMiW
	fu1h5azdEabegTYFnBOK1yigJIeSj6MqLqZdoqfDSla5ugk9SfrydOOOA3xOOBVFDsW/DzZbmdU
	KWbq5Cg9Mj6hobUzbT+xO5cU5Iu0bEzXaWBzQGFbW4H88VbX3TamAtahQdye8gJomRrvcbKeuAO
	uyi52J71IJ1ZTdugmYy4FtS7kIaEMEEtylsG1ZeVtWmuwSO+HtEI+POMOCt8K3qTG+ez0WHeH4b
	LrAbr9LIAF/B8+gPp4C+wAvD8WyKb6AtInlQQYLWaTiG3Y83w5EWB01Jt2wDMIiKN4EbOYTBon8
	OZqIou6Pihr+eSBknLMrMRD5IZngELytz7raDChkJ4faFOd8VOKm8eqcGi2SNEdbsukJV4+NnZ8
	NKCosSQKflLXh+nL0mdFzzpTO6lnAjhINKp2aWiTbBNHnJiXdL4XQxor8o1VH5Moddz37SiLYw6
	qX96Ro=
X-Received: by 2002:a17:90b:2c86:b0:3ab:2737:3393 with SMTP id 98e67ed59e1d1-3ab273737d4mr811350a91.40.1791481983181;
        Thu, 08 Oct 2026 10:53:03 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab3277c459sm144332a91.16.2026.10.08.10.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 10:53:02 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v11 2/6] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Fri,  9 Oct 2026 01:51:56 +0800
Message-ID: <20261008175225.3375274-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261008175225.3375274-1-coiaprant@gmail.com>
References: <20261008175225.3375274-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_105304_308943_8FECD0D4 
X-CRM114-Status: GOOD (  14.65  )
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

Add device tree binding documentation for the Synopsys DesignWare
XPCS integrated on the Rockchip RK3568 SoC.

The XPCS is accessed over the APB3 bus and internally connected to
a Naneng Combo SerDes PHY.  It supports 1000BASE-X, SGMII, and
QSGMII modes, with four MII ports.

The MII port used by the SGMII link is derived from the MAC it is
routed to: GMAC0 uses port 0, GMAC1 uses port 1.  The port index is
not an independent board-level configuration, so the binding does
not describe the ports.  If a future SoC needs per-port configuration
that cannot be derived, pcs-handle argument cells can be added then.

The CRU reset lines (SRST_XPCS*) are intentionally not described: no
in-tree user requests them, and bring-up relies on the PD_PIPE power
domain, the SerDes PHY and the in-IP soft reset. They can be added
later as optional without breaking ABI.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../net/pcs/rockchip,rk3568-xpcs.yaml         | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
new file mode 100644
index 0000000000000..a331880eb11c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/pcs/rockchip,rk3568-xpcs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3568 Synopsys DesignWare Ethernet PCS
+
+maintainers:
+  - Coia Prant <coiaprant@gmail.com>
+
+description: |
+  Rockchip RK3568 SoC integrates a Synopsys DesignWare Ethernet Physical
+  Coding Sublayer (XPCS).
+  The PCS provides an interface between the Media Access Control (MAC)
+  and the Physical Medium Attachment (PMA) sublayer through a Media
+  Independent Interface (GMII).
+
+  The XPCS is accessed over the APB3 bus and internally connected to a
+  Naneng Combo SerDes PHY.
+  It supports 1000BASE-X, SGMII and QSGMII modes.
+
+properties:
+  compatible:
+    const: rockchip,rk3568-xpcs
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: APB3 bus interface clock (clk_csr_i), required for register access
+      - description: EEE clock (clk_eee_i), required for Energy Efficient Ethernet operation
+
+  clock-names:
+    items:
+      - const: csr
+      - const: eee
+
+  phys:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - phys
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    #include <dt-bindings/power/rk3568-power.h>
+    #include <dt-bindings/phy/phy.h>
+
+    ethernet-pcs@fda00000 {
+      compatible = "rockchip,rk3568-xpcs";
+      reg = <0xfda00000 0x200000>;
+      clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+      clock-names = "csr", "eee";
+      phys = <&combphy2 PHY_TYPE_SGMII>;
+      power-domains = <&power RK3568_PD_PIPE>;
+    };
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
