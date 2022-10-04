Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D355C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 14:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fdee7xqruPQJtoh9nyjU6wAUAWp57toGjtt/T7Ni/J8=; b=Tm8sJ0ZVseOsFP
	93tWPd4QZGsTkbqy/LBfulOarE7ue5uPbc0D2mdcUNbWtVT5BHTT9KCOFr6QKh3q2wL4F81z+7rku
	CjjG+WhTOlU8bdCWI+n/S0GYO/iSy/nP7QEugWScpWVgTE36E6XzoekBkP7D5qeJ3p+UMVK7aUIWK
	Ps+PnnNvMyoQl5VLCgvGUJZYAZDIkSgcwVzVpEjEwsCate8tTUmetpyUNj4/OxSs+MflnISfsCkrZ
	ub91m3H+I7DXBUEN5j7GSIDCbvcbH6NGkpKteTrJSaUpBhlj/5cCnbEkd5fOtT9HVsC3WVg9aNlaI
	9hUYn9JtMk5Iwt8Ng+QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofj8u-009x1P-2q; Tue, 04 Oct 2022 14:43:32 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofj8j-009wzV-1o; Tue, 04 Oct 2022 14:43:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1664894592; bh=99g94TiL+hFwBhUbQX5X4TMC3lCGyB73fo7yYhcTiA4=;
	h=From:To:Cc:Subject:Date:From;
	b=o/RSqcqX5mVidZgEXMSOC1i5y5uevvYOEdlYRTh36ZM0KKE34mbxp9N/fMLhZyFoP
	 xSnnDkdHI7OPurUPgIxPwIQzdzVul6e5Hg4WEbJ39WGLuzWs3wLkrX8MoYtEefFZUm
	 fbYdDuhpqxj3B1c44PBz3SQSxJe6KtR047UGuFfw=
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
Subject: [PATCH] arm64: dts: rockchip: rk356x: Fix PCIe register map and ranges
Date: Tue,  4 Oct 2022 16:43:03 +0200
Message-Id: <20221004144304.536023-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_074321_286778_BB2D19AB 
X-CRM114-Status: GOOD (  13.83  )
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

I have two Realtek PCIe wifi cards connected over the 4 port
PCIe bridge to Quartz64-A. The cards fail to work, when nvme
SSD is connected at the same time to the bridge. Without nvme
connected, cards work fine. The issue seems to be related
to mixed use of devices which make use of I/O ranges and memory
ranges.

This mapping is designed to be more straightforward, inspired by
dt-bindings docs for sample pcie3x2 node:

      reg = <0x3 0xc0800000 0x0 0x390000>,
            <0x0 0xfe280000 0x0 0x10000>,
            <0x3 0x80000000 0x0 0x100000>;
      ranges = <0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000>,
               <0x83000000 0x0 0x80900000 0x3 0x80900000 0x0 0x3f700000>;

I noticed that this is crafted so that there doesn't need to be
any translation other than dropping the high dword bits, and I
modified the ranges for pcie2x1 to follow the same principle.

This change to the regs/ranges makes the issue go away and both
nvme and wifi cards work when connected at the same time to the
bridge.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 319981c3e9f7..e88e8c4fe25b 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -855,7 +855,8 @@ pcie2x1: pcie@fe260000 {
 		compatible = "rockchip,rk3568-pcie";
 		reg = <0x3 0xc0000000 0x0 0x00400000>,
 		      <0x0 0xfe260000 0x0 0x00010000>,
-		      <0x3 0x3f000000 0x0 0x01000000>;
+		      <0x3 0x00000000 0x0 0x01000000>;
+
 		reg-names = "dbi", "apb", "config";
 		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
@@ -884,8 +885,8 @@ pcie2x1: pcie@fe260000 {
 		phys = <&combphy2 PHY_TYPE_PCIE>;
 		phy-names = "pcie-phy";
 		power-domains = <&power RK3568_PD_PIPE>;
-		ranges = <0x01000000 0x0 0x3ef00000 0x3 0x3ef00000 0x0 0x00100000
-			  0x02000000 0x0 0x00000000 0x3 0x00000000 0x0 0x3ef00000>;
+		ranges =  <0x01000000 0x0 0x01000000 0x3 0x01000000 0x0 0x00100000
+			   0x02000000 0x0 0x02000000 0x3 0x02000000 0x0 0x3e000000>;
 		resets = <&cru SRST_PCIE20_POWERUP>;
 		reset-names = "pipe";
 		#address-cells = <3>;
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
