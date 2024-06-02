Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D7D8C25B7E
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Jun 2024 06:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D+k41qITMgtxnaeYpi68ZGsLyW8uD7MXDTZx5KpnjaQ=; b=3wCpwWvdP0KZGG
	YLQ4XNVbBeaq3pGc9Zce1XoneLGGVePd8yYCNpB++hEyAfUxWeO/AbYfHT9wUkWYzzq8oMscZjfj5
	M771a3FaFdRQsMyh1tynwm9L6DOsWq2S6+XaUwEYGh9JHjXjD+apTFSu1qDwTLD5OUnwEV3cfyUqy
	z3FJGx+4KVfnRNEEtiPQdcUpuTdqEm2mumEjUTTUC9CNcOtsuVBWNvfzeklxhCJCZjtIkX/pAQTl8
	4d3Bsw/roWZqhLu4BBflRAd+NK+G4dexXergo1WSR8khedG4H6usSbJeFl5VFBYQlUuvScoFNw7tL
	k5Uk3gyNTs5pEen0CPtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDefE-0000000DpuO-2SOR;
	Sun, 02 Jun 2024 06:25:56 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDefA-0000000DptX-0HVi;
	Sun, 02 Jun 2024 06:25:54 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1717309546;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8njZ1sdo2u2qgfKizKRY7N1OVRkmXLth5XN/Ju4y0cM=;
	b=dHvbBrvVFZu+YDWFbkTpxPM51FTDpkZ8xAWrF4SspSJU5CeUxSur6Pm0RqSEM1e7PGVcql
	/2sz1LYLOyr4uCqeByjP0k6uwv2IR0ZnohqF9jc9KYk3Z3aeYy+zpkfTHeYTM2MmfUKCGL
	nw9j1WL3/lWil46v0I/5NFwpkAPXHPWaAGp4xYIRz7HwDxnss56yFy0WSzK2JfGmMt5Hx4
	YYyJ0RaROWk6tt8WcQkES72+N2LNyxhe1xgPOieBNLz9Ypdpy4dx9QYYTjPlwdiKcY9wl0
	N9FxPeeasY/xf3LltDwkED5/LVZ74FQm5afPO15otSelHGsTgncB4xydEEthIQ==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	alchark@gmail.com
Subject: [PATCH] arm64: dts: rockchip: Delete the SoC variant dtsi for RK3399Pro
Date: Sun,  2 Jun 2024 08:25:38 +0200
Message-Id: <4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_232552_738608_CC06F1B8 
X-CRM114-Status: GOOD (  13.10  )
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

The commit 587b4ee24fc7 ("arm64: dts: rockchip: add core dtsi file for
RK3399Pro SoCs") describes the RK3399Pro's PCI Express interface as the way
built-in NPU communicates with the rest of the SoC.  All available evidence
shows this not to be accurate, as described in detail below.  Moreover, the
rk3399pro.dtsi isn't used anywhere, so let's delete it.

The publicly available schematics of the Radxa Rock Pi N10 carrier board [1]
and the Vamrs VMARC RK3399Pro SoM, [2] which put together form the currently
single supported RK3399Pro-based board, clearly show that the PCI Express x4
interface of this SoC is fully functional and actually not used by the SoC
to communicate with the built-in NPU.  In more detail, the VMARC SoM exports
the SoC's PCI Express interface at its board-to-board connector, and the Rock
Pi N10 routes it to an M.2 M-key slot with four PCI Express lanes.

Both the Rockchip RK3399Pro datasheet, version 1.1, [3] and the Rockchip
RK3399Pro technical reference manual (TRM), first part of the version 1.0, [4]
don't describe that the SoC's PCI Express interface is reserved for the NPU.
Instead, the RK3399Pro TRM describes that the NPU uses AHB and AXI interfaces
as the host interface (HIF).  The RK3399Pro datasheet clearly describes that
the PCI Express x4 interface is available for general-purpose use, just like
it's the case with the standard Rockchip RK3399 SoC, [5] albeit with a bit
shorter feature list provided in the RK3399Pro datasheet.

Even the publicly available reference RK3399Pro schematic from Rockchip [6]
shows the availability of a standard PCI Express slot with four lanes, which
would be pretty much impossible if the PCI Express interface was reserved
for the communication with the built-in NPU.

Based on the RK3399Pro datasheet [3] and the board schematics, [2][6] the
built-in NPU actually exports NPU_PCIE as a separate PCI Express x2 interface
that's partially pinmuxed with the NPU's separate USB 3.0 interface, which is
described further in the next paragraph.  However, the NPU's separate PCI
Express x2 interface is left undocumented in the publicly available RK3399Pro
documentation, in which it's clearly described as reserved for internal use
and not intended for the communication with the NPU.  Finally, the evidently
independent nature of the separate NPU_PCIE x2 interface makes ignoring it
safe when it comes to determining the nature and the availability of the
RK3399Pro's main PCI Express x4 interface.

The actual application-level communication with the built-in NPU, including
powering it up and down and uploading the NPU firmware, is performed through
the separate USB 2.0 and USB 3.0 interfaces exported by the NPU, [7] which
the VMARC SoM [2] and the reference board design from Rockchip [6] route to
the SoC's standard USB 2.0 and USB 3.0 interfaces, to make the NPU accessible
to software running on the SoC's ARM cores.

[1] https://dl.radxa.com/rockpin10/docs/hw/rockpi_n10_sch_v1.1_20190909.pdf
[2] https://dl.radxa.com/rockpin10/docs/hw/VMARC_RK3399Pro_sch_V1.1_20190619.pdf
[3] https://www.rockchip.fr/RK3399Pro%20datasheet%20V1.1.pdf
[4] https://www.rockchip.fr/Rockchip%20RK3399Pro%20TRM%20V1.0%20Part1.pdf
[5] https://www.rockchip.fr/RK3399%20datasheet%20V1.8.pdf
[6] https://opensource.rock-chips.com/images/e/e4/RK_EVB_RK3399PRO_LP3S178P332SD8_V11_20181113_RZF.pdf
[7] https://wiki.radxa.com/RockpiN10/dev/NPU-booting

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi | 22 ---------------------
 1 file changed, 22 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
deleted file mode 100644
index bb5ebf6608b9..000000000000
--- a/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
+++ /dev/null
@@ -1,22 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-// Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
-
-#include "rk3399.dtsi"
-
-/ {
-	compatible = "rockchip,rk3399pro";
-};
-
-/* Default to enabled since AP talk to NPU part over pcie */
-&pcie_phy {
-	status = "okay";
-};
-
-/* Default to enabled since AP talk to NPU part over pcie */
-&pcie0 {
-	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
-	num-lanes = <4>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_clkreqn_cpm>;
-	status = "okay";
-};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
