Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F33B8C88E7B
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 12:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ek+drvgaqcNrA+m81UroOPKBuNEISzgEBu/+wNJunb8=; b=Q76n5Fpm6TsUHq
	Y3LplV0+EZVQvW743mkNifuunNP/hTklrAvRwgYcsIlPHHNXoOFL2RJAmyXEekNyrNVQ5pmn8mhA9
	D2AyIQeQBq0KwoUNUPFTdLSnqeh44b8hUOf1daHAYigSSWzhnbDv2xGlUAYeHldDSYWQ+0XeOnFVu
	nfFz09L1z/sUrQuNuEwin7lHCf364kAeTu2Wl+FSAOJApeLyvhIo0kOq6LTw169H+KvDIQgllTK/v
	cJa/OcmIagS/7qKGFHNl1FBCyuDWWMA820Gq1fRj4snmFnfunCQRajg/eWF8Oc7B7W4zuj84AEWsH
	QI+1LdakIsTXU0uj8pPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRQ-00000006XZI-0Kli;
	Tue, 15 Sep 2026 12:39:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRD-00000006XAC-3QDC
	for linux-rockchip@bombadil.infradead.org;
	Tue, 15 Sep 2026 12:39:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gaQPgN9xwJzuM0GPM5hNVMgAOEuPdKVKWJmnNDeBdbE=; b=QaDxMcP3z0DGvzg6JwnBtapqSn
	xqd6XNJUMYW866h8KXQZ8nveQoKeMYvuc5qNdJq+B83QkRjIUzeSbMgY5wx3b4zVQF8J7OA0RSxth
	96wIaCVzPs0uqvD4m5AX+BGbSFQCMQoGdTcckInQnZt130HZ17lSVx+CB8j79lC6zEoshKkYAZ4W/
	fTZGL1cVYIKy0e1FgL4oI6fW6YHpv29mhWGPd4kzxBq6eUPNzkJgcwjt4ovyYqvci+Qi5IDG42HLi
	z7I2TaZqYb9uB9jB+NsmCqeDiwqItXYYSVu5oJ5ZLAOwRc2OVMGsg2Sj2D8Yc7WLgWhcvXkqHjuII
	hk9BduNA==;
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6SRA-00000006kIN-3DXZ
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 12:39:02 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-398a384b5f7so2726667a91.0
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 05:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475939; x=1790080739; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gaQPgN9xwJzuM0GPM5hNVMgAOEuPdKVKWJmnNDeBdbE=;
        b=UBMwIod1/M1WRpShaYHZKUSDcBsq+Er88gqCGP8rxBNlogl5TVA/GYJqHw2anHuQNX
         oa7FBPMeoH1kWcdK3zpHgCSYT752TbF1DBfikgzm4BEEMhOKBW5z2234+ib/54WbOkDb
         pUH5s7zFsjYslvQawBO3mGmv9Lck6Oe7vq0UiHEHd+hlq5zpodUgxgKW96B9zV5yi+4r
         ab2cvh7UqtiJE0DD5OCoueq+/iWdurE0fUAa9sX9OxBgHpRdDD00DPNCR6L5JOXBtoTX
         skBQdUmiGWw0mfG5iowGUqO7I0G0ctD/ogrsvUQtP5HSdvDEFla1DBGZ1uIs+X9HJvMk
         E1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475939; x=1790080739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gaQPgN9xwJzuM0GPM5hNVMgAOEuPdKVKWJmnNDeBdbE=;
        b=TvG1vMzfebiGO0ULZwFzXLOOKZTiqVIvDerzdeRIPZgnY49OaWb0LVZdAjgo5cu3wb
         JPAQdRnEuw+fqAczsWmtKESFKn/sK7dnCtqtewZaMMCBDOG/XgdrNH3bXMYcKq3FHQBM
         K8ok5rp0EXsPWnQiDVdj1TJcnojB7DQE6D3iILTv3EwIGdtR4e7He9G1Y/FAa0NebCas
         gBt6e0SQ3kktwFKD5w4zA6J1wKTMuYiRUgNwGbad40z/nmMu/czOy5l4cqh1cR6da0Jt
         KS46gw2oqgBdKB4JjiacJ5shtLaVMCm8ncbexRend1iKhIoa3aQ+8xAF/9pqq1+f4pnC
         utog==
