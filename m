Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CAE4C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 12:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=173YUnfrlxHsqVzEUUMLBAOgmmklqCRyVWs1VIvNQlE=; b=KU/a1WNpxmzQti
	qf6NzqGPk82sv0Wj/CG2Yfw72nS2sNsKm+aPszK1Mm+BNS5hHIwbkQ/iUnNgq6vcMp/ottY+aS1/z
	2yccp7IkpXZDt6jP6otXUTb0+KbE7zeUuVbjTyP9K6dnw3dyUO8QAfv+C5JeHaTjgXR+d1TcnS3yJ
	T/JgxTo9gFkKBkrFmG+Rc5ijm/ycYWNK9ETZwzckcG/7eYh4Phptbjj5Swmi2qEGISui+1x0Uv6fb
	A+RGZJqPO56KYBgrg/fv90BK17yyJv5dVWerbESAZCX+VkbwrM2eOxJ3P3hfCBCytVTMnDDVfSfrh
	2b77irURrU6fEIejxNgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE7JT-003ECv-0z;
	Fri, 15 Dec 2023 12:29:07 +0000
Received: from uvw.ixypsilon.net ([81.223.58.118])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE7JQ-003EAn-20;
	Fri, 15 Dec 2023 12:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ixypsilon.net; s=20210903; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Oj0QHgPdvHMo9GUAP8G/tq7iyDKRF1mzr5DOg7Hc4RM=; t=1702643341; x=1703852941; 
	b=Yc+9JMTwePhlGRrC09C69YES+BVIO7jWilrnqoFBxPp5CIiASfCxh+xaVSpD25Su4umUL8dz4/H
	Qd9Mdzl5GAy+ym+AadGPS80gPDfwohYzwDmfDHsR8lLleGiXAawtazIci9vUYXBTXlFUsIBzuFXYt
	2Wu3ivYSyhdqFCJZ7AHFhCRGI7gMzjpOaie93EgerkcTZajBT7nOrosQNdavf8IN08GEyaCNDTEbP
	6plVqteCu+0yr/btsnNkg8/fJbEsmRbFSOwnV9aYOYTYhIF5DL532sXmsE1QT15VVXnaYu1K/j5ak
	cUcbag0XDCrb1nY7ngWCjvFiWU7LaHbhX8KA==;
Received: from [192.168.0.1] (helo=librem14.Hitronhub.home)
	by uvw.ixypsilon.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <stefan.nagy@ixypsilon.net>)
	id 1rE7JH-0006gN-0U;
	Fri, 15 Dec 2023 13:28:56 +0100
From: Stefan Nagy <stefan.nagy@ixypsilon.net>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Increase maximum frequency of SPI flash for ROCK Pi 4A/B/C
Date: Fri, 15 Dec 2023 13:28:48 +0100
Message-Id: <20231215122848.59534-1-stefan.nagy@ixypsilon.net>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam_score: -1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_042904_968058_C27A7FBA 
X-CRM114-Status: GOOD (  10.92  )
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

The ROCK Pi 4A/B/C boards come with a 32 Mbit SPI NOR flash chip (XTX Technology Limited XT25F32) which has a maximum clock frequency of 108 MHz. However, the Rockchip SPI controller driver limits the maximum SPI clock frequency to 50 MHz. Use this limit for spi-max-freq.

This patch has been tested on ROCK Pi 4A.

Signed-off-by: Stefan Nagy <stefan.nagy@ixypsilon.net>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
index d5df8939a..30e63e62a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
@@ -19,6 +19,6 @@ &spi1 {
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <10000000>;
+		spi-max-frequency = <50000000>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
index bee6d7588..7122bf6c0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
@@ -37,7 +37,7 @@ &spi1 {
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <10000000>;
+		spi-max-frequency = <50000000>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index de2ebe4cb..8af75bc7c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -49,7 +49,7 @@ &spi1 {
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <10000000>;
+		spi-max-frequency = <50000000>;
 	};
 };
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
