Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 747D4C25B76
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 12:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PzZy+Fx4qGfGGDHYh8eqTq3fe7bkEKaV1zBCoELZ1EQ=; b=XF/SzyFqJ58tyI
	biW0tzxBDsb5z3oxIJgUlnpo76c+YIu35ai3CkljhvsR+IDr+kGIR8AJgv4+yGVW7/C4XZ+MXAtOn
	FqxI/6EtAECHSuhA4YZDMxwpfaqbObhtC2xzLbtjC78THh2Eu2A3BxG44W0jsfkD9JKJ19dU0J0jt
	+tCxAEkoQODAGj+okqC1PIsBtb9T+YzYLLj2EOzYY1ZBjRDLlKWGGDAZlgkeSSvnFjeuseKijFLNo
	Azu9eUPmBaDvW3RCPu9UOMbW8EuCY6doQR8OaSslJTPxzU8KUOuUW1AojkPwZuJP168Df+zDBfPkQ
	3VA2WJ+QH2R9+f9J13FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH0Ja-00000008n7O-2yJR;
	Tue, 11 Jun 2024 12:09:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH0JW-00000008n6L-33ua
	for linux-rockchip@bombadil.infradead.org;
	Tue, 11 Jun 2024 12:09:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=+Q2e4vaANA3/iRXkhJe4ub1Yd6rXVQDCQSmNU5lRJqI=; b=hSb7EPcyAEYjKcgSUnluE869uW
	9d7oiWJ5LRb7o6HxQn/zl5UHgfLr6PH9ec6p3z/ziBNekjg/kQnKCkqLHvcAPiytD53QiABevu9IO
	YAtXi94dVoP0Jr/ibEZrQaKviM6B5PmYscrLVqxUNVQmPucD1YlRJcmrHi8rS29QF+dW6AXJvXzyF
	Qr1NCBD3UgZ5vbGgnKzcoJWRhP0PqZ52AcL2bG/gubjhFyJL3NFlRFNlvYDDi9ooJ425cC2uG4jZh
	2o+0ZRbcvH+1Yi9N9EjsOajCKWLv9wUr8WDHEg8G238I1QK1c0wX77sTovAzDrMszHG+r07GfQYFe
	ZpHtw01w==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH0JN-00000009WmX-3oxn
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Jun 2024 12:09:21 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45BC89dK028411;
	Tue, 11 Jun 2024 21:08:09 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        kever.yang@rock-chips.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] Revert "arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes"
Date: Tue, 11 Jun 2024 21:06:44 +0900
Message-ID: <20240611120645.457-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_130914_565180_5BEAFB39 
X-CRM114-Status: UNSURE (   6.44  )
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

This reverts commit d859ad305ed19d9a77d8c8ecd22459b73da36ba6.

inserting and removing microSD card is not detected since this commit.
tested on rock-5a and rock-5b.

Fixes: d859ad305ed1 ("arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes")

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts     | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts        | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 1a604429fb26..e74871491ef5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -444,6 +444,7 @@ &sdhci {
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <150000000>;
 	no-sdio;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index b4f22d95ac0e..e80caa36f8e4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -435,6 +435,7 @@ &sdhci {
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <150000000>;
 	no-sdio;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 4e2bf4eaef2b..df845929b084 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -390,6 +390,7 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 8e2a07612d17..b070955627be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -366,6 +366,7 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <150000000>;
 	no-sdio;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
