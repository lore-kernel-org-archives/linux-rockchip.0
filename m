Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F4CCF327D3
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Apr 2026 09:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Do2eNgXVdaL0Z0kf8g8STZw0UvVUtcTUxZU+w2mAsoM=; b=OmvFjgiHjHuE+d
	RdXyI3x5B5TAX+MaRzBBnb3ShyLEiSt/UVeGFzEe7XMeqA+xSJ7oIRiZMmtPuhvR8OpeQ/u9MTocB
	kMG7xWJXHmRHti0oRVrUynPLHTDF6YfRmrnBT7SFBz60uWGANL62xmR60/2gzuDk1X2Jau9hNMJ33
	LdvIMv/kP+N59gjIHLVW11VH+JwgyXgORP+jc3cMPcWS8RiMuMzIIEq1yf0dhfbXc/ZA6GNcHVAeM
	ljvkiRObnCJqL4p5TdwZyaO6X3mRGRWVdjga0/AcIlS3ksd33tdZWEdN6f4IgOPnEzUslhQ+ZHpqq
	Ccb6QGpN0FuZzDiPjscw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF7fn-00000008M8g-2XG0;
	Tue, 21 Apr 2026 09:45:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF7fm-00000008M6m-0MSP
	for linux-rockchip@bombadil.infradead.org;
	Tue, 21 Apr 2026 09:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=CV9c1b3x442J4d7fS2IkKGulkxFv3w2YEEORXf6cDj8=; b=EoJjiari4E5z/yTjDzksk4mhjI
	D3R77Bt/oVgOxrVKNiccx9s40OTwJeyu/JUt1XW5pY3PmrNX5XPCeKCv4rXmkGQWfDEVULrCB+Xws
	g7PAZP9fDK/kMgX7w14DCsTpFkvom9tXSsVB8sz9FCGUyJ8riV62zw3CXZbHfv6Fjsa2h2IEEdSR4
	pftOAdw/Pq64W+8XSyxp+SyZAlfAbHzrPUEBUqwQEchDU1gM9OIgJR0MtOszsxAyjdYT9jgyeY19G
	/Wp8pnjeaVdbrINDnW7IFqQp16XKAkaKBmuqi3ysyf8Nq8Yg7dJnCbgC67jIhfNvnYXHvxvLUHuZA
	JywvWMiA==;
Received: from smtp-190f.mail.infomaniak.ch ([185.125.25.15])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF7fd-00000009Van-2KrS
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Apr 2026 09:45:33 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10::a6b])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4g0HXM6MgnzXpK;
	Tue, 21 Apr 2026 11:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0leil.net;
	s=20231125; t=1776764723;
	bh=CV9c1b3x442J4d7fS2IkKGulkxFv3w2YEEORXf6cDj8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MuBqGykWqgBJzLlqi7pe3zx6e3hd5EYSpG6cJ0iJiKGsy9flvPEmCZa7V2lTOnv70
	 5T7ekGqlve+q3Ui5cwBSRVar4v+t4xTDA+5g3VUibJLiOBebp090IUfcCGqB5kaMpn
	 n0VF9VymGzVM/SpU2J4uuYrDwRJlEKvXWR/pbU7KKV6j/zLQoBwEuGD6WleMsz7ILx
	 po1tpN6CHfvgnd7qCu9xJym4owq09TQo5Kdgqe++7eApSy1DciZyG32QCaHWuWvrr5
	 W/uDHntsHUZuU6mACQcv7fppI0njjp/wrxvw/7F9tuh7pfbVabXRtM+v+DPQRGiJKl
	 /Ral8emt65UVg==
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4g0HXL6s14zb5b;
	Tue, 21 Apr 2026 11:45:22 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 21 Apr 2026 11:45:06 +0200
Subject: [PATCH v2 2/2] arm64: dts: rockchip: fix Ethernet PHY not found on
 PX30 Ringneck
MIME-Version: 1.0
Message-Id: <20260421-px30-eth-phy-v2-2-68c375b120fd@cherry.de>
References: <20260421-px30-eth-phy-v2-0-68c375b120fd@cherry.de>
In-Reply-To: <20260421-px30-eth-phy-v2-0-68c375b120fd@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko.stuebner@cherry.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-47773
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_104532_038023_9C6B3356 
X-CRM114-Status: GOOD (  14.76  )
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

Note that this is only an issue since commit e463625af7f9 ("arm64: dts:
rockchip: move reset to dedicated eth-phy node on ringneck") as before
that commit the reset was done by the MAC controller before starting the
MDIO auto-detection mechanism, via the snps,reset-* properties.

Cc: stable@vger.kernel.org
Fixes: e463625af7f9 ("arm64: dts: rockchip: move reset to dedicated eth-phy node on ringneck")
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index 4203b335a2633..973b4c5880e24 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -344,7 +344,7 @@ &io_domains {
 
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
