Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6685AEB64DE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 14:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2F5fW5bJf/IyG2hje7Fq3oKkzQIA8Mj2Wt3lGi8QCM0=; b=fFldI1qCxc9zgHuE3VwZzcg4W3
	QXjqYuOTvJYbk0u3mZtMOwnND6mFKZUwD6BtLNUmuYYqisKi7oqk9MuHBbEka6QT3bGa7Ex+ISd2/
	G0IOoDjjhrn/iw5VZTJPbwldlWis8bKqciVxJ8BQASJWerEfXJwbf7ia+eWE38GXdCgDVq4c5C+Sr
	JKPP8EwS6cZVoNm+EOaCcWceP2suVXXe2Y8GSCXATMHR4ka+z581WD42KKhAfFJMjTgcF76qzq/OR
	EI3QTAPmq1MbiaK3nkn5mLPpIFLFRIvYx4r4yQsBKkUycAWW8SwMOsSwQUAkjHsR1r5lrt57k6+IJ
	I2+QWdAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so1hF-00000005qRf-2emA;
	Tue, 10 Sep 2024 14:18:21 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so1eD-00000005pdF-26Zm;
	Tue, 10 Sep 2024 14:15:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CF4F2A4486A;
	Tue, 10 Sep 2024 14:15:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB4D2C4CED0;
	Tue, 10 Sep 2024 14:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725977712;
	bh=D9wCXUH6EHNFkoCXW6xHD/3H2QQ1E3dncGMC+EQoPrw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=byP36he8QtLLM7MQmE01OnnmZis9rGdU4JJt/aKur//gbNBk1IezoOt+JUwpNFyAB
	 2hdc5K1s+Q40Et0jB3L9L7ef3qtyUKoeqEsCFM/gwVqZQL9Yrv2LjfH0uB29HUxsHX
	 EunEuBr4WV/6AGetUHIkFq7uhPqy9+X6lwot/jS/fNlL76YK0NeaqSiGuS1af3v1fZ
	 4s/3C+gEVJ7ivlxW6vVst+4E+RRC4+v41Eopo5qYYREUmcPprRl2vmNq/IKAtNR8GI
	 ujd/+pblnYm5lah4yG7GkE98HNFGmPLIJiLwgjuXmtBo6GvsDPg0GV2ebtF1fdooHX
	 7P6hhNTBgmwiQ==
Date: Tue, 10 Sep 2024 09:15:11 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: sebastian.reichel@collabora.com, krzk+dt@kernel.org, 
 devicetree@vger.kernel.org, megi@xff.cz, linux-rockchip@lists.infradead.org, 
 efectn@protonmail.com, jonas@kwiboo.se, tim@feathertop.org, heiko@sntech.de, 
 macromorgan@hotmail.com, linux-arm-kernel@lists.infradead.org, 
 andyshrk@163.com, jagan@edgeble.ai, conor+dt@kernel.org, 
 linux-kernel@vger.kernel.org, dsimic@manjaro.org, knaerzche@gmail.com, 
 alchark@gmail.com, boris.brezillon@collabora.com
In-Reply-To: <20240910124055.3981648-1-damon.ding@rock-chips.com>
References: <20240910124055.3981648-1-damon.ding@rock-chips.com>
Message-Id: <172597760954.3917281.2039520203138306566.robh@kernel.org>
Subject: Re: [PATCH v2 0/2] Add support for RK3588S Evaluation board
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_071514_015057_B860A876 
X-CRM114-Status: GOOD (  15.86  )
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


On Tue, 10 Sep 2024 20:40:53 +0800, Damon Ding wrote:
> Specification:
> - Rockchip RK3588S
> - RK806-2x2pcs + DiscretePower
> - eMMC5.1 + SPI Flash
> - Micro SD Card3.0
> - 1 x Typec3.0 + 2 x USB2 HOST
> - 1 x 1Lane PCIE2.0 Connector(RC Mode)
> - Headphone output
> - Array Key(MENU/VOL+/VOL-/ESC), Reset, Power on/off Key
> - 6 x SARADC
> 
> Damon Ding (2):
>   dt-bindings: arm: rockchip: Add rk3588s evb1 board
>   arm64: dts: rockchip: Add support for rk3588s evb1 board
> 
> Changes in v2:
> - rename amplifier nodes to amplifier-headphone and amplifier-speaker
> - sort audio and backlight nodes by node name
> - format names of regulator nodes to regulator-*
> - add CPU/memory regulator coupling
> - fix "VOP-" to "VOL-" in commit message
> - remove bootargs property in chosen node
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 1131 +++++++++++++++++
>  3 files changed, 1137 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> 
> --
> 2.34.1
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-evb1-v10.dtb' for 20240910124055.3981648-1-damon.ding@rock-chips.com:

arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: pcie@fe190000: Unevaluated properties are not allowed ('rockchip,skip-scan-in-resume' was unexpected)
	from schema $id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: pmic@1: regulators:dcdc-reg1: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: pmic@1: regulators:dcdc-reg2: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: pmic@1: regulators:dcdc-reg3: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: pmic@1: regulators:dcdc-reg5: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: pmic@1: regulators:dcdc-reg6: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: pmic@1: regulators:dcdc-reg8: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: pmic@1: Unevaluated properties are not allowed ('regulators' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dtb: phy@fed80000: 'svid' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/phy-rockchip-usbdp.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
