Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 506CCC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Oct 2022 08:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nMstuxnUU1vksv2gBkR3SHzVyWrf/C2Kv7FIe/Ju2zo=; b=dPZC6ll09AtsZT
	xQ5Wcn3Y16aYdzXuSiw/b+UyFaKH6gxHHLrks8IMdTN3UoenOhXeCB24FcpIqV8f7ntArmSsKGjAT
	X6EkdXmsnnYl8GufRqEQ4IVdq76NtA7bbVpCMWW3jiFjrzl7/Xr165bHPCNhwFG5f56Zu6rnXfQro
	WNyhtmq91/fcaMFD3uFlrDa2JvZ2e0s08kPqA/f4GqBRnUSm9riFYGwZNR3THeCW2Naw4E16vi503
	eNl8cmviVBDImmogpRHCuwt44HmX3QAR7fJF6k6RoT7fY/4Ft8mw0rtxtUCybOhxdcUB6mD4ASXpn
	UPRvREC1LRJi16qlAbZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og0BB-00DCpQ-7p; Wed, 05 Oct 2022 08:55:01 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og0Az-00DClX-CA; Wed, 05 Oct 2022 08:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1664960082; bh=ERXYUe3zAf8vP7NuLg3AyxqNSKcd5EgrDfNw6VaFtAE=;
	h=From:To:Cc:Subject:Date:From;
	b=wED3iXlYON+3ugRWAhh8WArtQXRUnvQ4x7xsacb0cmTigzpJSEoJmP61C/wr5c6qa
	 BK5Knsbe7kLdWKVUBv+AompWWfeT+DFfJyiRuIX3NFuVfcIAV/v5Z7qXSrk9AEEtc0
	 SgfLf/xrB1HB4jwaVIDTqu7ErOYra4AlPM+e1/Pc=
From: Ondrej Jirman <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register map and ranges
Date: Wed,  5 Oct 2022 10:54:38 +0200
Message-Id: <20221005085439.740992-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_015450_209010_BC6ED600 
X-CRM114-Status: GOOD (  15.85  )
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

I have two Realtek PCIe wifi cards connected over the 4 port PCIe swtich
to Quartz64-A. The cards fail to work, when nvme SSD is connected at the
same time to the bridge. Without nvme connected, cards work fine. The
issue seems to be related to mixed use of devices which make use of I/O
ranges and memory ranges.

This patch changes I/O, MEM and config mappings so that config and I/O
mappings use the 0xf4000000 outbound address space, and MEM range uses
the whole 0x300000000 outbound space.

This is simialar to how BSP does the mappings.

I changed num-ob-windows to value detected by the kernel so if for whatever
reason the kernel ever starts respecting this DT property, it would not
switch to sharing I/O and CFG spaces via a single iATU mapping for
no reason.

This change to the regs/ranges makes the issue go away and both nvme and
wifi cards work when connected at the same time to the bridge. I tested
the nvme with large amount of reads/writes, both behind the PCIe bridge
and when directly connected to Quartz64-A board.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
BSP for reference: https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L2370

v2:
- change ranges to use 0x300000000 fully for MEM and make use of
  the 0xf4000000 outbound range for IO and config
- full retest with/without the switch
- if lscpi/dmesg is useful in the future for comparison, see:
  https://xff.cz/kernels/random/quartz64a-pcie/

I used this script for the tests:

#!/bin/bash

OUT=/mnt/data
n=8

test -f /tmp/test.dat || \
    dd if=/dev/urandom of=/tmp/test.dat bs=1M count=1024
md5sum /tmp/test.dat

i=0
while test $i -lt $n
do
    dd if=/tmp/test.dat of=$OUT/test$i.dat bs=4M oflag=direct

    i=$(($i+1))
done

i=0
while test $i -lt $n
do
    dd if=$OUT/test$i.dat bs=4M iflag=direct | md5sum

    i=$(($i+1))
done


 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 319981c3e9f7..99fd9543fc6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -855,7 +855,8 @@ pcie2x1: pcie@fe260000 {
 		compatible = "rockchip,rk3568-pcie";
 		reg = <0x3 0xc0000000 0x0 0x00400000>,
 		      <0x0 0xfe260000 0x0 0x00010000>,
-		      <0x3 0x3f000000 0x0 0x01000000>;
+		      <0x0 0xf4000000 0x0 0x01f00000>;
+
 		reg-names = "dbi", "apb", "config";
 		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
@@ -877,15 +878,15 @@ pcie2x1: pcie@fe260000 {
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
+		ranges = <0x01000000 0x0 0x00000000 0x0 0xf5f00000 0x0 0x00100000
+			  0x02000000 0x0 0x40000000 0x3 0x00000000 0x0 0x40000000>;
 		resets = <&cru SRST_PCIE20_POWERUP>;
 		reset-names = "pipe";
 		#address-cells = <3>;
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
