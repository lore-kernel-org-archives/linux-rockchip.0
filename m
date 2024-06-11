Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27BD3C27C75
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 13:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fqeExzx6w7gk+UWDyF57GzvWZzxoCe2QH3Kx63OiKy0=; b=2EMez44aujkqAHZw0opCutyRpL
	b/RmVBmNfc7cwsPmSn+PspNk53C/VnhwAQJc4Sxxb6K3ur9MfyWRNZkSskBY4j1YPG0hs8EqSLsXw
	aZFoQ2GslCswpLuMZvKhLJ2mug3CIiE7FlOILIY35Z6b2xTBHGkm+eM76T7UAxD3xTAQgBXOp/Y9B
	S+/FHzySPdyakaoFqZLllVD5TWTUMnuXEqvUXcGfzeuTsz2I8ltVZEgQ5jQetvQQdUNII5bqIddza
	UhNsFmZLTI0h+WBAAH8qWNV1EG+cQb8cKR31SHCk7aJnVEuX2MBz+4bVsEMyPuppJ3ol0XJvPFrcl
	+1NLCMaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH1cE-0000000907d-3OAz;
	Tue, 11 Jun 2024 13:32:46 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH1bl-00000008ztQ-38Is;
	Tue, 11 Jun 2024 13:32:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EBD5FCE1C12;
	Tue, 11 Jun 2024 13:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DFDCC4AF48;
	Tue, 11 Jun 2024 13:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718112729;
	bh=4Ecmaz+tOqycgV8YUD4eHo7O50NZPOPSrgUB34T1RJ4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=jElkHqQUFHlVRUi7T7S/jhRumOqUf0ZwvAPaaYe06sfGivntg1J3V8Gjtsmz2KSFx
	 0g3pg3U+JkJLSS8SkvqQeMvlTw3mMYgSOmhlJw+t7bgacBYVScxt0H3O+nlgG5NYKl
	 HRZXUrjOAriySKK/GxXWQ0X50z+2j/5Thaa6Owey7qeWS+fLf/JPb0uvcLEe7Wga9M
	 njjVB00G/4nbw8YfPKGZA8h99V+TVP0GQJjzWry1Z26Fp7fStDJNJl1X3AftYSLNEe
	 2UxS+D/hpF8nDNm0+SmsYwSElBOclJ93gEvH0i9ectiZYLXk0R56UqV1529lXvctiX
	 qhyvjSF0tmnGA==
Date: Tue, 11 Jun 2024 07:32:08 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, Heiko Stuebner <heiko@sntech.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 linux-i2c@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>, 
 Peter Rosin <peda@axentia.se>, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
References: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
Message-Id: <171811267304.1781724.4665185672258305049.robh@kernel.org>
Subject: Re: [PATCH v3 0/7] Add Mule I2C multiplexer support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_063218_905335_990DB7A6 
X-CRM114-Status: GOOD (  29.14  )
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


On Tue, 11 Jun 2024 13:43:51 +0200, Farouk Bouabid wrote:
> Mule is an mcu that emulates a set of I2C devices which are reachable
> through an I2C-mux.
> 
> The emulated devices share a single I2C address with the mux itself
> where the requested register is what determines which logic is executed
> (muxing logic or device logic):
> 
> 1- The devices on the mux can be selected (muxing functionality) by
> writing the appropriate device number to an I2C config register (0xff)
> that is not used by any device logic.
> 
> 2- Any access to a register other than the config register will be
> handled by the previously selected device.
> 
>       +-------------------------------------------------------+
>       |  Mule                                                 |
>       |        +---------------+                              |
>     ----+-(1)->|Config register|-----+                        |
>       | |      +---------------+     |                        |
>       | |                            V_                       |
>       | |                            |  \          +--------+ |
>       | |                            |   \-------->| dev #0 | |
>       | |                            |   |         +--------+ |
>       | |                            | M |-------->| dev #1 | |
>       | +-----------(2)------------->| U |         +--------+ |
>       |                              | X |-------->| dev #2 | |
>       |                              |   |         +--------+ |
>       |                              |   /-------->| dev #3 | |
>       |                              |__/          +--------+ |
>       +-------------------------------------------------------+
> 
> The current I2C-mux implementation does not allow the mux to use the
> I2C address of a child device. As a workaround, A new I2C-adapter quirk is
> introduced to skip the check for conflict between a child device and the
> mux core I2C address when adding the child device.
> 
> This patch-series adds support for this multiplexer. Mule is integrated
> as part of rk3399-puma, px30-ringneck, rk3588-tiger and rk3588-jaguar
> boards.
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> 
> Changes in v3:
> - Change "i2c" in comments/commit-logs to "I2C"
> - Fix long line-length
> - Warn when "share_addr_with_children" is set and the Mux is not an I2C device
> - Fix/stop propagating "I2C_AQ_SKIP_ADDR_CHECK" flag if "share_addr_with_children"
>   is not set.
> - Fix "old_fw" variable is used to indicate the reversed meaning.
> 
> - Link to v2: https://lore.kernel.org/r/20240506-dev-mule-i2c-mux-v2-0-a91c954f65d7@cherry.de
> 
> Changes in v2:
> - Add i2c-adapter quirks to skip checking for conflict between the mux core
>   and a child device address.
> - Rename dt-binding to "tsd,mule-i2c-mux.yaml"
> - Add Mule description to kconfig
> - Fix indentation
> - Move device table after probe
> 
> - Link to v1: https://lore.kernel.org/r/20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com
> 
> ---
> Farouk Bouabid (7):
>       i2c: mux: add the ability to share mux address with child nodes
>       dt-bindings: i2c: mux: mule: add dt-bindings for mule i2c multiplexer
>       i2c: muxes: add support for mule i2c multiplexer
>       arm64: dts: rockchip: add mule i2c mux (0x18) on rk3399-puma
>       arm64: dts: rockchip: add mule i2c mux (0x18) on rk3588-tiger
>       arm64: dts: rockchip: add mule i2c mux (0x18) on px30-ringneck
>       arm64: dts: rockchip: add mule i2c mux (0x18) on rk3588-jaguar
> 
>  .../devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml  |  80 +++++++++++
>  arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi    |  20 ++-
>  arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |  20 ++-
>  arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts     |  19 ++-
>  arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi     |  19 ++-
>  drivers/i2c/i2c-core-base.c                        |   6 +-
>  drivers/i2c/i2c-mux.c                              |  48 ++++++-
>  drivers/i2c/muxes/Kconfig                          |  18 +++
>  drivers/i2c/muxes/Makefile                         |   1 +
>  drivers/i2c/muxes/i2c-mux-mule.c                   | 157 +++++++++++++++++++++
>  include/linux/i2c-mux.h                            |   1 +
>  include/linux/i2c.h                                |   7 +
>  12 files changed, 384 insertions(+), 12 deletions(-)
> ---
> base-commit: 79c1f584335af42ce359ee3ff0f4e9cc324296ed
> change-id: 20240404-dev-mule-i2c-mux-9103cde07021
> 
> Best regards,
> --
> Farouk Bouabid <farouk.bouabid@cherry.de>
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-jaguar.dtb' for 20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de:

arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: fan@18: '#cooling-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
