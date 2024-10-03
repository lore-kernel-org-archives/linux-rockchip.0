Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0D6FCF8571
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Oct 2024 09:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1+/FpQV41Hj3ukl9DP5qkWwyjekKX3HPmtJUNfPTUZY=; b=WsZlda4Pvh2RWo
	CsRTU6ePd+Tk9FqlmkwD/1kZHy3Qk5gC/oaKV0a51I2pPjvgPuo6RYzFHjY3cNVuK3+72UHhuOQDl
	2/Ucgr0PcEwmevCUSD6VOVCKnv0yK9hTvW3JpeGtF0Guup43EBN4Ph4vAIxY1BRYi0sfSa9o9RQgd
	oSv5YECbw1yjWisXDeEyhSW/bsqDJOBl/5tJI9U1yg1xIhGAc7l3Bv6N0ZXyb2kMY5t5SSop2yMlc
	/4U2vMjyghqr2ANsriZiHxmlEd3F930MgxJhin1vuhQjbbeQ+T5KT1Uf2OA/vNQ/1GSPoz5u4MIay
	r/EdT6OJijcrrqsytZKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swIUU-00000008iKO-37IW;
	Thu, 03 Oct 2024 09:51:22 +0000
Received: from out-176.mta0.migadu.com ([91.218.175.176])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swITB-00000008i1P-3p2r
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Oct 2024 09:50:04 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727948998;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CeDoAHF0CNfZlTf5K4lvfk+NClUys0mGh57L32ShtE8=;
	b=OQbotMwR8FXnKbAglWB9sitnCATUbNHue7XEoEMLRnTz+jBfr322LWpoanl5CXpbbrV0bJ
	ozC4zImESZf57sIFD2PKSqDvaY2dBg5eQNyGMvoZIB+ZF5I98beVaxSHec2dKNoAgXkp3d
	omRXrRVNcQu7XUQ6XUa7sAySa4SEGBUlPi+LN8SwvPM+yJOxrpDCKiSIFRQNW4Eo2MmbQl
	Liint6HVqZNGxCLQpYxdSzfVJarjPCR5xyFLjO4dqHYmnKEyDjHJqtkYJAzrr7mpgwrARC
	Eb7qSbo3tXiYZXDz6+PCTqPHAlU6yRFgO0FTEJ1Kgvu9epyRZslRnEGUOCQeJw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 0/5] Drop deprecated 'rockchip' prefix from s-p-c PMIC property
Date: Thu,  3 Oct 2024 11:43:24 +0200
Message-ID: <20241003094927.62042-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_025002_689492_3902F8BC 
X-CRM114-Status: UNSURE (   4.40  )
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

961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")
made "rockchip,system-power-controller" deprecated in favor of (just)
"system-power-controller" for the rk805, rk808, rk809/rk817, rk818
PMICs.
Drop the 'rockchip,' prefix from the px30, rk33** and rk356x DT files
which still used the deprecated variant.

Diederik de Haas (5):
  arm64: dts: rockchip: px30: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3328: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3368: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3399: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk356x: Drop rockchip prefix from s-p-c PMIC property

 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/px30-evb.dts                | 2 +-
 arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts               | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts   | 2 +-
 52 files changed, 52 insertions(+), 52 deletions(-)

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
