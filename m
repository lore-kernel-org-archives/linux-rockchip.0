Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E5C4CD13D2
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 05:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKoE3Mv+KndrMUzEZj0YSfZ7DFjq/jNWve+h683+gKc=; b=UQrmzCsSJpvkLF
	A0Qd9pUD8ADZ/ZM/hrPEJpdavdSH+cOFiXE+x22ZZdHR2Hc5iUj1PZ0ErN4vsACmcCZopPgU7ee5S
	UYBijouZLs15iDlLc01ov8ul46t7IrpDmTADRXDNQyJt8/pcXb55ZxMq6Sv66XZEMjMDXIwByF7oA
	CO0oZxLDWwVqg8AtgOWzm3qZf9kEarrD1QiD8GrPZeonGpTGExJVxLgkAZDJZO57F8d/2zgpedOcD
	PMIvxUMhbVMpyUSUcwkhq8Bp7yOBWC1KT2dzRgTvR4p3OPuj9FE4XSOGCBePojtOihvCeJ5tdsWP2
	ZH6K90GXdwug0kMKH+kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgdj-00000006XTu-32Qm;
	Tue, 11 Nov 2025 05:09:59 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgdg-00000006XSC-10WD
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 05:09:58 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB59RuV021826;
	Tue, 11 Nov 2025 14:09:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com,
        sebastian.reichel@collabora.com, kylepzak@projectinitiative.io,
        alchark@gmail.com, dsimic@manjaro.org, amadeus@jmu.edu.cn,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 5A
Date: Tue, 11 Nov 2025 05:09:21 +0000
Message-ID: <20251111050924.54880-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251111050924.54880-1-naoki@radxa.com>
References: <20251111050924.54880-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_210956_489561_FE014DD2 
X-CRM114-Status: UNSURE (   8.74  )
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

The VCC supply for the BL24C16 EEPROM chip found on Radxa ROCK 5A is
vcc_3v3_pmu, which is routed to vcc_3v3_s3 via a zero-ohm resistor.
Describe this supply.

Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
Link: https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 428c6f0232a34..041a0fff22ccb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -233,6 +233,7 @@ eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		vcc-supply = <&vcc_3v3_pmu>;
 	};
 };
 
@@ -600,7 +601,7 @@ regulator-state-mem {
 				};
 			};
 
-			vcc_3v3_s3: dcdc-reg8 {
+			vcc_3v3_pmu: vcc_3v3_s3: dcdc-reg8 {
 				regulator-name = "vcc_3v3_s3";
 				regulator-always-on;
 				regulator-boot-on;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
