Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97C4FC35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 06:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wYh6a4VSSpxqk1Ulf7Lo38aqaKyTMCwqGEGozdBTPEU=; b=wZAz4VaHVUoP5g
	smaBrhVuqnSsVJcTfaCJ75IawBwFoc2XtU2ZGaIMjS6L1ypDePnIY7OUjZAdrvS8F1XSrcvzVFRs6
	nzOZszQ45O2TDwpeLlLqDchfugz9NVleHTbbVJumPHAsarfYKH07FTL/vvwI7ezQEMn0f17ZkODlq
	CTFgPlDQVjV5Fjb7D6rBChRsIXpPSO8h/slIdifyamaEl8fMcEqqTDi3fYrfEzMAV88p4PB9EcFgG
	Fhikhc4/+hJuV2ugZ2FXxEUG3Ao7icYgti8WIUnc+Gqlyvs4XIdCtKC7l8cJ1xoSwAB3YLyah/xnZ
	lXhkxVOBGcGIMMK9xSOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGCSP-001og3-1P;
	Thu, 21 Dec 2023 06:22:57 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGCSL-001ofM-2K;
	Thu, 21 Dec 2023 06:22:55 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-42791adefa8so2777111cf.1;
        Wed, 20 Dec 2023 22:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703139772; x=1703744572; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0oicQw30BJ+q561uERyycEbFIITiqVpsdX1mLBXefP0=;
        b=cq2nL9Lfwfzpphh/XbKs85pjmdFLIpD9SKSMOtdoUdDx97WVRDSlJb7u8jRH8q14b/
         b084SHLw0qT+6bFypuypiPGx6OfuZBKHvEGNx4zS99BVn5E3pc0BVC76kqjTGKvRiikU
         1vN7Vb9NMKnCt/5xehacjpyDe3Zz688wT+fd2uyd/W0PsZDMtmw2uQHBetJCQDRfn/Zy
         EnxCo0urGV+Ig+EwqTlDC0iJIaw9mtSa0VwK+ZpQZUT3aSm3px7feMoLDNxpzmFHqVyy
         hrjkefzHBm36ghk4Ss+z0nStnR88voYNOiMY5tXlBQhkZhoMAK2D0YAUosvhe0eOQF1L
         Wx3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703139772; x=1703744572;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0oicQw30BJ+q561uERyycEbFIITiqVpsdX1mLBXefP0=;
        b=mIGXZpZqIZVsiAU3hD57gEnI6Cmi91smw3R1DLqPp994QsKudplhYhjFqNcZv0OOVR
         mcvaFIrXsDlNNZvm3TMpQXPfZoVevuFCwLHc8ul0TWBP+6N1AI5syzLRa6CpYY006701
         tvcX7Djbe/Ja+ys0hT2y+xArkdzbPDZP4NWvgHTrRh+LMvGPmyyu6iHMPN8BLOZT7rPP
         rJv61cq3HoWOCIzdX0XLpQiPAYk/eJbvid4LDdP2BEkGl73o/9arY+bt7kOV1xwraYhZ
         OUQwdztxhsw0FgNkyG0IugTY74XsVvarAwYzOutSxcr4nzYDzdYuwCUq4xQY9PxLbAxJ
         TrvA==
X-Gm-Message-State: AOJu0YyL9P3kbND0zJYNhPdklk32YncSNTOxY0anvJwBVON22vR7aMkf
	DsGKigDDkZG9kQqMpnqTaeZmpFgNLv4=
X-Google-Smtp-Source: AGHT+IGGrXr6od3Xnzv0hQ58M53pYl57Os9KxVGrAWT80bNwlHb5oG8VG8zNQqoXIT8baQRc+vwU6g==
X-Received: by 2002:a05:622a:1485:b0:427:7319:69f0 with SMTP id t5-20020a05622a148500b00427731969f0mr5578789qtx.77.1703139771551;
        Wed, 20 Dec 2023 22:22:51 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id t10-20020ac86a0a000000b0042596cbb8f0sm556928qtr.36.2023.12.20.22.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 22:22:50 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: rockchip: dts: rk3328-rock-pi-e: enable GbE eth
Date: Thu, 21 Dec 2023 01:22:43 -0500
Message-ID: <20231221062244.11871-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_222253_761304_03773E50 
X-CRM114-Status: GOOD (  10.89  )
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

Adjust the device-tree to get the GbE interface working using a patch found
on the Radxa forum.

Link: https://forum.radxa.com/t/rock-pi-e-board-version-1-21-ethhernet-not-working-in-armbian/15061/3
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 3cda6c627b68..41224a222048 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -148,7 +148,7 @@ &gmac2io {
 	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
 	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
 	clock_in_out = "input";
-	phy-handle = <&rtl8211e>;
+	phy-handle = <&rtl8211f>;
 	phy-mode = "rgmii";
 	phy-supply = <&vcc_io>;
 	pinctrl-names = "default";
@@ -156,8 +156,8 @@ &gmac2io {
 	snps,aal;
 	snps,rxpbl = <0x4>;
 	snps,txpbl = <0x4>;
-	tx_delay = <0x26>;
-	rx_delay = <0x11>;
+	tx_delay = <0x1a>;
+	rx_delay = <0x14>;
 	status = "okay";
 
 	mdio {
@@ -165,15 +165,17 @@ mdio {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		rtl8211e: ethernet-phy@1 {
+		rtl8211f: ethernet-phy@1 {
+			compatible = "ethernet-phy-id001c.c916", "ethernet-phy-ieee802.3-c22";
 			reg = <1>;
 			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
 			pinctrl-names = "default";
 			interrupt-parent = <&gpio1>;
 			interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
-			reset-assert-us = <10000>;
-			reset-deassert-us = <50000>;
+			reset-assert-us = <20000>;
+			reset-deassert-us = <100000>;
 			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+			max-speed = <1000>;
 		};
 	};
 };
-- 
2.43.0.76.g1a87c842ece3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
