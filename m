Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AA86C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 09:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fl9g3OyznwA+alfgT4714so5VETE/flsZQd55jbHHg=; b=CcHEkavNfmdo92
	uJ+rh3iGndnAzBXIjWQFrA0JKaR6Q8YJq9trj44En4xL29GqetLToKb+pk1JNNoBusLoF0EcxvQA5
	ZP83HD4RayPInfH9LxnTEYzoEd2NKUT8tqCPWmgnsce2snPGB/UD4QGHJftoxUEBiuZ3fQWxxrYly
	jcpkgZGtfIHgLRZuLDVP1Jl7xQdfAbZS0HcoXYdPLohGlaSEYWOyXsPpaFmQwV07sJpzo8EZUd9vo
	38AyU5GpBD6b95DukKbqKncWDdb+uqwB/ENhS7m5KOOcK80uagcfOofMzXx0Mr7ZI7sWSUCdW+AwH
	vZ+GCpO/iD3fPwQ7wT6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU17s-0000000DLsg-0oJ9;
	Wed, 17 Jul 2024 09:39:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU174-0000000DLVg-0Kot;
	Wed, 17 Jul 2024 09:38:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 52BE261435;
	Wed, 17 Jul 2024 09:38:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F781C4AF0F;
	Wed, 17 Jul 2024 09:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721209097;
	bh=msJRc4jOmo8X3ZitZ0CBdwvlEyzT87CXS+Smk6niWEc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DGMPjDAhwadBEbuN1mY54jiFyNyTGNOKIcIsivKjlt5jKe9SA6a1p0+7Zk2/uVumK
	 EVVgvo28/usYXekHiR9vBjMe/75Il6heV/pmpGmqHd5dndy/739v0+6NoISlhHufjm
	 gORW0nn4LF6T/VUMvKT8KCbCyxf5BIxqKNDRKWMLl3sHdZB9letDBFzFYLJ8hCePCY
	 gnVBbY1B9SP0cia3yE4fmyXr7JuAsmW4KxconnvDoeVtmQRigkK+og+kqiGdJEkjD9
	 hMWaDBsbIZJQ7OheKC6LMA84FCigkBXGaqiKl4zAzmoBlhUfXKvFpg2D7FiYJT/nDk
	 h3Sk7FSID22KA==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	WANG Xuerui <kernel@xen0n.name>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	imx@lists.linux.dev,
	loongarch@lists.linux.dev
Subject: [PATCH v1 2/4] ARM: dts: rockchip: remove unlikly-to-exist DAC from elgin-r1
Date: Wed, 17 Jul 2024 10:37:54 +0100
Message-ID: <20240717-parrot-malt-83cc04bf6b36@spud>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240717-anvil-ashy-544e80a1317c@spud>
References: <20240717-anvil-ashy-544e80a1317c@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1373; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=MSCoCs+nCZ6kB0uJ7jdevDa476eowpEIcz88i8dEKdE=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGnTJ3ys8n7Utfzn6f1/W+KE5jBkd/BffrFwSfWlrIkLJ 1k8WvmpsaOUhUGMg0FWTJEl8XZfi9T6Py47nHvewsxhZQIZwsDFKQATWSXL8JvVfIPtJKdH0j+r 7Y3ZZmcYrG9kfm1hdPNH/2qL10cnrK5n+F/dwZipV8nuu6Zpppjo6/3fdh4z7etMy41sMco9cdB GnQUA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_023818_271425_9DCFB22C 
X-CRM114-Status: GOOD (  13.56  )
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

From: Conor Dooley <conor.dooley@microchip.com>

The Rohm dh2228fv (really the bh2228fv, the compatible in the kernel has
a typo) does not support frequencies above 10 MHz, nor per the
datasheet appear to use either CPOL or CPHA. I suspect that this
devicetree is abusing the compatible in order to bind the spidev driver
in Linux. Pretending to have devices on a board for this purpose is not
acceptable, so remove it.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
I could not find any documentation for this board online, and it does
not blatantly say that the device is a "spidev" like other [ab]users, so
it is possible there's actually a DAC here - but I doubt it is a
bh2228fv given the other incompatibilities.
---
 arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts b/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts
index 2d9994379eb2..9df1cef406c5 100644
--- a/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts
+++ b/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts
@@ -167,14 +167,6 @@ &spi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&spim1_clk &spim1_cs0 &spim1_tx &spim1_rx>;
 	status = "okay";
-
-	dh2228fv: dac@0 {
-		compatible = "rohm,dh2228fv";
-		reg = <0>;
-		spi-max-frequency = <24000000>;
-		spi-cpha;
-		spi-cpol;
-	};
 };
 
 &u2phy {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
