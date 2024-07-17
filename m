Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57DE9C3DA4B
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 09:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y5ihFOGAz19uZ8fppiKlIXS9Z/2NC/WNf57Kckuehg0=; b=OSGSCXgK0PL3Mq
	lCJb+4ktop0qWnwkavJtqWfM0hvFuIvnVNs2PWstw+gP/Bff6sTW/rt1O5JGlosyYaRcAqHV2cvqX
	pq2qsFlpDs6lEuZGabCUMW22xCFsSELEo00GWXcvj/hfZYiTc3RNDJVdDgU8iNKnLhiDBlaH/Plpd
	RY+l/1f7FufOWjx2MbziA76zplS2UM0fXxYqsS3law9NrWquEOcAXabMaLla9fpOW4hBWQI+FRtNw
	rUFEbyEwtjwBT5GcSEp6/Oas91C8/3nQgpHp15MkO1g3L5QrEIEgOsh8CiyKiStGOiQVJbKkvNqjv
	ZVplmdBmWtx+rAOONfvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU18X-0000000DMFU-1YlX;
	Wed, 17 Jul 2024 09:39:49 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU17F-0000000DLZM-46Kq;
	Wed, 17 Jul 2024 09:38:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 32384CE16EF;
	Wed, 17 Jul 2024 09:38:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA53BC4AF0F;
	Wed, 17 Jul 2024 09:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721209107;
	bh=zR+H4DU723yvn4u1sKhvZiiUDXT8gBtuFekq4R3cabQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SPVej2gA8JptVbJk2M/36dnUy22qkdvXsA6vuh/xH3HzmBBMtZxlZKp51zFG5x2Y0
	 aDfRVSe4UzoEqlj52fpCnYycaOtfU+Lfl51Xe20duHWD7NpkEq2ik2cFhGBFWJYx0A
	 kUYss1al5DLi3Ydn76ByDOGJIBA7ZrsequKKfyE35YEmKY99hGRF+yEkRAT+r1P1LS
	 yCVp70VCBsh15Jx3246fAvfenmhuIrthje3UjrDXOMPjBz1A1+KaiDG5nSCHbx/k0y
	 V5FYSNeVi8sUId1EATJcTaFH89cMEZsLBuNcXUe3EA3qXd7TdgrpHhrji+YMeDSuoG
	 pKHTPUjpGvTww==
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
Subject: [PATCH v1 4/4] ARM: dts: socfpga: remove non-existent DAC from CycloneV devkit
Date: Wed, 17 Jul 2024 10:37:56 +0100
Message-ID: <20240717-partake-antivirus-3347e415fb7d@spud>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240717-anvil-ashy-544e80a1317c@spud>
References: <20240717-anvil-ashy-544e80a1317c@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1040; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=fbDVTS66SQLTObr7U5FvofO+Awu0zrlwHhlO6xFXdHE=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGnTJ3z6FXZpg0Oi/2bJTNefzN9T18Za57ZcOSb8pn0B6 +rnW902dpSyMIhxMMiKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAiar8YGd7+3yv0spAt9bSr UPKhx2sbT+WHqFZrnYpfevbvbd+ZX7sY/hkIeviLS6bwMIQqLbT93vanaG7ikSUhTguvHZIwun7 vIisA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_023830_269183_49D9BBA6 
X-CRM114-Status: GOOD (  11.25  )
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

There is no Rohm DAC on the CycloneV devkit according to the online
documentation for it that I could find, and it definitely does not have
a dh2228fv as this device does not actually exist! Remove the DAC node
from the devicetree as it is not acceptable to pretend to have a device
on a board in order to bind the spidev driver in Linux.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts
index d37a982e8571..97622febc44e 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts
@@ -151,12 +151,6 @@ partition@qspi-rootfs {
 
 &spi0 {
 	status = "okay";
-
-	spidev@0 {
-		compatible = "rohm,dh2228fv";
-		reg = <0>;
-		spi-max-frequency = <1000000>;
-	};
 };
 
 &usb1 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
