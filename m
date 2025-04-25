Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEA3AC369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 10:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WtfOel+ButZft0JaSIWFwS8ndELylAoHCHFWSFE5wAc=; b=zbmN6+WdzXtA4Y
	crEU35D+wUjc2dNFvLm8h4AllQ3/5bfI7x7q+qvHXWsK8d/0Xd9ZflUAN5T3Ei16tnMi6Wj4b6Z3t
	zaU00wsH9TGEny11rjvJUjOc1gPOMxjsPC8PdtZy6drfdDXtHu9V7L87WaonDyTT+1Ucd29QvXa+y
	+fXDdyJr5KMUmmF1g2+WbwutDj79UMb3Gg+P8uwH+IgmKEElWI24KPUY5sv8U2EJQD7hNVzTTjLD+
	3z1XtWZ5QZK/Azvo1D5MoN4TTXL1vvgbs8WJq41i6MwvAGya6ROyQN0AjQr8G6eBFKNX+4SZUYrjh
	4sZGCGbELDLcftv6i97A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8G4r-0000000GgsA-1PkR;
	Fri, 25 Apr 2025 10:14:37 +0000
Received: from out-184.mta0.migadu.com ([91.218.175.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8FKG-0000000GXBp-1fsC;
	Fri, 25 Apr 2025 09:26:31 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1745573181;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qtgU1WOXpOKgLGgZrNJLTIThCMPkblkediAeOcnKwxc=;
	b=oWIYJ4sP2DQejiriCy+X853nBC07WvAU2/mW0mAkccyyiFTMK0Ndk3bYoDowxudxe+82kJ
	uHu9QtMrjKt6Pg97/+BA4FIpd6XL2T2nJRr0J3jCUBuSzKUMhBj9vHKwkFoZ/ubpXSTJ9/
	/20qn/eHopqpOOZdXID7eaWapvAEfjdX8qNu67Vh5likLF3e2ITcz/7CKqe3eKi775kIbX
	TiNgnVHZB5fHfs4KY/VM6Juk1lF6jLIZG9anh3imLgQNbG8FIWUWXZuBizvvXDgYjiTSxB
	UZtPPuMDNUr1TWP4SoiTtRhd+KdwiioNP62GrRkBp6b2nv6zyOCKOfFZO2EBLg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/4] Add vcc-supply to SPI flash on Pine64 devices + Rock 5B
Date: Fri, 25 Apr 2025 10:44:40 +0200
Message-ID: <20250425092601.56549-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_022629_766225_92C01C97 
X-CRM114-Status: UNSURE (   4.87  )
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
Cc: Detlev Casanova <detlev.casanova@collabora.com>, Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Dang Huynh <danct12@riseup.net>, Johan Jonker <jbx6244@gmail.com>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The vcc-supply property was added to "jedec,spi-nor" binding in commit:
e7f4e924f46d ("dt-bindings: mtd: jedec,spi-nor: add optional vcc-supply")

which resulted in the following warning:
  spi-nor spiN.0: supply vcc not found, using dummy regulator

Fix that by specifying the vcc-supply property.

Diederik de Haas (4):
  arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3328-rock64
  arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3399-rockpro64
  arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3566-pinetab2
  arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3588-rock-5b

 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi  | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    | 1 +
 4 files changed, 4 insertions(+)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
