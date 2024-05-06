Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A353C25B10
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 20:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MeepmX1PS+Z3etjCeyuuhgbJXWq4Fz6gJ/gOD8Q9N0o=; b=TbWLD6AHgtF6hR1mkY1rcebhxL
	0Sp5GnLrar0aN1JEpAaLltsafQ2fXMxQtTzXRcchMjs/TXX3LEBxp25w5na+ZVU3X4m7ArpK01oGj
	9aP6N+2kkJ7X7kVDlgelyu6TOfz0bnXUYX13qG870NnHYuLfK6N4SMA+UsbOXwDZasAQps1nqcS3H
	KSNTTVDLvKCr2ToGLFNFDfuQjEPZfk2wCLLHMRKg6dKIDk4ZFeLv5+ueoe9iNtrvmxFbJyumoiHWv
	y2KRMv/YGSsoFkCLA8gIk1VBwYQDTtHEgoVa1lIVJCcxAhAvFg3XmqxZsHPkxD5Obxf3rkTLQVMeB
	LIqOb9/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s458W-00000008hQi-1Fdx;
	Mon, 06 May 2024 20:40:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s458Q-00000008hNR-0vw5;
	Mon, 06 May 2024 20:40:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ABC4A6147B;
	Mon,  6 May 2024 20:40:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 320EFC3277B;
	Mon,  6 May 2024 20:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715028029;
	bh=W8JyiNuyGZ1ybRJ7NFoFHEw6kBYOtJo8wyxLY7egqCo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=EYlx/Ohz1LjUbmhzjGNEQ5sRbyH5aqCD1S0QtP44gkn0/P9SXLR2AxFTke0JWlI7m
	 p3qH3dZQ9pg/ScHDWSfZSkFM1S//fgw8EF8GyiX+YAZRZQHBk+nUw2fGZJtisZncPd
	 Di0rPOqMqWv9HG7ewBP7SrC2v+A37ppHeNveZEU6hAaaxaZqNCuel1L1in+GkGN7Uh
	 XhlDPVa2FrDGwkUcz6F9WMONkx/wEvc57gQTfbxmXeNpm7vitY1Pjhxx2JLooxaobs
	 GJA0gGzPwclTy1I2qveq6U5M8oZFEXjV9BXu7RkwOplVq3b4JpUM554v9XQg0A7xz/
	 He6ZOW75cC5DA==
Date: Mon, 06 May 2024 15:40:27 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240505202522.2999503-1-jonas@kwiboo.se>
References: <20240505202522.2999503-1-jonas@kwiboo.se>
Message-Id: <171502764382.89564.9287218118633077994.robh@kernel.org>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add Xunlong Orange Pi 3B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_134030_326790_A875875E 
X-CRM114-Status: GOOD (  12.28  )
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


On Sun, 05 May 2024 20:25:15 +0000, Jonas Karlman wrote:
> This series adds initial support for the Xunlong Orange Pi 3B board.
> 
> The Xunlong Orange Pi 3B is a single-board computer based on the
> Rockchip RK3566 SoC.
> 
> Schematic for Orange Pi 3B can be downloaded from:
> http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-3B.html
> 
> Jonas Karlman (2):
>   dt-bindings: arm: rockchip: Add Xunlong Orange Pi 3B
>   arm64: dts: rockchip: Add Xunlong Orange Pi 3B
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../boot/dts/rockchip/rk3566-orangepi-3b.dts  | 694 ++++++++++++++++++
>  2 files changed, 699 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dts
> 
> --
> 2.43.2
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3566-orangepi-3b.dtb' for 20240505202522.2999503-1-jonas@kwiboo.se:

arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
