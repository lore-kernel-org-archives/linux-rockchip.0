Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F8D1D116F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 04:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2BwotaTaxsHCM9EVwtAxxagC7XHMcPb6XN/D+9DYCY=; b=ruOYTL301PTCo9
	AE1SKlayU3b0tFilOlpmBS+x5k1Dt7uW2jEgGsW0E2t/kgB7qnpRQOF+hJmyXdDbHvD6Dazh6eSng
	rZeJNtdSGgMN1rXg8e6T0imD4zvVWstUNx9xBGriwrCUTpFXhXe0Epk/7VS9b52DxqVHjdlpAOl/X
	bTC5LvxeZv3/i14srfHEtzpAcOuVIYMK6Ty7IRS16L52J/v6FA2ryBM+odd8gOyY+A9KZLH2lm90R
	UL3VVdz86zOFw9TGY6RDGiR1/9ryLmNcccndmwWWEJiy5k0vEnMUrwhNPissEUTJNo5qWAm2itVdK
	CkBAGN6aMgYsZ3LE7J/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQISJ-00000004o1d-2m3C;
	Tue, 02 Dec 2025 04:57:39 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQISG-00000004nzR-1SYQ
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 04:57:37 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5B24uxmI007827;
	Tue, 2 Dec 2025 13:57:03 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: brgl@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, didi.debian@cknow.org, wens@kernel.org,
        nicolas.frattaroli@collabora.com, detlev.casanova@collabora.com,
        stephen@radxa.com, sebastian.reichel@collabora.com,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add EEPROMs for Radxa ROCK 4 boards
Date: Tue,  2 Dec 2025 04:56:54 +0000
Message-ID: <20251202045655.154543-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251202045655.154543-1-naoki@radxa.com>
References: <20251202045655.154543-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_205736_605337_A83CF3D6 
X-CRM114-Status: GOOD (  10.83  )
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

The BL24C04A EEPROM is found in the schematics for Radxa ROCK Pi 4A+
and 4B+. [1] [2]

The BL24C16A EEPROM is found in the schematics for Radxa ROCK 4C+, 4SE,
Radxa ROCK Pi 4A, 4B, and 4C. [3] [4] [5] [6] [7]

However, newer boards/batches should have the BL24C16A, but older ones
may have the BL24C04A. (the ROCK Pi 4B+ I own has a 16Kb EEPROM)

For the ROCK Pi 4s (except the relatively new ROCK 4SE), add the
BL24C04A eeprom node for backward compatibility.
For the ROCK 4SE, add the BL24C16A eeprom node.

These are designed to have data written during factory programming
(regardless of whether data is actually written or not), and we at
Radxa permit users to read the data but not write to it. [8]
Therefore, we will add a read-only property to the eeprom node.

[1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1730_schematic.pdf p.17
[2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1730_schematic.pdf p.17
[3] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4C+-V1.411-SCH.pdf p.22
[4] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4-SE-V1.53-SCH.pdf p.17
[5] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4a/ROCK_4A_V1.52_SCH.pdf p.17
[6] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4b/ROCK_4B_v1.52_SCH.pdf p.17
[7] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi4c_v12_sch_20200620.pdf p.17
[8] https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts |  8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts     | 12 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   |  8 ++++++++
 3 files changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 74160cf89188..f95fd92d58ba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -453,6 +453,14 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
+
+	eeprom@50 {
+		compatible = "belling,bl24c04a", "atmel,24c04";
+		reg = <0x50>;
+		pagesize = <16>;
+		read-only;
+		vcc-supply = <&vcc_3v0_s0>;
+	};
 };
 
 &i2c3 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts
index a8b8d4acc337..c0b931b3c640 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts
@@ -8,6 +8,8 @@
 #include "rk3399-t.dtsi"
 #include "rk3399-rock-pi-4.dtsi"
 
+/delete-node/ &eeprom;
+
 / {
 	model = "Radxa ROCK 4SE";
 	compatible = "radxa,rock-4se", "rockchip,rk3399";
@@ -17,6 +19,16 @@ aliases {
 	};
 };
 
+&i2c0 {
+	eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		read-only;
+		vcc-supply = <&vcc_3v0>;
+	};
+};
+
 &sdio0 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 046dbe329017..a8ab043e4062 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -456,6 +456,14 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
+
+	eeprom: eeprom@50 {
+		compatible = "belling,bl24c04a", "atmel,24c04";
+		reg = <0x50>;
+		pagesize = <16>;
+		read-only;
+		vcc-supply = <&vcc_3v0>;
+	};
 };
 
 &i2c1 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
