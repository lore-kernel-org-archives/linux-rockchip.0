Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 513A2C982C4
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 12:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVEThscgD/t1R6g86EdVXKWkwOFKauqj9Hm2tHdRtPA=; b=dZ66u1mZIdu7Gq
	KanvJkhYJL5/THnt2y30jAADFofYuxAbaPKKfXXP2z13edv7P2Ijx4un1hc72cas+AI+y/6jISBv+
	6u3VQIzWcUZG0H2SpRTIGBRGxx5+jCj8PXwOJqneQyGQsfra1GYkJVNFdx78PuI04rhgN+qmByZli
	90G4ibsdnciLtsEErRaJbfc+TPjipemnoOBFohy7q0oW0bTWFg2A4/kWooTatJFflDEcueD3uPoQJ
	MQTQdiT/Qbb0x3X0FZ/RW5gCnI0wEvy2at4g2cPXpIewGrZxgh4DrF0t6zifNUucgy7IWFFROogT8
	DwpwDAp5RMIvgEKPfHEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRa-00000006Xvg-1uVZ;
	Tue, 15 Sep 2026 12:39:26 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRJ-00000006XLk-0xVn
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 12:39:14 +0000
Received: by mail-pj2-x01.google.com with SMTP id d9443c01a7336-2dae660f31bso31615125ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 05:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475948; x=1790080748; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=af5XJnE7hcWtAkVsrU4T0JVcIxPb3Aa/NhPJOVNgxm8=;
        b=A+umL6mM38G9nU3EOVVJB35+J8QCDJS7Q1K2eXG+bhJHaIEGBJYzBVy/Xdi1L7qlSB
         Zp9Feu1fVUCqf1HJUxnoHK4OV+4sbVWcHb/OlvRXnESyBI/elGa8mt6i0WSTeINBs9Fs
         ytnRLNdgIx3rWVuLhr3SblBx4+LaKA6XlIhuYHH88tLcfXHuUXOk4vCHFfp+0BUKhWm4
         PqRyXmZ+9ICwobT58GiUezVx+JxGjbTrOdAHEWC7TKuCcVKVja8WLTc67pbS7I/eAme9
         xX7C6HAfbAseH54gKE/Rg/HduFqH4c1y2B1GUb/oOqvvl6R5kFXC8BNzKIR2WFbcIcyr
         e+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475948; x=1790080748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=af5XJnE7hcWtAkVsrU4T0JVcIxPb3Aa/NhPJOVNgxm8=;
        b=MuoXYD0Pj1U5d5oyuFjSPW5EScdxQjGDRMFAa86X2dzmegKnQewGbeJNLoShm95IWc
         STLvL0/kaakfnVffsAP07vx54hQhlm71cOakNkDX65A7W+gqNmnTshJ2qZ507JTe+l+W
         G48g5W/SeuSiyNQf/2wmvXkwHN4ox8hwCV+S+BQBKbbBRF9VIJu5xrfcWiXIhVfYm7GI
         zi/yoOwFJSy0RpVUmo8JFw3TS7YCHtEn5R2OV4yc9eKKEtT5ml+ss6RKTLzxEEwZywLW
         RL5Kui0RCBuik/2OuJuWf2HWwl08+wlQnINypXnX1PuhLeIG3ZKseQEhHbp+mAqOCZOk
         3h+w==
X-Forwarded-Encrypted: i=1; AKwUvBwuPoEm1MlZeZ0Ir8W3Cysic07krN2MkrpBrk6loIEGN5ble1ten78sZZh5AJVj3J5/s73SNtwOfZeUwWAKEg==@lists.infradead.org
X-Gm-Message-State: AFuF++lMgz+1cb7J40wNlGhXLvnwCE0RSGmui/Iep7jptpyJjlMvYS0/
	dmW4y77z1r2yTMot8ft5kivGC+AyPnZV8R8K7Ej0dKtUM8zSk3wOSVs8