X-Forwarded-Encrypted: i=1; AKwUvBwfAewVP8Yp8Re4xy2OIWT/pwsFr+q9Icnlycuf/uift7WfDCjnYC/+BfcZ6gGbV6u5ii0oLWsarV6bgEx3nQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lBZK8zZOBSHpHprY+xl7caKb6CNQSHLa5XDCdK3LEUewf69lOg
	4DDpAGXbuLPQVMhrTf6XhHb9/+KP+7WNxo+gtshVK9xUypRMt2KoN7S9
X-Gm-Gg: AYBFou2knIHdHT1N+LED1eD1OWV+9G0kCGm+/zriWQc8+dSYkzy6Tonr+svLGOvIdKb
	w2oSjELCUAFXURM39gnf3oGMs8iuayGijMHzZXZ5lzhwEXISw8jPduM7nxjBO9cBLASGUiToX7y
	70nvy6XNBmFztgyks6LqE4gkmgTz0J53yj/N3wc80Q6MEJb8QVQ6lxUGDGjrlq7FYjHIKJBsyuJ
	vasBWmRYI4Xjp+PfYqCbx/EDWor6fMuBjKQOfurS8cQWpuJaa9yA/y79L6f4r64foGd3P+PzwFp
	WPaLW8Oo++6qu9lkFM9g/WdIcnvG2ImyxdgsaHq2gLKo7Xzz+dZQPFC7hXv1Ln/drjhQE1QRiOi
	BlBGvg4Z24oV6U/ATKwALx0D39YSS66/6CP1BgTOEvsUSznym8cnuMInOL16JxNvDD3HuyEysl2
	lkKG09BeEm4wViPVCmkHDuhCSdgNo2LOBETRn+QA+gRzdRtkbhso36zL8c5+uEoEzwN+TKyw==
X-Received: by 2002:a17:90b:50c8:b0:39d:f773:37b5 with SMTP id 98e67ed59e1d1-39df7733906mr12070641a91.0.1789475938897;
        Tue, 15 Sep 2026 05:38:58 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:38:57 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v6 04/11] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Tue, 15 Sep 2026 20:37:53 +0800
Message-ID: <20260915123802.1561724-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_133900_975017_5C453E66 
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

Add device tree binding documentation for the Synopsys DesignWare
XPCS integrated on the Rockchip RK3568 SoC.

The XPCS is accessed over the APB3 bus and internally connected to
a Naneng Combo SerDes PHY.  It supports 1000BASE-X, SGMII, and
QSGMII modes, with four MII ports.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../net/pcs/rockchip,rk3568-xpcs.yaml         | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
new file mode 100644
index 0000000000000..703fcff0e3f70
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
@@ -0,0 +1,110 @@
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
+  The block contains four MII ports that can be individually enabled and
+  routed to one of the Ethernet GMAC controllers via the pcs-handle
+  property in the MAC device tree node.
+
+properties:
+  compatible:
+    const: rockchip,rk3568-xpcs
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
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
+  phy-names:
+    const: serdes
+
+  power-domains:
+    maxItems: 1
+
+patternProperties:
+  "^ethernet-pcs-mii@[0-3]$":
+    type: object
+    description:
+      One of the four MII ports of the XPCS. The port is linked to an
+      Ethernet MAC controller via the pcs-handle property in the MAC's
+      device tree node.
+
+    properties:
+      reg:
+        description: MII port number.
+        enum: [0, 1, 2, 3]
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - clocks
+  - clock-names
+  - phys
+  - phy-names
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
+      #address-cells = <1>;
+      #size-cells = <0>;
+      clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+      clock-names = "csr", "eee";
+      phys = <&combphy2 PHY_TYPE_SGMII>;
+      phy-names = "serdes";
+      power-domains = <&power RK3568_PD_PIPE>;
+
+      ethernet-pcs-mii@0 {
+        reg = <0>;
+      };
+    };
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
