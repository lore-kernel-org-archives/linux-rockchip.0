Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63B59C3DA70
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 22:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ogl+B4diLrCmoinT+MCPL9Q0KXybmBRCpaWVeWWeUbc=; b=xiA29zm3jvo6k8M9xQ8u38E7t1
	SjVVMXy7S59RKkZMH/50WG2ZpIU9eLq0zZYyg18F/+o3PgQISuUGMkWjFKU0S6m0cbbXopP8xsKCG
	DGqafSL3Ty53ZF+F8EQStkN/jm8aRm2VZEd5JN2NfDW5cTTQKzp0TyvWtg80SAk/SpoAEIS8HMjP/
	6FnaNi6L0hV5ehiF1zJFOugFKln6XtGJHusvYvLJ4M62AHih8XwznV2sVp04wDRjHMISlj3OC7K4R
	mtlmH3jAWtqVh55Dh4ilmSCq2poL/8DAFMI3jYuJi2sXwRm/RCcC2Vv/kQI28T8awV+464hUcT5oE
	i/wpKFMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sX6pL-00000002GAk-1rwt;
	Thu, 25 Jul 2024 22:20:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sX6ov-00000002G2g-0p8b;
	Thu, 25 Jul 2024 22:20:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 32B0D60EB2;
	Thu, 25 Jul 2024 22:20:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEFCFC4AF0A;
	Thu, 25 Jul 2024 22:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721946020;
	bh=ZRBNkkK2wEtPoDx1gVCpdzsuUoZfcrDb9qkuaGNq6yU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=sGYjFfpMmQI6XTByFF8V8flHdWlRsmUv1cUlJlIWlF0xOBz9buXRzg2WEhLRpv/4G
	 VIUzGsQjw0pU/JCKuw2xhYws7RGUc7DjTRHa79o7odYpm/I/Or9ET0Gzh+AFp5t7JO
	 y5NBllJwS0YvexGTEGtHT9gLvHzpF7I0jQn+DWTf/twrgS3hyKj52bF7wsaYNZRoNA
	 s0zZOxXqpajUItVwK2fZfZGi7KtsmsyM7lGFWyvfVVzP6zZTeCjKO/a+joKAoxjbwl
	 TtnTlEBFOsq0hONPsOiy1Yc7t8L73GtUFexg/YOmGMKNLZMASIDeRqhGBHKf2CtJa8
	 cYpJ830kcUOWQ==
Date: Thu, 25 Jul 2024 17:20:18 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, ukleinek@debian.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
Message-Id: <172194566400.4001296.2011158817086396400.robh@kernel.org>
Subject: Re: [PATCH v3 00/14] Expand available features on Qnap TS433
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_152021_345098_EB9B02CC 
X-CRM114-Status: GOOD (  28.38  )
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


On Tue, 23 Jul 2024 21:55:24 +0200, Heiko Stuebner wrote:
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
> changes in v3:
> - fix the two regulator node-names, I noticed after sending v2
> - add Uwe's Tested-by tags
> - fold in some of Uwe's suggestions:
>   - remove some phandles
>   - more comments to explain what is connected where
>   - handle the two RTCs in the system, though not by hacking around
>     to disable the pmic-one, instead just make sure the real one
>     stays the first rtc
> changes in v2:
> - add patches for tsadc, gpio-keys, cpu-supply, pmic, gpu and io-domains
> 
> 
> [0] I only have two drives right now, but I tested both the internal
> sata connector as well as the PCIe connected sata controller in different
> combinations.
> [1] https://github.com/mmind/u-boot-rockchip/tree/dev/qnap-ts433/v2024.07
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
>  .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 546 +++++++++++++++++-
>  1 file changed, 543 insertions(+), 3 deletions(-)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3568-qnap-ts433.dtb' for 20240723195538.1133436-1-heiko@sntech.de:

arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: sata@fc400000: Unevaluated properties are not allowed ('power-domains' was unexpected)
	from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#
arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: sata@fc800000: Unevaluated properties are not allowed ('power-domains' was unexpected)
	from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
