Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E480C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Dec 2023 11:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MVRbu/4YP4kJHW4xciaUNMWIoGpH1Body0swT0yuE9s=; b=sYP/nRgZ7LIvfq
	uYhWW5IEv+BNdB4rXAwLFgbeKazxVnya6VBfog48KtN7sL2kSTLLWcop3SLPBJ5ybsutCOiJ56GOk
	WcKWAIsRbhb0O4NWn/2+Xk4SffVKAVn/3GRScNzyY5cO5jlMOrESvxy/HtBclueoZU9k2N8AGW17/
	Eh0x5Qd9ULHrKwBp9JsL8lFRz043807tZYHmjheTH5yhs3EubBX4mVFSld7AWKWze7MHUoyoqctEn
	/P9MXHIlUTgcI9MiWoZ8e4+eB4OTIFIrLfz8JZresKEvQ5U4UL5bXttuRB6j7kvgSZhPairvLcVov
	fao9zvFDWyKw9Ui7zKhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEpNe-007h3m-39;
	Sun, 17 Dec 2023 11:32:22 +0000
Received: from uvw.ixypsilon.net ([81.223.58.118])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEpNb-007h3H-0M;
	Sun, 17 Dec 2023 11:32:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ixypsilon.net; s=20210903; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hGbSCr3F1tJTGQuFnfxCa5FlfqtL9YcTXhadpvN5MCI=; t=1702812735; x=1704022335; 
	b=Wkbc1qPSSqz9rgqt5T+t+PFuD/wqvIOgy0gJVQJpkkkS2qdQ/QrW+afhsoZAhiJ8LJYyVqH1g17
	do7kpPf6hXzq7ocewr/seMs52i9faX98T6gNlJDXT4Zg4rYFCsPgBelrmI6U7zrhHF6b2aPrMs5s0
	nmB5qt5YdstiIDqDYfjt/glOmG9zkDMtAlQZKVNZ05DilcnA3owP/KfXFPXUdo84pc3aFEHSX917Q
	2T65McOt/XvI12iEzr1m9pGYfJsFHMg8zx8Lx9ZU/mGYNMCkPF7TAw0IpLjhCBCKlOqJF3Kn05jCy
	SmmQvsNg2eMjAAH9b2TgErEjFWz75e0CvGIA==;
Received: from [192.168.0.1] (helo=librem14.Hitronhub.home)
	by uvw.ixypsilon.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <stefan.nagy@ixypsilon.net>)
	id 1rEpNS-0001IQ-1u;
	Sun, 17 Dec 2023 12:32:12 +0100
From: Stefan Nagy <stefan.nagy@ixypsilon.net>
To: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Increase maximum frequency of SPI flash for ROCK Pi 4A/B/C
Date: Sun, 17 Dec 2023 12:32:08 +0100
Message-Id: <20231217113208.64056-1-stefan.nagy@ixypsilon.net>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam_score: -1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_033219_455407_789E5A26 
X-CRM114-Status: GOOD (  11.27  )
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

The ROCK Pi 4A/B/C boards come with a 32 Mbit SPI NOR flash chip (XTX
Technology Limited XT25F32) with a maximum clock frequency of 108 MHz.
Use this value for the device node's spi-max-frequency property.

This patch has been tested on ROCK Pi 4A.

Signed-off-by: Stefan Nagy <stefan.nagy@ixypsilon.net>
---
Changes from v1:
- Use the maximum clock frequency the SPI chip actually supports
  instead of the SPI clock frequency limit of 50 MHz set by the
  Rockchip SPI driver.
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
index d5df8939a..c68f45849 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
@@ -19,6 +19,6 @@ &spi1 {
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <10000000>;
+		spi-max-frequency = <108000000>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
index bee6d7588..6ea3180e5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
@@ -37,7 +37,7 @@ &spi1 {
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <10000000>;
+		spi-max-frequency = <108000000>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index de2ebe4cb..5274938bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -49,7 +49,7 @@ &spi1 {
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <10000000>;
+		spi-max-frequency = <108000000>;
 	};
 };
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
