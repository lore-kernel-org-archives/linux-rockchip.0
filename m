Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2D8BC2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 17:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tYikEv3Ya1RBJYkvVWgvD05tYJLbnU/Zn+2qAE7QDBE=; b=0WLH2wHa3ZqQhOGcwfYv6hBqeR
	kAOl6/fiV+PcBaBS2FabGt96MLbiUDD22yensDzJDXCaeCv46s4T/i9k509Mx6xxvG0jVGopIW/KL
	Hi5yx9iY3Rc4rIRZPZQreyrAowKKOISVyC7f0Kptn9QVJ9ejYBrm1yfBkBPkE3chPXnYInvuXiQeZ
	bASQzThUXA73tkoxdwfKeEI8tgexALqT/WvC91+GeLynZ9swI7EZN2o3+eGWDHPo9dD8tMtT88JEU
	XaqfPZW/m6M4SUjKeN3vx/P/haxn7X8eE3+7JGvu3qzROu24KQ0kQSwS1SkFOiFv9IApjV1aSe71A
	DwxDhlYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnun-00000000Bl2-0QX5;
	Mon, 24 Jun 2024 17:55:41 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnug-00000000BiV-1jcc;
	Mon, 24 Jun 2024 17:55:36 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719251732;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nMIDSnjT3PD/47d4+6ZJlG0hXn2fIBhyGjnU5O7IR3g=;
	b=QLbUgLBZVcgVcpGaFpVUnU1mgrT8Tese8mogm39YN+x1kdgHCUBByBafzW3dJGeJkPcGhl
	0DAvtJZXHlZgDSxRQHZj7Mon8lcOEMCmavE6odP2Bzbyk/GNYpMp9oavCNDecuBDlcDF00
	YduP8cZGcBKVaymsZi848oV9hWvNScRqQIN5njrEQI2LM0WzEOLUdhs7xLW+t3eVGnecF8
	WZvAjir1LCMTSWLCjlcsNAMxsE/N3+ESFdmCegfNR7bq7lKlLEinN0+4HjW6SArSetT/RP
	oxbPjAQCnqF2nsPMjvU8DlKmuk1UWisuvxd2hOMfFbG1pAn0SCNInm6yzQHJBw==
Date: Mon, 24 Jun 2024 19:55:31 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org, alchark@gmail.com
Subject: Re: [PATCH] arm64: dts: rockchip: Delete the SoC variant dtsi for
 RK3399Pro
In-Reply-To: <4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org>
References: <4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org>
Message-ID: <ba9d41461f5d56947d7851473637722b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_105535_082940_8BFFD8D8 
X-CRM114-Status: GOOD (  29.63  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello all,

Just checking, are there any comments on this patch?  Is there something
more I can do to have it accepted?


On 2024-06-02 08:25, Dragan Simic wrote:
> The commit 587b4ee24fc7 ("arm64: dts: rockchip: add core dtsi file for
> RK3399Pro SoCs") describes the RK3399Pro's PCI Express interface as the 
> way
> built-in NPU communicates with the rest of the SoC.  All available 
> evidence
> shows this not to be accurate, as described in detail below.  Moreover, 
> the
> rk3399pro.dtsi isn't used anywhere, so let's delete it.
> 
> The publicly available schematics of the Radxa Rock Pi N10 carrier 
> board [1]
> and the Vamrs VMARC RK3399Pro SoM, [2] which put together form the 
> currently
> single supported RK3399Pro-based board, clearly show that the PCI 
> Express x4
> interface of this SoC is fully functional and actually not used by the 
> SoC
> to communicate with the built-in NPU.  In more detail, the VMARC SoM 
> exports
> the SoC's PCI Express interface at its board-to-board connector, and 
> the Rock
> Pi N10 routes it to an M.2 M-key slot with four PCI Express lanes.
> 
> Both the Rockchip RK3399Pro datasheet, version 1.1, [3] and the 
> Rockchip
> RK3399Pro technical reference manual (TRM), first part of the version 
> 1.0, [4]
> don't describe that the SoC's PCI Express interface is reserved for the 
> NPU.
> Instead, the RK3399Pro TRM describes that the NPU uses AHB and AXI 
> interfaces
> as the host interface (HIF).  The RK3399Pro datasheet clearly describes 
> that
> the PCI Express x4 interface is available for general-purpose use, just 
> like
> it's the case with the standard Rockchip RK3399 SoC, [5] albeit with a 
> bit
> shorter feature list provided in the RK3399Pro datasheet.
> 
> Even the publicly available reference RK3399Pro schematic from Rockchip 
> [6]
> shows the availability of a standard PCI Express slot with four lanes, 
> which
> would be pretty much impossible if the PCI Express interface was 
> reserved
> for the communication with the built-in NPU.
> 
> Based on the RK3399Pro datasheet [3] and the board schematics, [2][6] 
> the
> built-in NPU actually exports NPU_PCIE as a separate PCI Express x2 
> interface
> that's partially pinmuxed with the NPU's separate USB 3.0 interface, 
> which is
> described further in the next paragraph.  However, the NPU's separate 
> PCI
> Express x2 interface is left undocumented in the publicly available 
> RK3399Pro
> documentation, in which it's clearly described as reserved for internal 
> use
> and not intended for the communication with the NPU.  Finally, the 
> evidently
> independent nature of the separate NPU_PCIE x2 interface makes ignoring 
> it
> safe when it comes to determining the nature and the availability of 
> the
> RK3399Pro's main PCI Express x4 interface.
> 
> The actual application-level communication with the built-in NPU, 
> including
> powering it up and down and uploading the NPU firmware, is performed 
> through
> the separate USB 2.0 and USB 3.0 interfaces exported by the NPU, [7] 
> which
> the VMARC SoM [2] and the reference board design from Rockchip [6] 
> route to
> the SoC's standard USB 2.0 and USB 3.0 interfaces, to make the NPU 
> accessible
> to software running on the SoC's ARM cores.
> 
> [1] 
> https://dl.radxa.com/rockpin10/docs/hw/rockpi_n10_sch_v1.1_20190909.pdf
> [2] 
> https://dl.radxa.com/rockpin10/docs/hw/VMARC_RK3399Pro_sch_V1.1_20190619.pdf
> [3] https://www.rockchip.fr/RK3399Pro%20datasheet%20V1.1.pdf
> [4] 
> https://www.rockchip.fr/Rockchip%20RK3399Pro%20TRM%20V1.0%20Part1.pdf
> [5] https://www.rockchip.fr/RK3399%20datasheet%20V1.8.pdf
> [6] 
> https://opensource.rock-chips.com/images/e/e4/RK_EVB_RK3399PRO_LP3S178P332SD8_V11_20181113_RZF.pdf
> [7] https://wiki.radxa.com/RockpiN10/dev/NPU-booting
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399pro.dtsi | 22 ---------------------
>  1 file changed, 22 deletions(-)
>  delete mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> deleted file mode 100644
> index bb5ebf6608b9..000000000000
> --- a/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> -// Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> -
> -#include "rk3399.dtsi"
> -
> -/ {
> -	compatible = "rockchip,rk3399pro";
> -};
> -
> -/* Default to enabled since AP talk to NPU part over pcie */
> -&pcie_phy {
> -	status = "okay";
> -};
> -
> -/* Default to enabled since AP talk to NPU part over pcie */
> -&pcie0 {
> -	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> -	num-lanes = <4>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_clkreqn_cpm>;
> -	status = "okay";
> -};
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
