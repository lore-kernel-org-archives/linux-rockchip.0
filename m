Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B6A3CD13D3
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 03:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIg3GeIPFfHoFKLT48HR/dKThTBcsFJug1peqoVaqFw=; b=RqlQbUUjjHozms
	hTrX8uodL19laQwEDmA7Wgzd+2PR4e7y2iGDC4GhYtuu0VYwipJ8kyUWqTuGeZ7jDTtd/R0wzk7B2
	aqcXD/ns1BqcM9aLEXzqUfcWkGLGuZJicofRN11ZPcycIaUag2GHTGVMYxav1jL9cJhFaFEUwaCSu
	drJ7Ch3QVRHsxT9hfauPSnrB05MTHvP25S/MF8YKatwajfrEgXomaP0tFJm2XcoBeFlyajEPLDt9M
	AdOvUonjdQD1kB4u/hifH/ruUWkRqoz+Amf6KPQbwgW5Y7n9JOoK8tJsO0u4biEhkW+UaC1hTUbfg
	qB/QDZIznkcpeup3oO6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ1tr-000000085EU-2453;
	Wed, 12 Nov 2025 03:52:03 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ1tl-000000085Bn-3A8a
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 03:52:00 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AC3pbM9026136;
	Wed, 12 Nov 2025 12:51:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        pbrobinson@gmail.com, kylepzak@projectinitiative.io,
        damon.ding@rock-chips.com, sebastian.reichel@collabora.com,
        dsimic@manjaro.org, alchark@gmail.com, amadeus@jmu.edu.cn,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
Date: Wed, 12 Nov 2025 03:51:31 +0000
Message-ID: <20251112035133.28753-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251112035133.28753-1-naoki@radxa.com>
References: <20251112035133.28753-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_195158_055784_11477235 
X-CRM114-Status: UNSURE (   7.36  )
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

The VCC supply for the BL24C16 EEPROM chip found on Radxa ROCK 3C is
vcca1v8_pmu. [1] Describe this supply.

[1] https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13

Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Reword commit message (Dragan Simic)
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index 6224d72813e59..80ac40555e023 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -466,6 +466,7 @@ eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		vcc-supply = <&vcca1v8_pmu>;
 	};
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
