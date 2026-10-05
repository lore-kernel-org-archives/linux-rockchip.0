Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BE6FCA6004
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDG/5k2Czt7Cptrn4YK20mW3TWheLdRQuZqHh6Yoo+k=; b=eCtqyD6tOIlv6j
	aCleenoJFwCu6Gg5epHXqvfqh7uE+ZC98r6c+4DPCe5Myd7hNf9DVxkaqD+ZQVb8DjgISDBzt0GYb
	7NGLvg9I00OIu5cU+lHwyVE5+NE8zmOz8jbfoot6Ut7tvYILqy5/Fx023ZrX48c1AKA6O1f5zDLJL
	BHXIkOMEgHJG4ymatjXE6WTXwT8L2gqcDPmZsFP5saOJZlsNxe+226uv764eQ/R3ohOdHa7xLcKxK
	bVpRMejTegS8Q16C9jWuzN1STJEleqgiT6NCSDAXFSGisHuGq8BOPcgbUAeTdW3ppTskc5zVdyk1B
	YKi+TRttmZmuHc6NkF8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrMX-0000000HHhX-3WLO;
	Mon, 05 Oct 2026 22:40:49 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrMV-0000000HHfL-1cEL
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:40:48 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-398a0a87595so1450067a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791240047; x=1791844847; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=nKUSphK1E/rs2WwcZ7YlCTl+GC0WZuZyJivoEif4ilE7SA6W0XopbrxijUaFLgor15
         flDSOmjsUcAipw59WCYe4q5/WyC7xlgxXHLufoiYehBYGHgi8ORZfiJ1vM1P/vDULYIW
         z5xuXbSd3780/gBH6hgJId3Bq6dcatW09EVtjuYs6bpxqmAv/ztn/Yqud167xy1hY7AG
         gyrbhVJ+WxNvWxdwR0ajlpPrxZ7lTNpphxiNE0vfP1nfVSRktHoj9S2U9yEfgXOa3rHB
         mD9ghukF/st8lLAKcyeSmzmH0ELNnRpJ/QI1IvERfYt29oqLRnb5xTAkNPc/nPCMBGoj
         gY4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791240047; x=1791844847;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=G30OREnYxfm+QqFCMEQj/6J/oSs37KAIi1NZkaXswKXTMFGc0lqtO7rQuakh4kYpjD
         QITdwO9mp6BOZMKsHhgkC6V29b8O2SqaHM/xZjxqKVGyOC8V8JAxQX6LVqqxYFHLNJd7
         wK2kJ2eLr4TxERaC6eN/9lYvInKDQlsaB9NjgT0TMXjqY05thbanv5DXma5hCFUOfaip
         6aGpIA+MK/PCLaYo0vuT4mZtb8RA9Xz3j5DhpyvK+u91WB1KI62B0Sn6un4r4I765Lx5
         n2cxArfA/cAiFd7q4OEElGP+aDTW34BJBqjkmWOTHHparHn50tteekQOqNSVC/GyvzNr
         ylnQ==
X-Forwarded-Encrypted: i=1; AKwUvBxkU/laXdyIznrDreAy1ddlPE9MInadbwMBC64xpyvcDUh+pI/iT7Als85acqkf+eOlpH/rVyEkgdKRmVHTig==@lists.infradead.org
X-Gm-Message-State: AFq9FYIhVIlKjT7LCM3pEXyG+tsln22oBgcNu49cL3kwQoUE3t9XcckC
	KCvyHuAlWIZcSe1PlRX+u/U2ndW2ADmZEsUj+lJoRxfqSj32+tNhJBc1
