Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F425F327CF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Apr 2026 09:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeSL/O5J/9JXYL+gvqQAAeHDQewmzCkwIAlcgIfpndI=; b=Rkye1h+5z45IiB
	ErHdI3YmaE9itYKJgIwx2qg3IzHioVqqaBmeIChRCr13ag2pXcfVYf5Vgg7jKuXsg2qHeFXhUP0J5
	4ESOoNHkX0gbHGurxjOszVSoYWb8cV2W46RQTs9kF+68cojwiBY2EBpETSWIO95j+aQ2dUj5zT2sk
	QiNTpeMgUAvdxKSL6C8SUsc1QHE/vb9bfPdHfsgRfm76ByLUfu2s8rlu8En4TM3XutqvGjZ8/ePZh
	1JApG+ns+qRCpkLFiJ86I0mH7tNxc2WRygLedmg4jFdyqE8vomWC+tONg3xBi/BifayQBxM08zjE/
	85P2knA+IP6GchbRWarw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF7ff-00000008M3K-323f;
	Tue, 21 Apr 2026 09:45:31 +0000
Received: from smtp-1909.mail.infomaniak.ch ([185.125.25.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF7fc-00000008Lz9-0sZ6
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Apr 2026 09:45:29 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10::a6b])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4g0HXM00Krzbqp;
	Tue, 21 Apr 2026 11:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0leil.net;
	s=20231125; t=1776764722;
	bh=dNG/Y20//o8s/WKC5TFEmO5f5/3pr9Lb0W7Zg73YSGA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=m6tjE2QwToZnbli7rrQbIaNnibN82woMW1IErKpEEBaZmNpq8iyeihtoxEuMrrjjN
	 tEQgCM2HrrPa6dBDgFNHL9Gm2fzuAABNXl2XP74q89iT+ZLkrJM5y/4lkaDMsDb9SO
	 PjvEVDvSFTRRHjvUMbatYIvkY+jV6/7IIC+JIlmhCPIpeAklgHR81cKwxLbm1HbAIo
	 Kkg2htoGVyG3eAun/CMlz8bfv0n5XGNTHbu76DKmLtB6lq/Fw6IHOUZgexVOvVKm53
	 xD+DgXvbGS6C0cil9NaBnmeMNLS30nZ+oHyhC5aM6j3WvChvd4pfdVG5ptY7pz9LSD
	 +ta/wvaKp3ouQ==
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4g0HXL0Qv6zbgQ;
	Tue, 21 Apr 2026 11:45:22 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 21 Apr 2026 11:45:05 +0200
Subject: [PATCH v2 1/2] arm64: dts: rockchip: fix Ethernet PHY not found on
 PX30 Cobra
MIME-Version: 1.0
Message-Id: <20260421-px30-eth-phy-v2-1-68c375b120fd@cherry.de>
References: <20260421-px30-eth-phy-v2-0-68c375b120fd@cherry.de>
In-Reply-To: <20260421-px30-eth-phy-v2-0-68c375b120fd@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko.stuebner@cherry.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.15-dev-47773
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_024528_700405_A2C3AB45 
X-CRM114-Status: GOOD (  14.39  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

When not passing the PHY ID with an ethernet-phy-idX.Y compatible
property, the MDIO bus will attempt to auto-detect the PHY by reading
its registers and then probing the appropriate driver. For this to work,
the PHY needs to be in a working state.

Unfortunately, the net subsystem doesn't control the PHY reset GPIO when
attempting to auto-detect the PHY. This means the PHY needs to be in a
working state when entering the Linux kernel. This historically has been
the case for this device, but only because the bootloader was taking
care of initializing the Ethernet controller even when not using it.
We're attempting to support the removal of the network stack in the
bootloader, which means the Linux kernel will be entered with the PHY
still in reset and now Ethernet doesn't work anymore.

The devices in the field only ever had a TI DP83825, so let's simply
bypass the auto-detection mechanism entirely by passing the appropriate
PHY IDs via the compatible.

Fixes: bb510ddc9d3e ("arm64: dts: rockchip: add px30-cobra base dtsi and board variants")
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/px30-cobra.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi b/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
index b7e669d8ba4d1..add917af5de78 100644
--- a/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
@@ -397,7 +397,7 @@ &io_domains {
 
 &mdio {
 	dp83825: ethernet-phy@0 {
-		compatible = "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id2000.a140";
 		reg = <0x0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&phy_rst>;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
