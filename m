Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 401F4C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 07:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJMeDl9DZ7I+kUA4F0ygDakKUIP/vDKH2vR1c/zYzZ8=; b=HJLG35dAjKlgkj
	aJ3Ju+Q/VXiKruUXvKf+DKAEIVKCaljKBhNN1FY541q7a/+K01ZMK8dts6nRWTl47ycWzZxYXDghX
	ZSeQtSZGtzj7uusewTGuka5ykzEh5ChpNDx+EpfQY9xDW0sgSAxA9EpRDbq1cJjskLxFAhLmer2ww
	9uop/pIn8bQdpxihldKHyCSeWM+8OjOslktFAyCvw7gsdSp6XFd134eqVUcckf1qLo/Om31OK6PF2
	48ekYt2+8soRquHUEfbIUWczAjMwV9ebuCvOBzBR2FulOPhx6x//LqmB9V3c/j4b3d0gczstLEiPu
	suypQPpd5R0kXx5w/74Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxaq-00AxpI-1z;
	Tue, 12 Dec 2023 07:54:16 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxac-00AxhM-2A;
	Tue, 12 Dec 2023 07:54:06 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702367635;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+SP4plXsfIblNhwe/TWzlvhS4foBk7zGd6DNr6YG1w0=;
	b=AMOyMRqPvgnFmd3tSPnWyTpkWcvAycFeaoE7mGm4qUllgbAZPWI/EtBjM9VFWEmxuYGFSP
	j5sKfhLDQztHZmI7DhQV4cVYv0JmmVFeJeSo0LQFg30XrgqPwN9Cj7MJgtNwDYn3E1UWkL
	YsZJnW1NQ5IMQQOENXi3fdmn2ijIWmw3zwNol7vAHd6BZyWtJAhcjoguYHF3fHM3xpv+qW
	HJclzKZiH5EtfdIP1iIsbskBUDqoWLkjWUWlB+eigEAbDnFZJ0Bt5MThNCqb/w6BgQ099u
	h9W0jh9CoDxkh/aPvEhouVuT6C0MfyVstNZ82ekMmKiesJyysRH4NLvckLgsng==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 3/4] arm64: dts: rockchip: Remove ethernetX aliases from the SoC dtsi for RK3328
Date: Tue, 12 Dec 2023 08:53:50 +0100
Message-Id: <0c14f2e354d32f5d45c718ce16643553ca72f6a5.1702366958.git.dsimic@manjaro.org>
In-Reply-To: <cover.1702366958.git.dsimic@manjaro.org>
References: <cover.1702366958.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_235403_206590_BA2746A6 
X-CRM114-Status: GOOD (  10.75  )
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

Not all supported boards actually use the RK3328's built-in GMACs, while the
SoC TRM and the datasheet don't define some standard numbering in this case.
Thus, remove the ethernet0 and ethernet1 aliases from the RK3328 SoC dtsi file,
and add the same alias back to the appropriate board dts(i) files.

These changes also touch one RK3318-based board dts, because it actually
depends on the RK3328 SoC dtsi and enables one of the GMACs.

This is quite similar to the already performed migration of the mmcX aliases
from the Rockchip SoC dtsi files to the board dts(i) files.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts          | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts               | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts              | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts       | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts        | 2 ++
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi                 | 2 --
 9 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index 1deef53a4c94..c7b1862fca6a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -9,6 +9,7 @@ / {
 	compatible = "zkmagic,a95x-z2", "rockchip,rk3318";
 
 	aliases {
+		ethernet0 = &gmac2phy;
 		mmc0 = &sdmmc;
 		mmc1 = &sdio;
 		mmc2 = &emmc;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index 40bf808642b9..824183e515da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -9,6 +9,7 @@ / {
 	compatible = "azw,beelink-a1", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index ff6b466e0e07..1eef5504445f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -11,6 +11,7 @@ / {
 	compatible = "rockchip,rk3328-evb", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2phy;
 		mmc0 = &sdmmc;
 		mmc1 = &sdio;
 		mmc2 = &emmc;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index 1445b879ac7a..a4399da7d8b1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -14,6 +14,7 @@ / {
 	compatible = "friendlyarm,nanopi-r2s", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
 		ethernet1 = &rtl8153;
 		mmc0 = &sdmmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
index dc83d74045a3..f20662929c77 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
@@ -15,6 +15,7 @@ / {
 	compatible = "xunlong,orangepi-r1-plus", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
 		ethernet1 = &rtl8153;
 		mmc0 = &sdmmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 5d5d9574088c..414897a57e75 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -11,6 +11,7 @@ / {
 	compatible = "firefly,roc-rk3328-cc", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 018a3a5075c7..07f00af19aaf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -21,6 +21,8 @@ / {
 	compatible = "radxa,rockpi-e", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
+		ethernet1 = &gmac2phy;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 0a27fa5271f5..229fe9da9c2d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -11,6 +11,7 @@ / {
 	compatible = "pine64,rock64", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index cc8209795c3e..41433d3340ce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -27,8 +27,6 @@ aliases {
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
-		ethernet0 = &gmac2io;
-		ethernet1 = &gmac2phy;
 	};
 
 	cpus {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
