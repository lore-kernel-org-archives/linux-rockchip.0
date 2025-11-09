Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BFF1CD13D3
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 14:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NzaOnyZ6yVPAHjNIfdS4pQDfMMK/YoOQFTLeriPlUM=; b=bIQ1rMCp3qxFZf
	+pu8GdH1LMP4Q0jazzjp2Uunu3Hl1fUTCAbLqgw1llE2H4pV1rnbjm6Oy8MKZ1aPo2sCkCVfgltWD
	3GhzEK2iPFjkTcd4v7UaSt4BI+4sZHerY0T623J0tvCPTDjkEtgvIuBTVuRjf7AtFVHDC1Ei0U+Wd
	WN1VxvBj4QWLnG93TMh6uNecOSwMX7+ipdqq5L4H53cYMdFo0Kz/fnCAxMT9HtqB3mwBCovrLb3hr
	hVNo8dDaZCx3wdHrce3v0MmTFikR9A+TvN4vUk8bIhpP/ZZoDNkH7IfMw0X7fcI5NotZPQD2sBqGo
	y4cuIi4SH35HE/xOjpOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GR-000000043zE-3EU2;
	Sun, 09 Nov 2025 14:19:31 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GK-000000043r8-3gOt
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 14:19:29 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5e0015030;
	Sun, 9 Nov 2025 23:19:08 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 14/14] arm64: dts: rockchip: Add eMMC to uSD module support for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:59 +0000
Message-ID: <20251109141859.206835-15-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251109141859.206835-1-naoki@radxa.com>
References: <20251109141859.206835-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_061925_208650_BB6827B4 
X-CRM114-Status: UNSURE (   7.84  )
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

Add support for Radxa eMMC to uSD module[1].

[1] https://radxa.com/products/accessories/emmc-to-usd

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- New
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index f5cc2f91b1456..603d914374bdd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -556,7 +556,6 @@ &sdmmc {
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
-	no-mmc;
 	no-sdio;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
