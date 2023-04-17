Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC4F4C77B72
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 21:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3RyXVAVyAnZoTUlSUamrHtjQWlW+985Ld/q3wcWemU=; b=EYFux408j8OhzD
	Y5efyjWk+fOlrxIjBm8BCclFK0lwiQXHRs6kdPFs+3obDJHxWbB/wnoAOWTSvJXgfGGBI0nSFO85i
	L58Sn4iFsIWoVTMaU7lSqY4SXZJWzbVG6FmZLq8W4p4d5xRnIPQY05lIsFVqVjN0zmjOcrQl8du84
	REknBH+aSglYuY+tdlUo7v5QssxwYdpuN1nubXtFKCtFMq8gRvEuvC8r4yeG+bpaTQmZXtnCGX0Ij
	vrinr4FuhIvk7mUB1ajtsUDnYN6+CKxSFooJK1RwCy/yL14bgtQ0dzdyUUuY0/Z4y4HJvQXptcAhC
	hs/RwbZMCLvvCRIPtgsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poWab-0007Vg-1m;
	Mon, 17 Apr 2023 21:40:45 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poWaX-0007T4-22
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 21:40:42 +0000
Received: from jupiter.universe (dyndsl-091-248-191-155.ewe-ip-backbone.de [91.248.191.155])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 06E126603239;
	Mon, 17 Apr 2023 22:40:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681767639;
	bh=JaiGX/zKLMMzlVpGom/T53NzObIEnY5d4OtYAaV22XU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JBC4My2jOefTtSE40zQd5Zg2VO3ms+tO9845Oz4F7aCh3uJ7OxO/LgWe/WlbVz7te
	 pG7XgSmDV83dQklr8xLw0oLlZtbeLZSJW5PJhHzBxnvd8CppU6qtSKf3XxJXbQF0aK
	 K45SpXQe5879AxpkTVfBAukjduR09sIJhKplpLmN/XkQpxiKY7CM2xIRbo+JN4CNow
	 Q1ktK0PrThXvY9P2DmKwYI8MYJ5VJafqG2pVKKchdCUlHy2Q/vZFYSPfk80/X4pnFC
	 VFXF7TgJjasFNTWudpFPI9JQjcu2v3TMp4/QW8YLQgfP8osQ7IT17BihdVC0jtMTTE
	 GE3BO0lkHXR+w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 039E94807EF; Mon, 17 Apr 2023 23:40:36 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Marc Zyngier <maz@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peng Fan <peng.fan@nxp.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Peter Geis <pgwipeout@gmail.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 2/2] arm64: dts: rockchip: rk3588: add GIC ITS support
Date: Mon, 17 Apr 2023 23:40:35 +0200
Message-Id: <20230417214035.101190-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417214035.101190-1-sebastian.reichel@collabora.com>
References: <20230417214035.101190-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_144041_800035_902DA675 
X-CRM114-Status: UNSURE (   9.07  )
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

Add the two Interrupt Translation Service (ITS) IPs that are part of the
GIC-600. They are mainly required for PCIe Message Signalled Interrupts
(MSI).

Co-developed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 2124c654f665..62204b96b0b4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1741,7 +1741,24 @@ gic: interrupt-controller@fe600000 {
 		mbi-alias = <0x0 0xfe610000>;
 		mbi-ranges = <424 56>;
 		msi-controller;
+		ranges;
+		#address-cells = <2>;
 		#interrupt-cells = <4>;
+		#size-cells = <2>;
+
+		its0: msi-controller@fe640000 {
+			compatible = "arm,gic-v3-its";
+			msi-controller;
+			#msi-cells = <1>;
+			reg = <0x0 0xfe640000 0x0 0x20000>;
+		};
+
+		its1: msi-controller@fe660000 {
+			compatible = "arm,gic-v3-its";
+			msi-controller;
+			#msi-cells = <1>;
+			reg = <0x0 0xfe660000 0x0 0x20000>;
+		};
 
 		ppi-partitions {
 			ppi_partition0: interrupt-partition-0 {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
