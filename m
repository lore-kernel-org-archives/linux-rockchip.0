Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B15A0CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 14:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3fg+GzN0XRIl9nxOTLHkHCabqIielglwNulFZ8HYc4=; b=CyY76JRjTaq8xn
	KMhklGMYFvGZhpWO5AAW5N73oTW/ylPdRZI3o311jqlhRGKjYyQlgQ3zNaRe5RFT+BI1Phw18gjUR
	U3lWAkAVGnIN1FZ1387Qf7H2yg2TlQkmSOwg6vhvWVl42MgO15GpKJspky9aKpIK6EahzXtvuuDss
	/GqjhpFxQMpL0jqSqBKiOnqjzYUvpbt4P/VqZJhZTh8649K6Zb096CYe0QsBkaBS/5jyrHFxuDsuS
	3rhcMCVM+ThVTukazwTKgby4w87dB/MYorsMMDIB5r7I1H3FGGt1M9ojtjCI1TWtMq5K0SL2QU5pt
	j1N4VI6gYebqDRg/RqTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GP-000000043vZ-0yKW;
	Sun, 09 Nov 2025 14:19:29 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GK-000000043r7-3g2Q
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 14:19:27 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5do015030;
	Sun, 9 Nov 2025 23:19:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 04/14] arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:49 +0000
Message-ID: <20251109141859.206835-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251109141859.206835-1-naoki@radxa.com>
References: <20251109141859.206835-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_061925_208311_238DD336 
X-CRM114-Status: UNSURE (   7.63  )
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

Due to the discussion about cd-gpios and sdmmmc_det pin
functionality[1], it would be better to use cd-gpios for now.

[1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid/T/#u

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- Add pinctrl-*
- Reword commit message
Changes in v6:
- Reword commit message
Changes in v5:
- Reword commit message
Changes in v4:
- None
Changes in v3:
- None
Changes in v2:
- None
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9a9430b2494b7..1257aaac8f350 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -510,9 +510,12 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	no-sdio;
 	no-mmc;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
