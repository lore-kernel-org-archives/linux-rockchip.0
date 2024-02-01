Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16860C47DDB
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 03:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7fYnmB20oyPm42q7LVwFi49xnmVmLoPz8D3wh9A3o+Q=; b=rpsjgKHtR9rxPN
	M2S6SHqQOPua4lhLJeg9Elzu7YFYp13uU8ZA2F659nt9K2mCX70V0VfX6TaWv96G3w7UHbI9gLvM9
	7H8TQMuAgZyN7uu1Suwf4pgJywXh+PNSJYUMSiLSjgl+1Ob9qTlHzUeZQo2RJVg7B0r3lWQ7DZNch
	/mejnk1LR2IduyNbSyuWjugN8iUIjjy+O5Z18F3loFYalHixzsB4VXoFuMtwRg+tVUcnmAeehTBjG
	iBrcQsEsXv1DvFQKHIwrQCsaUWD5nBQXzNHFmAGFUEl6gv3xFDqEmOZg+Y3lBynVq80TADIbiHXmJ
	Aq+YjybaFZRfyhpQaw9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVO3I-00000006QuR-2Nuj;
	Thu, 01 Feb 2024 03:47:48 +0000
Received: from mail-m19731124.qiye.163.com ([220.197.31.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVO3G-00000006QtJ-0L5b;
	Thu, 01 Feb 2024 03:47:47 +0000
DKIM-Signature: a=rsa-sha256;
	b=CeQj6lMCylRdQEJgGtPj0Cau28pDAvxSiKaBuy6d8hjZvb5Bs3XI2zLFGXK995yY1AQjBZ40u92rByBj9B49T5qYXK72I9FxSEX7GBi/gogLEiwxvF/x/HzEEuIp+zuirXqbuBuYTpZAgZSgShucC44TdZ4wNiF7J8x+DW+bVxs=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vUd7IweKCDAI5DPZtFehaRnre2b1TEPbLmlLAdm/y2A=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 0EB1E900144;
	Thu,  1 Feb 2024 11:46:36 +0800 (CST)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jagan Teki <jagan@edgeble.ai>,
	John Clark <inindev@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lucas Tanure <lucas.tanure@collabora.com>,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3588: remove redundant cd-gpios in sdmmc node
Date: Thu,  1 Feb 2024 11:46:21 +0800
Message-Id: <20240201034621.1970279-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaH0NLVkhKT0MfTh0fSEJKSlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpLSFVJQlVKT0lVTUxZV1kWGg8SFR0UWUFZT0tIVUpNT0lMTlVKS0tVSkJLS1kG
X-HM-Tid: 0a8d62c6981503a9kunm0eb1e900144
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PBQ6HTo4LzMVLk0LSTQhNglN
	TUwaCjhVSlVKTEtNTE5CSkJCSkNKVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQU9DTE03Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_194746_642281_58FC9B8A 
X-CRM114-Status: UNSURE (   8.93  )
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

The sdmmc node already have a "&sdmmc_det" for pinctrl which switch the
GPIO0A4 to sdmmc detect function, no need to define a separate "cd-gpios".

RK3588 has force_jtage feature which is enable JTAG function via sdmmc
pins automatically when there is no SD card insert, this feature will
need the GPIO0A4 works in sdmmc_det function like other mmc signal instead
of GPIO function, or else the force_jtag can not auto be disabled when
SD card insert.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts     | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts        | 1 -
 4 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 3e660ff6cd5ff..1b606ea5b6cf2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -444,7 +444,6 @@ &sdhci {
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <150000000>;
 	no-sdio;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 87a0abf95f7d4..67414d72e2b6e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -429,7 +429,6 @@ &sdhci {
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <150000000>;
 	no-sdio;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index a0e303c3a1dc6..25a82008e4f76 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -371,7 +371,6 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 2002fd0221fa3..00afb90d4eb10 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -366,7 +366,6 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <150000000>;
 	no-sdio;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
