Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAE66C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 08:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4DHOxOFkze9ttfVZK8ytnGjuclMXPpHHGfiwXgbfRBI=; b=KMdoTzBxLOtFXH
	MJcYM0xXaCblCKA2AFM6jWFkTayC+MI8O74GZ8rpNYskF7GI+kSYIiMoawgGjj58rY6jYKZqTdTso
	lAqkre5sVJ8b42/eX+/iK2c9mczNtHBVbOqbA+/fRuf4WudDfrzEq75waPa160oUrLdJwHV32fycT
	1AEi+k64QDjFKobsOreAhETbr05tjCEuEVP1EYnNHLvrcxm1PsYCkwPJCW8CXtNBOmCFTZhynmfwa
	MjNOAweSkolZJR8Ap4ZtmlXftpzaT8sbPc6xhrMgF1786xOV9vczKFabtkFRQ/9Bo7+TZdY4v0DIk
	9rcZR3FLQf7iri2KRm8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUj8-00000006OmO-0Aef;
	Mon, 26 Aug 2024 08:05:26 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUj4-00000006OkV-33ns
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 08:05:24 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47Q856kA025051;
	Mon, 26 Aug 2024 17:05:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: enable PCIe on M.2 E key for Radxa ROCK 5A
Date: Mon, 26 Aug 2024 17:04:56 +0900
Message-ID: <20240826080456.525-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_010522_999617_B3A8CA34 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
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

Enable pcie2x1l2 and related combphy/regulator routed to M.2 E key
connector on Radxa ROCK 5A.

Tested with Radxa Wireless Module A8:

$ lspci
0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0004:41:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8852BE PCIe 802.11ax Wireless Network Controller

$ ip l
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: end0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
    link/ether c2:58:fc:70:55:86 brd ff:ff:ff:ff:ff:ff
3: wlP4p65s0: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN mode DEFAULT group default qlen 1000
    link/ether 2c:05:47:65:5b:ed brd ff:ff:ff:ff:ff:ff

$ lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 002: ID 1a40:0101 Terminus Technology Inc. Hub
Bus 001 Device 003: ID 0bda:b85b Realtek Semiconductor Corp. Bluetooth Radio
Bus 002 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 003 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 004 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 006 Device 002: ID 0789:0336 Logitec Corp. LMD USB Device
Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

$ hciconfig
hci0:	Type: Primary  Bus: USB
	BD Address: 2C:05:47:65:5B:EE  ACL MTU: 1021:6  SCO MTU: 255:12
	UP RUNNING
	RX bytes:2698 acl:0 sco:0 events:329 errors:0
	TX bytes:69393 acl:0 sco:0 commands:329 errors:0

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 953a722198fe..294b99dd50da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -65,6 +65,18 @@ vcc12v_dcin: vcc12v-dcin-regulator {
 		regulator-max-microvolt = <12000000>;
 	};
 
+	vcc3v3_wf: vcc3v3-wf-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_wf";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&pow_en>;
+		pinctrl-names = "default";
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc5v0_host: vcc5v0-host-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_host";
@@ -114,6 +126,10 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &combphy2_psu {
 	status = "okay";
 };
@@ -293,6 +309,14 @@ rgmii_phy1: ethernet-phy@1 {
 	};
 };
 
+&pcie2x1l2 {
+	pinctrl-0 = <&pcie20x1m0_pins>;
+	pinctrl-names = "default";
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_wf>;
+	status = "okay";
+};
+
 &pinctrl {
 	leds {
 		io_led: io-led {
@@ -300,6 +324,12 @@ io_led: io-led {
 		};
 	};
 
+	pcie {
+		pow_en: pow-en {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	power {
 		vcc_5v0_en: vcc-5v0-en {
 			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
