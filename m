Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA54AC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 13:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0jacp1Ve7EDjj//rnBZgKGhR88Lw+DNIHVLyz54Orb8=; b=WLij+MScGXrRaI
	++22zTFCz3gO73jGyMzKXqnxZzo8G8i7HLWK0XsBksi3kjbbSgBhmK0hglsfyRGqb+9w2vTLKjyUM
	mLR5XloP2FlWqZ/3QTuiTZMKagv4FlDyU9bsiq1IaMY4pFkaTFDHy+egvxrhH78x/ep/Wb9K95X/P
	DnlCrxyviooXbcfkwqzIdT3xSMAQ8m6ni/pbQicChCBtt6b8bmm5E4VfUduogXfnRqGa9WhLpJZ6n
	dE/lMZO9oZe5sJHvcp4Yk6dpCJaEzhqK41yHSWoJBD7asjNCmqx/KZsaCziJaC8QGJqxhBJWsDj+t
	iv+0WKhRiFLbkbK5XlYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os1lc-00EdRR-8I; Mon, 07 Nov 2022 13:02:20 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os1lP-00EdKP-WD; Mon, 07 Nov 2022 13:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1667826120; bh=Z5HZQ0FJ5zop6RxxhYVUF6pwXoF1Wmv4094FaI/3RFs=;
	h=From:To:Cc:Subject:Date:From;
	b=n8Q020NDFCcVdsopFtB8ts4Gk0wCoh5ew+3NXPQL6DBMcHNBJz8cYvtO4pGdraY8x
	 KRiHiA89QGcLSSNvckYb2RwEmDEa6NwaKMNvBHTOqiLptjOrwZRBiFrlP8itzXuzS8
	 pmwwV2vKj5YyWNyzSKJZY9tklB8a2fXP6EVLwBLE=
From: Ondrej Jirman <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v3] arm64: dts: rockchip: rk356x: Fix PCIe register map and ranges
Date: Mon,  7 Nov 2022 14:01:56 +0100
Message-Id: <20221107130157.1425882-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_050208_536022_2DF3EEA2 
X-CRM114-Status: GOOD (  13.58  )
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

I have two Realtek PCIe wifi cards connected over the 4 port PCIe bridge
to Quartz64-A. The cards fail to work, when nvme SSD is connected at the
same time to the bridge. Without nvme connected, cards work fine. The
issue seems to be related to mixed use of devices which make use of I/O
ranges and memory ranges.

This patch changes I/O, MEM and config mappings so that these use the
32bit outbound address space at  0xf4000000, and 64bit MEM range uses
the whole 0x3_0000_0000 outbound address range.

These values were suggested by pgwipeout:

  https://lore.kernel.org/lkml/875ygbsrf3.fsf@bloch.sibelius.xs4all.nl/T/#m84b5f6992cc26dffe0d3783c0d8c9c86e5e10c10

This is identical to how BSP does the mappings.

This change to the regs/ranges makes the issue go away and both nvme and
wifi cards work when connected at the same time to the bridge. I tested
the nvme with large amount of reads/writes, both behind the PCIe bridge
and when directly connected to Quartz64-A board.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
v3:
- changed ranges to the ones suggested by pgwipeout

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 164708f1eb67..726c948ccbf0 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -951,7 +951,8 @@ pcie2x1: pcie@fe260000 {
 		compatible = "rockchip,rk3568-pcie";
 		reg = <0x3 0xc0000000 0x0 0x00400000>,
 		      <0x0 0xfe260000 0x0 0x00010000>,
-		      <0x3 0x3f000000 0x0 0x01000000>;
+		      <0x0 0xf4000000 0x0 0x00100000>;
+
 		reg-names = "dbi", "apb", "config";
 		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
@@ -973,15 +974,17 @@ pcie2x1: pcie@fe260000 {
 				<0 0 0 4 &pcie_intc 3>;
 		linux,pci-domain = <0>;
 		num-ib-windows = <6>;
-		num-ob-windows = <2>;
+		num-ob-windows = <8>;
 		max-link-speed = <2>;
 		msi-map = <0x0 &gic 0x0 0x1000>;
 		num-lanes = <1>;
 		phys = <&combphy2 PHY_TYPE_PCIE>;
 		phy-names = "pcie-phy";
 		power-domains = <&power RK3568_PD_PIPE>;
-		ranges = <0x01000000 0x0 0x3ef00000 0x3 0x3ef00000 0x0 0x00100000
-			  0x02000000 0x0 0x00000000 0x3 0x00000000 0x0 0x3ef00000>;
+		ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
+			<0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x01e00000>,
+			<0x03000000 0x0 0x40000000 0x3 0x00000000 0x0 0x40000000>;
+
 		resets = <&cru SRST_PCIE20_POWERUP>;
 		reset-names = "pipe";
 		#address-cells = <3>;
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
