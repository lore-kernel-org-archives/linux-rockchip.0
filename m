Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AD82CCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 05:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXkcCpw6AxI6+rYRwpu2McFhEeo9P4xYiD1e3jDhWsw=; b=FkfO/K0zQDJnLt
	ympY228d9gxdG+vmnyWtZmFk3R/4ei0CVEKFT5AOiiHKl4IoXXRv+4XRxxQc12hDUdszrmLJsu52a
	bRlAS4ZaUOGaRLxeFtPCgOEE/c4M56+jtTqifDSKkW33rXZWn0yLM2/bbAMiCWHjw8fv6pXXptG9r
	ydP61mCEsSRRIIiZB1Ef1mlvsgT4IgMi0EkHnULCD6MrGqOxf2Cey87j7QlOhd3cpFdgw/lQT22Yw
	iuw9HDG5H7eLWu8vkE4f8SDZGEdrjxEwlJBd5DtoWBdHrQRNeP9g17Q2ERw9XaQElm1SALaUV8IQ/
	PhtLH3r/+MXc1pdYJpqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgdj-00000006XTa-1j7s;
	Tue, 11 Nov 2025 05:09:59 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgdg-00000006XSF-0rQG
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 05:09:58 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB59RuX021826;
	Tue, 11 Nov 2025 14:09:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com,
        sebastian.reichel@collabora.com, kylepzak@projectinitiative.io,
        alchark@gmail.com, dsimic@manjaro.org, amadeus@jmu.edu.cn,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
Date: Tue, 11 Nov 2025 05:09:23 +0000
Message-ID: <20251111050924.54880-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251111050924.54880-1-naoki@radxa.com>
References: <20251111050924.54880-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_210956_461069_07C9454B 
X-CRM114-Status: UNSURE (   8.47  )
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

Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and 5C SBCs
read-only, because they contain factory-programmed data that isn't
supposed to be modified by the end users.

Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
Fixes: 3ddf5cdb77e6e ("arm64: dts: rockchip: add Radxa ROCK 5C")
Link: https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13
Link: https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
Link: https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf p.18
Link: https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index 80ac40555e023..fa28b32f69108 100644
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
index 041a0fff22ccb..d844a842d4cce 100644
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
index dd7317bab6135..665eecce063a8 100644
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
