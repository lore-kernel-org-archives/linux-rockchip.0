Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C91BEB64DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jul 2023 06:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cnoMVFHxS1P1eJ7RszcatIRxCKeXEj54MlbGVOeHSzA=; b=a7bXlptw5pB1gE
	HfSkf6b33OR9f6Qo4LyEm1T12oJMYFBaIposz3FgUm8KAXdNnM5GCwdW71iOHTD32DlIib9i1fb/p
	cA6pO5bsBFlaf6JZ/cdpAliOU5AG7nAl6rZvwLIuw8d11p4RYFyzvAykrKpyTw2UNcBG+gr2FZVfs
	O4RwwzPNuvcv28vHMZYrbSyO1iedFE/bTNwK/8lLtd6HwHDdKc0XjbGBE+czoSuUVR3oWIwLCcXyj
	ERfwhsH1mRbdbB+7ruqIleyoBsTUiHjKZ8nq+GiyOFTtH00Nmww1XhwR8pu5QRDyp4RkBV76nFf6G
	U46YAp+4iaDP0vkovG6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qN6Tk-00FzCb-10;
	Sat, 22 Jul 2023 06:52:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qN6Tj-00FzCF-1E
	for linux-rockchip@bombadil.infradead.org;
	Sat, 22 Jul 2023 06:52:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=iSMMi9exKRh/McLgLD9rb3RW3GzwW+kgtUqmtga2J64=; b=K9IP/fX/V5CWznMJaOVQfSb8vV
	EtfIGCZHJwtZwa+97XwscCrrGg8acMrfKNLg6bmYVFveCG+ePYCmMJ3XJBCPnSO8T5TYR9F5VgIzA
	s6eCo6VtQve6uoLN/VDUI25E4oozfyTJUwoJMqbBpCsOSnnDaSaHwHW2/jdsidRpbFL3kZomoBenm
	p+Pkqvm7fiCEN1nEVZ5sKXhhTLycCXd5CQSVAeQAcET50Yz9MRw5XrIfpu55kvz1i4wkm2lWROei+
	Uw4GzmKEs3LUMCjAOFSvfLi44ODNkiF+3x8r77/OIkNovxD5UrFkdKrJSBoKcCmhIkW4+wJLZLXYZ
	p43v4BTw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qN6Tc-001ozJ-Sj
	for linux-rockchip@lists.infradead.org; Sat, 22 Jul 2023 06:52:33 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 36M6pX4E009103;
	Sat, 22 Jul 2023 15:51:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: sebastian.reichel@collabora.com, lucas.tanure@collabora.com,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: rock-5a, rock-5b: fix/update sdmmc properties
Date: Sat, 22 Jul 2023 15:51:29 +0900
Message-Id: <20230722065129.3039-1-naoki@radxa.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230722_075229_921387_C69302F8 
X-CRM114-Status: UNSURE (   6.88  )
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

add alias for sdmmc as mmc1.
make card detect work.
define pinctrl.

Fixes: ea3e66e7ad0d ("arm64: dts: rockchip: add SD card support to rock-5a")
Fixes: 2a6d4af5f157 ("arm64: dts: rockchip: Add SD card support to rock-5b")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts  | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index fae91522c6fc..da8f43c9b255 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -11,6 +11,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 		serial2 = &uart2;
 	};
 
@@ -229,7 +230,10 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index a6dff117b459..05628299e331 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -13,6 +13,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 		serial2 = &uart2;
 	};
 
@@ -319,10 +320,13 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <150000000>;
 	no-sdio;
 	no-mmc;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s0>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