X-Gm-Gg: AYBFou2WVTvPiXYCWI2sjp3ixW27vJHQZR78ODSkeppZlMCHpTEnkdKbz9KvcAX4hyh
	QNEWLXj6EVnU/ndB9urWw3VP13nnDuRuJqeF3aSlKDZGRs51YDVN/aQGxBfbIxuTsDrc1FLVdFS
	uUhBqvqC98MWB7EyYoKIgCNpQJBi5re4bpSby2zgifRivA1OYOABUi13qgeZ0ZN9OsD2o9gGoFn
	GaDk8uzHDtuweMiO8MB0FN85MyNzMAHv2DZK2IFZYN5zZeAZmRaU9qSgvQWLxwAf7huUoKa8p5g
	rq1e1+n02/wRd1BnuIGGSVn5UGNROVFL35dSOpZi31+q0xAlJ+vqUm4/FDTxb1eVbU2dqxOosMB
	xuCQ/gpE3VJHRmnBv7UbKdH5lbkTLiQmvIq8arUXipwm+AucX4JWaSpksmPyAhcwMDz21ck2gm3
	rywv37d237GMoocK/gcMwU1vVYvsZe7ENDVbz/6lP39MvyrwWM06DM1Uubp2QlJCNLLYITdg==
X-Received: by 2002:a17:90b:440b:b0:39d:e784:3e1c with SMTP id 98e67ed59e1d1-39dec0f7193mr14930029a91.19.1789475947417;
        Tue, 15 Sep 2026 05:39:07 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:39:06 -0700 (PDT)
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
Subject: [PATCH net-next v6 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Tue, 15 Sep 2026 20:37:54 +0800
Message-ID: <20260915123802.1561724-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_053909_706108_49B06F24 
X-CRM114-Status: GOOD (  12.06  )
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

The RK3568 SoC integrates a Synopsys DesignWare XPCS that provides
the Physical Coding Sublayer for 1000BASE-X, SGMII, and QSGMII
interfaces via its four MII ports.  Add the XPCS device node and
its pcs-mii sub-nodes to the SoC device tree.

The XPCS device is accessed via the APB3 bus at 0xfda00000 and
requires the CSR clock (PCLK_XPCS) for register access and the EEE
clock (CLK_XPCS_EEE) for Energy Efficient Ethernet operation.  The
PD_PIPE power domain must be enabled before any register access.

Also add two fixed-clock nodes (xpcs_gmac0_clk and xpcs_gmac1_clk)
providing the 125 MHz reference clock for the GMACs when operating
with XPCS.  These clocks are used as the assigned-clock-parents
for the respective GMAC nodes in board-level device trees.

The XPCS node and its pcs-mii sub-nodes are disabled by default and
must be enabled at the board level when 1000BASE-X/SGMII/QSGMII is
in use.  The fixed-clock nodes are always present and do not have a
status property, as they are static clock sources.

The XPCS node also requires a reference to the appropriate Naneng
Combo PHY via the phys property at the board level.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 45 ++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 3bc653f027f1f..227d03e336043 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -110,6 +110,51 @@ sata0: sata@fc000000 {
 		status = "disabled";
 	};
 
+	xpcs: ethernet-pcs@fda00000 {
+		compatible = "rockchip,rk3568-xpcs";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x0 0xfda00000 0x0 0x200000>;
+		clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+		clock-names = "csr", "eee";
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+
+		xpcs_mii0: ethernet-pcs-mii@0 {
+			reg = <0>;
+			status = "disabled";
+		};
+
+		xpcs_mii1: ethernet-pcs-mii@1 {
+			reg = <1>;
+			status = "disabled";
+		};
+
+		xpcs_mii2: ethernet-pcs-mii@2 {
+			reg = <2>;
+			status = "disabled";
+		};
+
+		xpcs_mii3: ethernet-pcs-mii@3 {
+			reg = <3>;
+			status = "disabled";
+		};
+	};
+
+	clk_gmac0_xpcs_mii: clock-xpcs-gmac0 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac0_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
+	clk_gmac1_xpcs_mii: clock-xpcs-gmac1 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac1_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
 	pipe_phy_grf0: syscon@fdc70000 {
 		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
 		reg = <0x0 0xfdc70000 0x0 0x1000>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
