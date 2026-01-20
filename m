Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FD3CD262A4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 21:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:MIME-Version:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1NwaU4KiCJmrmDeq8sz1tFzwx6p/RaiXetFClnSqraE=; b=cgsRhIoBJ9bKB2XK+FrZLcVW0X
	CBTIsztoBlhEJE5fqYZx1S2SsI+bLofNoh91XBcCe/LxH3KGImeMAWKm+zbrJdZuWZzl9wi/fbmpY
	syA015jsW3ApP0Ks/tqIl9iKOzzKnlNjsBFa6+w30NzVjcvxKmqflbflM2z4wiTnaPY2xevq1XdR6
	e7jbLjVfKm133ZEJHuw7anwb69iMLx0Ca+bcvUAwg5hKLCF9CMyYHcWmVLBBwDLJvPgootE3DQWLw
	y8wqeVLoaAtAjy5yXrfDDwWAT23Vi3U5p2POLXt81Q800HP0KD9B+gloT5pC3swum9KXaarSdZe9C
	+zIESKmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viJXQ-00000004V05-1ERg;
	Tue, 20 Jan 2026 21:45:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viJXO-00000004Uzn-3leF;
	Tue, 20 Jan 2026 21:45:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E615660054;
	Tue, 20 Jan 2026 21:45:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 806E8C16AAE;
	Tue, 20 Jan 2026 21:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768945521;
	bh=iGmQTrcxjtgfmMDdD54wE5OCeQ2v++Q+BpE3G+cHjVo=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=rOWXQOxHQszpyhaIrGB3VjPh14nhOZrx73IUhV7HSwSXqaI0Eh/kaSt/S8v+wtEzY
	 pJV5DZpDpV2ekat1rC3GcyHWhK7OjurBKMMqaUuk1dmFJIrBy1tYbaU5a8rcq+b0Gk
	 hQ92Fhi8lf6SbSSpnyTZZYuy2LYGmQLkbsSgPcDbO4Cby4B/x4uJU7xkwYhNuObMDl
	 YTwJ8rUtwsEMM1xJoLC8a0RUJqlDvSbHwAdA47XUS6AlYSIUdlQPCQlShBzOBpTKnc
	 WTAR7f9EefWdSztnrYPEOE13ZLC6s+yk9fW/5dOZt3KZE9XNMLlr9zPSV7TBlgFJFC
	 XG+dbVBrKnIrg==
From: Rob Herring <robh@kernel.org>
Date: Tue, 20 Jan 2026 15:45:19 -0600
MIME-Version: 1.0
Cc: devicetree@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Heiko Stuebner <heiko@sntech.de>, stable@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-rockchip@lists.infradead.org
To: Alexey Charkov <alchark@gmail.com>
In-Reply-To: <20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com>
References: <20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com>
Message-Id: <176894531223.1201556.243460289333921566.robh@kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Explicitly request UFS reset
 pin on RK3576
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


On Tue, 20 Jan 2026 16:53:54 +0400, Alexey Charkov wrote:
> Rockchip RK3576 UFS controller uses a dedicated pin to reset the connected
> UFS device, which can operate either in a hardware controlled mode or as a
> GPIO pin.
> 
> Power-on default is GPIO mode, but the boot ROM reconfigures it to a
> hardware controlled mode if it uses UFS to load the next boot stage.
> 
> Given that existing bindings (and rk3576.dtsi) expect a GPIO-controlled
> device reset, request the required pin config explicitly.
> 
> This doesn't appear to affect Linux, but it does affect U-boot:
> 
> Before:
> => md.l 0x2604b398
> 2604b398: 00000011 00000000 00000000 00000000  ................
> < ... snip ... >
> => ufs init
> ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=[3, 3], lane[2, 2], pwr[FASTAUTO_MODE, FASTAUTO_MODE], rate = 2
> => md.l 0x2604b398
> 2604b398: 00000011 00000000 00000000 00000000  ................
> 
> After:
> => md.l 0x2604b398
> 2604b398: 00000011 00000000 00000000 00000000  ................
> < ... snip ...>
> => ufs init
> ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=[3, 3], lane[2, 2], pwr[FASTAUTO_MODE, FASTAUTO_MODE], rate = 2
> => md.l 0x2604b398
> 2604b398: 00000010 00000000 00000000 00000000  ................
> 
> (0x2604b398 is the respective pin mux register, with its BIT0 driving the
> mode of UFS_RST: unset = GPIO, set = hardware controlled UFS_RST)
> 
> This helps ensure that GPIO-driven device reset actually fires when the
> system requests it, not when whatever black box magic inside the UFSHC
> decides to reset the flash chip.
> 
> Cc: stable@vger.kernel.org
> Fixes: c75e5e010fef ("scsi: arm64: dts: rockchip: Add UFS support for RK3576 SoC")
> Reported-by: Quentin Schulz <quentin.schulz@cherry.de>
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
> This has originally surfaced during the review of UFS patches for U-boot
> at [1], where it was found that the UFS reset line is not requested to be
> configured as GPIO but used as such. This leads in some cases to the UFS
> driver appearing to control device resets, while in fact it is the
> internal controller logic that drives the reset line (perhaps in
> unexpected ways).
> 
> Thanks Quentin Schulz for spotting this issue.
> 
> [1] https://lore.kernel.org/u-boot/259fc358-f72b-4a24-9a71-ad90f2081335@cherry.de/
> ---
> Changes in v2:
> - Change default pin pull to pull-down in line with the SoC power-on default
> - Link to v1: https://lore.kernel.org/r/20260119-ufs-rst-v1-1-c8e96493948c@gmail.com
> ---
>  arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi | 7 +++++++
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi         | 2 +-
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com:

arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dtb: ufs: ufs-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 113} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dtb: ufs: ufs-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 130} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dtb: ufs: ufs-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 116} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dtb: ufs: ufs-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 117} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dtb: ufs: ufs-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 133} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dtb: ufs: ufs-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 122} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dtb: ufs: ufs-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 134} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: ufs: ufs-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 130} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
arch/arm64/boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtb: ufs: ufs-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 134} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5-v1.2-wifibt.dtb: ufs: ufs-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 130} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
