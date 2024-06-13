Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCBA7C27C53
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 00:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xxlp487LlIjW6cYpRNxvRMzmFVceIleW/ugN6H/22fE=; b=gSvpURnU3YFPOY
	bqNF2diCWBlltufEZ7kuxKP4dXJrTNq4TAcDJdZx36eC2iGSP7xKEAVrZqvmEzMEungmcJyrWqufu
	wuPQfxlFC5O/6D3iQZ3DLQRvN+Q0C/nDYC80O65AgvzGZmNlbbwX9E/RsFVM1j5uNhUrEWAw2Ssx0
	lxxqb/wEXbQMObDvaDKzuwuXZMRpesOdw+zStNDtTekCcRSymmrr2BP9SL4+eXHBfdzkH3mT/uLdb
	6ZxtDtv1Q2jWr86WHrf54E7G2cN3F1UzIZgSonctSfE3bMKph3VWsldzKOnisFmNXy0oFj7Oh7hob
	+UMUKK/vXF6JpZjrpzdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHYFX-0000000EapY-0rj6;
	Thu, 13 Jun 2024 00:23:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHYFV-0000000EaoS-2dX3
	for linux-rockchip@bombadil.infradead.org;
	Thu, 13 Jun 2024 00:23:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Vd+0/90vqrwVgbkdvqAB090/xUCT+RjlTEONQZtrsao=; b=E+qPT6CUrfvg35Zm4f/Jn1/Da9
	kDVCs6P68S8bS8kLqTjEpOuAZDY5ljAqUoTQLlg9V6TtnJgpkbL8MsDjVBgws/JDaLWbgvu/UxHWJ
	ozAfc6MIzTkKQ5D9quSqQfY9KZ9TnNu6HFBBhVb5p/brlNDW0/aHoZNRNh8qz8dzh8ly/vmpIUWkg
	WHEO5c5cZ/00v5V7MuIcL3bO8AeJMQDS0au687015JK69BsB70z5DFBZXIyi+ITm4zAQ2ldFeZFnR
	GYKgYtWJFryV/lroqeA53tsoUPhSD+fE7zQZS7Eekln7s06ohsdoIT/W1Sqb+Ou3PxLVG1jPxOtUK
	Yu5yx81w==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHYFO-0000000FCMu-2lTs
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 00:23:28 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45D0I7kB000643;
	Thu, 13 Jun 2024 09:18:08 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2] Revert "arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes"
Date: Thu, 13 Jun 2024 09:17:57 +0900
Message-ID: <20240613001757.1350-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240611120645.457-1-naoki@radxa.com>
References: <20240611120645.457-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_012323_193413_6DC980FC 
X-CRM114-Status: UNSURE (   7.53  )
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

Inserting and removing microSD card is not detected since above commit.
Reverting it fixes this problem.

This is probably the same thing as 5 years ago on rk3399
https://lore.kernel.org/all/0608599d485117a9d99f5fb274fbb1b55f6ba9f7.1547466003.git.robin.murphy@arm.com/

So we'll go back to cd-gpios for now.

this patch is tested on Radxa ROCK 5A and 5B.

Fixes: d859ad305ed1 ("arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v2:
- reword commit message
- remove empty line
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
