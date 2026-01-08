Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D52DD1489A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 03:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bwtOiDShw7UXLIf8dvbadaZ4PaCAhx686ubBdpJl/is=; b=YHP7y32i9ssqgY
	HwbyQ6z6rl6k7nz83a1LqwjiAvuo4bLjSlhqINzK+/8/US1Jz/6Vh/n3cDVH2fsycTb2RKAcOhbiF
	RAy298xWIYhON3ikmcIhGW+osCNv3Q9L+O+4of5IYCoKciBiabzH9dOHNjeUASOz5YkTos9q53xW5
	SwEwWo8v3KAAFQYlc9yhO/7/rJowu31mUDu/M/IH1O10i+wJH6Tx2zobCuqkmXXcLSX8DGVK6/0cH
	Cysp13HHDRrMFOk2LOttCyM3bE5JOciYnwEbg7eBUCsIs17DDKBEbVYNh9RSsXPmtTkFCC+8Z5FTI
	v4ewlaQvhFGst12iUPmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdgvs-0000000FtK0-0VEn;
	Thu, 08 Jan 2026 03:43:32 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdgvo-0000000FtJg-46eD
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 03:43:30 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 6083h1iK008024;
	Thu, 8 Jan 2026 12:43:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        kylepzak@projectinitiative.io, damon.ding@rock-chips.com,
        alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
Date: Thu,  8 Jan 2026 03:42:52 +0000
Message-ID: <20260108034252.2713-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_194329_256891_4DBCB769 
X-CRM114-Status: UNSURE (   8.25  )
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

The BL24C16 EEPROM implemented on the Radxa ROCK 3C, 5A, and 5C [1]
[2] [3] is designed to have data written during factory programming
(regardless of whether data is actually written or not), and we at
Radxa permit users to read the data but not write to it. [4]
Therefore, we will add a read-only property to the eeprom node.

[1] https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13
[2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
[3] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf p.18
[4] https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v4:
- Drop Fixes tags (Chukun Pan)
Changes in v3:
- Reword commit message
Changes in v2:
- Reword commit message (Dragan Simic)
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index 80ac40555e02..fa28b32f6910 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -466,6 +466,7 @@ eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		read-only;
 		vcc-supply = <&vcca1v8_pmu>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 045a853d39ec..0991f6a21190 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -233,6 +233,7 @@ eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		read-only;
 		vcc-supply = <&vcc_3v3_pmu>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index b837c4e08cec..7fe42f4ff827 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -325,6 +325,7 @@ eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		read-only;
 		vcc-supply = <&vcc_3v3_pmu>;
 	};
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
