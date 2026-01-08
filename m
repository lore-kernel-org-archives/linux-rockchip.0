Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF4DD232C3
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 23:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IO7go4yR1T6/t0EdYIbL63zv1PvM6q3w3MFX8q45jJQ=; b=TPcQKO9uLPnbNh
	u1jCAv5kUWUCA4eSMpk4rOX42iqDWF4vYFqPIECDd9QJDaxlkvzAyF7Xx/ptdqqZgHuuJM9QTgld/
	AitFpB9/9JnBZM446AzL4BtHitWAcAZ30S9ucDdyhrGJJP15EDmnE0LgE0+k4s3Qy4/4l6gOfY3i+
	3T2yMlFSzSIRdM8t+mXhjksR+7mg0/NyIe94VVaYi9r5tWi6sXa2U2zQlHsDX+H3eGapWHl6qGbEn
	lIFzfiHVwSciOCOO/z6z/htalLU0k2K8upjFDHibgylpSLz+iNtU6XKtcky6bCxWQscoeW+qvRfxK
	5LoVNuMHLUkIsAPiJPDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdz54-00000000yRg-3MPG;
	Thu, 08 Jan 2026 23:06:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdz52-00000000yQK-3FgS;
	Thu, 08 Jan 2026 23:06:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 90D0F60130;
	Thu,  8 Jan 2026 23:06:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E43DC19421;
	Thu,  8 Jan 2026 23:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767913571;
	bh=gOqkINbWRtUhwGq/lyJT42kBcohrQjAxPz/HofF8t8Q=;
	h=From:To:Cc:Subject:Date:From;
	b=Va2gQPL+6tzykR9zDwrdUBQanJa7jnqhlVb4D2HYQc9IQTgR3mzcA4EIU3hBn4wNN
	 OY85ZAa8vpQvqfXTucvgARQ34oVwTc7VGxgW1Rfp+PlI+qs4h8Suln4ce8j6KLRCCU
	 DZmlpaOFV007MmA03xsVbYJaZkVgPBcCw4aEWZhr+H6vbrXHWd2+TUtZkqC+UmiBM3
	 6sL+g8Ar0US9fCOY0bt1/89CMYpkhyhLyaRkzv5oD0DPD6ANjvQgeF6QWVI7WOFWvX
	 f4hfs4QRCXz4aAmRq/DeboKX/E9sPsbPJty5/etfyUiCJ+GyDrjRlq58eE1AmdeRT7
	 qpIU67YZFYC8g==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Drop unsupported properties
Date: Thu,  8 Jan 2026 17:06:07 -0600
Message-ID: <20260108230607.1348879-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
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

"pinctrl-names" is not valid without a pinctrl-N property.

"max-freq" is not a defined property name. Maybe it was supposed to be
"spi-max-frequency", but changing to that would be a change in behavior.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts   | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 78a7775c3b22..b2de018a7d36 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -425,7 +425,6 @@ &pcie_phy {
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
 	num-lanes = <2>;
-	pinctrl-names = "default";
 	status = "okay";
 
 	vpcie12v-supply = <&vcc12v_dcin>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index eaaca08a7601..810ab6ff4e67 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -969,7 +969,6 @@ &sdhci {
 };
 
 &spi1 {
-	max-freq = <10000000>;
 	status = "okay";
 
 	spiflash: flash@0 {
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
