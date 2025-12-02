Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78EFBCFD2F6
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 08:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqBi+08wcPmA5ZJ0tU3wOrlZECg3gJaIyE4odpIpxo8=; b=O75icXhB9Qc5vR
	2SB1TXcWlb9KFVRXccAV30JVz3S5UXqQSwsNvJYlGfQGO5+DUvZ8ztThKMK7JoRqfCC00KQfa/DFH
	J83oiV6pybWXnPuk5sqbasUAcfx+eAw9IMf9Qn6elGoFuyZtEwWXjNmmgRnQQnZcXWQZOSHGR2ac0
	sbByQzNC4WdiAtbHS7TP3pdIjNcaHLsPzDomZywMvTD4oM8ZzZ/zMp+a+uT1IeUZkyGTSvKT/Y+M4
	Ff701o27rj8tVBgvBLvhccFQd+SGyKbDNBQbrr+DrukE7u6OVDQzputZ9nMzx8dHl9ShZK3O4ZRJc
	td6sN4fqucTHtZer3b3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQM7T-000000054YS-41FT;
	Tue, 02 Dec 2025 08:52:23 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQM7P-000000054Xs-43ab
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 08:52:22 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5B28noM6008635;
	Tue, 2 Dec 2025 17:49:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: brgl@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, didi.debian@cknow.org, wens@kernel.org,
        nicolas.frattaroli@collabora.com, detlev.casanova@collabora.com,
        stephen@radxa.com, sebastian.reichel@collabora.com,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [RESEND PATCH 3/3] arm64: dts: rockchip: Add EEPROMs for Radxa boards
Date: Tue,  2 Dec 2025 08:49:41 +0000
Message-ID: <20251202084941.1785-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251202084941.1785-1-naoki@radxa.com>
References: <20251202084941.1785-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_005221_418033_AD3581C1 
X-CRM114-Status: GOOD (  10.57  )
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

The BL24C16A EEPROM is found in the schematics for Radxa CM3I, Radxa
ROCK 3A, 3B, 5B+, and 5T. [1] [2] [3] [4] [5]

The BL24C16F EEPROM is found in the schematic for Radxa ROCK 4D. [6]

Add these eeprom nodes.

These are designed to have data written during factory programming
(regardless of whether data is actually written or not), and we at
Radxa permit users to read the data but not write to it. [8]
Therefore, we will add a read-only property to the eeprom node.

[1] https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_v1310_schematic.pdf p.8
[2] https://dl.radxa.com/rock3/docs/hw/3a/radxa_rock_3a_v1310_schematic.pdf p.7
[3] https://dl.radxa.com/rock3/docs/hw/3b/Radxa_ROCK_3B_V1.51_SCH.pdf p.35
[4] https://dl.radxa.com/rock5/5b+/docs/hw/radxa_rock5bp_v1.2_schematic.pdf p.29
[5] https://dl.radxa.com/rock5/5t/docs/hw/radxa_rock5t_schematic_v1.2_20250109.pdf p.36
[6] https://dl.radxa.com/rock4/4d/docs/hw/Radxa_ROCK_4D_SCH_V1.12.pdf p.23
[7] https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 10 +++++++++-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts    |  8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts    |  8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts    | 14 ++++++++++++++
 .../boot/dts/rockchip/rk3588-rock-5b-plus.dts      | 10 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts    | 10 ++++++++++
 6 files changed, 59 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
index 729e38b9f620..f97a0eb7f7c0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -321,7 +321,7 @@ regulator-state-mem {
 				};
 			};
 
-			vcc_3v3: SWITCH_REG1 {
+			gpio_vref: vcc_3v3: SWITCH_REG1 {
 				regulator-name = "vcc_3v3";
 				regulator-always-on;
 				regulator-boot-on;
@@ -340,6 +340,14 @@ regulator-state-mem {
 			};
 		};
 	};
+
+	eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		read-only;
+		vcc-supply = <&gpio_vref>;
+	};
 };
 
 &pinctrl {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 44cfdfeed668..9214e38648f2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -532,6 +532,14 @@ regulator-state-mem {
 			};
 		};
 	};
+
+	eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		read-only;
+		vcc-supply = <&vcc3v3_pmu>;
+	};
 };
 
 &i2c3 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 3d0c1ccfaa79..69001e453732 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -480,6 +480,14 @@ regulator-state-mem {
 			};
 		};
 	};
+
+	eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		read-only;
+		vcc-supply = <&vcc3v3_sys>;
+	};
 };
 
 &i2c5 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 7023dc326d0e..899a84b1fbf9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -682,6 +682,20 @@ hym8563: rtc@51 {
 	};
 };
 
+&i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c6m3_xfer>;
+	status = "okay";
+
+	eeprom@50 {
+		compatible = "belling,bl24c16f", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		read-only;
+		vcc-supply = <&vcc_3v3_s3>;
+	};
+};
+
 &mdio0 {
 	rgmii_phy0: ethernet-phy@1 {
 		compatible = "ethernet-phy-id001c.c916";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
index 07a840d9b385..30d15c7e860a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
@@ -69,6 +69,16 @@ wwan-wake-n-hog {
 	};
 };
 
+&i2c1 {
+	eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		read-only;
+		vcc-supply = <&vcc_3v3_s3>;
+	};
+};
+
 &pcie30phy {
 	data-lanes = <1 1 2 2>;
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
index 0dd90c744380..425036146b6d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
@@ -60,6 +60,16 @@ &hdmi_receiver {
 	status = "okay";
 };
 
+&i2c1 {
+	eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		read-only;
+		vcc-supply = <&vcc_3v3_s3>;
+	};
+};
+
 &pcie2x1l1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie2_1_rst>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