X-Gm-Gg: AYBFou0Drp77Pw43TZLUxoBr4U98gyfUavlIZDA3yBklvehm0trCOXyU4S3VyCLIMkw
	PzSrn7SAXqnOtjzIcuDAU2vzc2mC9op/rbdIqFpoGd5SZqVBUdJs4fsCu8+Ih/dYzqAVihEVvPu
	hFRvokF4+BejLor6gOQHVSvsP32EdEr+jktfci0VdmMbz56txmy7hEhJW/D2ktQ0zadghUhJIfK
	ttSpf6mjEPE3gyP2llXclzw7i1UvF54ddYnbtE3GvdBuP7MdpvbOogHQXJRY11k0cQ/TObgSL+L
	nANSiZ+K0hH62i8zcLOiEMZgncQAKY1TVIdkoLJ2+qNWpXUieVLUNCAFD8KjW5FL13xENwnzHN1
	TdM6RJ4Atw62upEM+92ARXQzkv/puXvrS++CwtHTUkGY94TMhQ4a4q0l+SJxKzmV7MLAEvqc2mt
	vk2md415OgY/BPwLHoTtvFkAIWp/zpglI3EX0tIRqnd1npaO27rL7iB/esB60SlhkLB24zE0Jj3
	rqHFwY=
X-Received: by 2002:a17:90b:2886:b0:3a8:2c7e:8986 with SMTP id 98e67ed59e1d1-3a82c7e90c0mr2473707a91.17.1791240046758;
        Mon, 05 Oct 2026 15:40:46 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a853e66d7fsm1496243a91.5.2026.10.05.15.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:40:46 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v10 2/2] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Tue,  6 Oct 2026 06:40:08 +0800
Message-ID: <20261005224008.1140250-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261005224008.1140250-1-coiaprant@gmail.com>
References: <20261005224008.1140250-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_154047_448540_04B57A0E 
X-CRM114-Status: GOOD (  11.87  )
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

The Ariaboard Photonicat has a Motorcomm YT8521SC Gigabit Ethernet PHY
connected to GMAC0 via XPCS SGMII.  Enable the necessary nodes to make
this port functional.

Add rockchip,sgmii-mac-sel = <0> to the already enabled combphy2,
to route the SGMII interface to GMAC0.  RK3568 has three Combo PHYs
that can carry SGMII; which one is wired to the XPCS is a board-level
choice, and Photonicat uses combphy2.

Enable the xpcs node and its port 0 sub-node, referencing combphy2
as the SerDes PHY.

Add the mdio0 node with the YT8521SC PHY at address 3, including its
reset GPIO and LED configuration.  Also add LED configuration for the
existing RGMII PHY on mdio1 for consistency.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 74 ++++++++++++++++++-
 1 file changed, 72 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 58c1052ba8ef3..fdaa4a2a4328b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3568.dtsi"
@@ -241,6 +242,7 @@ &combphy1 {
 };
 
 &combphy2 {
+	rockchip,sgmii-mac-sel = <0>;
 	status = "okay";
 };
 
@@ -260,9 +262,18 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
-/* Motorcomm YT8521SC LAN port (require SGMII) */
+/* Motorcomm YT8521SC LAN port */
 &gmac0 {
-	status = "disabled";
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>;
+	assigned-clock-parents = <&clk_gmac0_xpcs_mii>;
+	managed = "in-band-status";
+	pcs-handle = <&xpcs_mii0>;
+	phy-handle = <&sgmii_phy>;
+	phy-mode = "sgmii";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim>;
+	status = "okay";
 };
 
 /* Motorcomm YT8521SC WAN port */
@@ -341,6 +352,36 @@ &i2s0_8ch {
 	status = "okay";
 };
 
+&mdio0 {
+	sgmii_phy: ethernet-phy@3 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x3>;
+		max-speed = <1000>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PC6 GPIO_ACTIVE_LOW>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+		};
+	};
+};
+
 &mdio1 {
 	rgmii_phy: ethernet-phy@3 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -350,6 +391,25 @@ rgmii_phy: ethernet-phy@3 {
 		reset-gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_LOW>;
 		rx-internal-delay-ps = <1500>;
 		tx-internal-delay-ps = <1500>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_WAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_WAN;
+				default-state = "keep";
+			};
+		};
 	};
 };
 
@@ -586,3 +646,13 @@ &xin32k {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clk32k_out1>;
 };
+
+&xpcs {
+	phys = <&combphy2 PHY_TYPE_SGMII>;
+	phy-names = "serdes";
+	status = "okay";
+};
+
+&xpcs_mii0 {
+	status = "okay";
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
