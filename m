Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A812AC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 02:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dux1JQ7czHCHnORZFZKbyo32goPzvRFG8KN3oUL0r90=; b=f+1BxWsFPPWLIrROs58ZQMotV3
	kXSdb22VOGOsy+MC6zo+KCwYlb0JEXC4hS87l+TNFYnnWSLktEfNFl1jPvlnHYuMR9jXBk/FT5Up3
	7+QG6N1uu9CzWlcRhG0HUfhaeTnAi8GeaF/7F34bpUpaVNIPBMzIBnwx5sKU4MVshQrLoKPB2+ENZ
	mvoPlTURSPAcgl7WhS3lL2mG0HnohdKbGsDWSY7uhHTyDcVuXufU8tmsvwSdOaMVV4DexOGxb3BeO
	PHs7BpCtqJdERcjLYTNttN2oGWRQXkUn+p2MPWB5MuATDTe4QuqLiDhOujiCECIFIksSlGAUVjbls
	Cz8za97A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW5jY-0000000BBXD-3cfi;
	Tue, 23 Jul 2024 02:58:36 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW5ih-0000000BBEt-40qa;
	Tue, 23 Jul 2024 02:57:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3B828CE0DB4;
	Tue, 23 Jul 2024 02:57:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A10FC32782;
	Tue, 23 Jul 2024 02:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721703460;
	bh=/TRII93/10eFu+qM4B82YYGwGymPU+swqszXC+vxlQw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=uc6c+F2chvE9bqzu1K2My/iiu22H5744okPF42KJb+wQ1AEnL4lR0/0ggPQrWEe41
	 wv/XrBQAeBpW6y+nqNtWp0FkZxvMhdEsQrqaWjw3UUKkdFO3OsxsLG/gP14cUWixUV
	 RIbVfQJGhFmOzJAfYub9QLYpSRv+P2lWcw7uTei7Jkr71CVHHN9t7eD5ykpAYdSbY0
	 GZS30+8r3v1WqrxQZIMf9p3uzPvnetXjbqPVW8IQSJyj2B6D820riifnXZPLEG+lmn
	 Dj7iOc82o1lp69vJTLhjCum+P8te6DP7tCW2tlEeIBDpl6EZp1MeTHANh4InPl+7p5
	 x6lPms31MX4CQ==
Date: Mon, 22 Jul 2024 20:57:37 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: ukleinek@debian.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240721173723.919961-1-heiko@sntech.de>
References: <20240721173723.919961-1-heiko@sntech.de>
Message-Id: <172170324698.205262.12290895401170418124.robh@kernel.org>
Subject: Re: [PATCH v2 00/14] Expand available features on Qnap TS433
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_195744_366972_4E9D68B1 
X-CRM114-Status: GOOD (  25.63  )
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


On Sun, 21 Jul 2024 19:37:09 +0200, Heiko Stuebner wrote:
> Thanks to the nicely supported rk3568, the hardest part for adding things,
> is to pull things from the vendor-kernel and translating them to mainline
> standards.
> 
> This series allows the TS433 to use all 4 bays [0], wiggle some LEDs and
> access devices connected to all 3 usb ports.
> 
> The device runs stable now and might be usable for actual usage.
> 
> There is still a todo-list though:
> - the ethernet mac address for the realtek chip seems correct,
>   but the gmac0 interface currently uses a wrong one
> - i2cdetect reports devices on i2c-1 on addresses 54,55,56,57
>   model_Q0B20_Q0B30_10_10.conf from the original rescue image labels them
>     VPD_MB = I2C:0x54, VPD_BP = I2C:0x56
>   the meaning currently being unknown. Some eeprom maybe?
> - The regulator tree is slightly dubious. Everthing seems to follow rk3568
>   reference designs, but especially the regulator labeled vcc3v3_sd
>   seems to supply some PCIe functionality. So I guess the device's
>   schematics will look quite different than the regulators added to the
>   vendor devicetree.
> - Quite a bit of functionality is provided by the MCU connected to uart0.
>   According to the model.conf there should be fan-control, a number of
>   additional LEDs (status,locate,usb?)
> 
> 
> Thanks to Qnap engineers adding an easily accessible header for maskrom
> mode on the board, replacing the bootloader is also quite a breeze. A
> branch on top of today's u-boot master branch can be found on [1]. I'll
> submit that code to u-boot once I can cherry-pick the dts patches.
> 
> 
> changes in v2:
> - add patches for tsadc, gpio-keys, cpu-supply, pmic, gpu and io-domains
> 
> 
> [0] I only have two drives right now, but I tested both the internal
> sata connector as well as the PCIe connected sata controller in different
> combinations.
> [1] https://github.com/mmind/u-boot-rockchip/tree/dev/qnap-ts433/v2024.07
> 
> 
> Heiko Stuebner (14):
>   arm64: dts: rockchip: add PCIe supply regulator to Qnap-TS433
>   arm64: dts: rockchip: enable second PCIe controller on the Qnap-TS433
>   arm64: dts: rockchip: enable uart0 on Qnap-TS433
>   arm64: dts: rockchip: enable usb ports on Qnap-TS433
>   arm64: dts: rockchip: add stdout path on Qnap-TS433
>   arm64: dts: rockchip: enable sata1+2 on Qnap-TS433
>   arm64: dts: rockchip: add board-aliases for Qnap-TS433
>   arm64: dts: rockchip: add hdd leds to Qnap-TS433
>   arm64: dts: rockchip: enable the tsadc on the Qnap-TS433
>   arm64: dts: rockchip: add gpio-keys to Qnap-TS433
>   arm64: dts: rockchip: define cpu-supply on the Qnap-TS433
>   arm64: dts: rockchip: add missing pmic information on Qnap-TS433
>   arm64: dts: rockchip: enable gpu on Qnap-TS433
>   arm64: dts: rockchip: add 2 pmu_io_domain supplies for Qnap-TS433
> 
>  .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 539 +++++++++++++++++-
>  1 file changed, 536 insertions(+), 3 deletions(-)
> 
> --
> 2.39.2
> 
> 
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3568-qnap-ts433.dtb' for 20240721173723.919961-1-heiko@sntech.de:

arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: sata@fc400000: Unevaluated properties are not allowed ('power-domains' was unexpected)
	from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#
arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: sata@fc800000: Unevaluated properties are not allowed ('power-domains' was unexpected)
	from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
