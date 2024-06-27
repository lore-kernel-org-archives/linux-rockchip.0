Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46ED5C2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 14:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ksjcKalCRDLcUzsHZ4DiYPixZ/FRhAYTlzLrpuIYSeI=; b=jtvEF+6WlMNm7QHPVOtW9hTUTM
	KCibXGJ2KEp1pqdvu6ON/4k/nmjHgPNvSFc9La0D+MfW3VFsOSFrGcVtYqdQihEy6DRiJ63io/em5
	xwsLkU7OAzVbqu1aXDFWNcMwbuuPCbcST7QVYkreZr6CsHLTg/7pygx57yyKf5fXM/xAH1AX6vKEB
	L4+KyRfGa3nHkFUtoFnXn3FS2V6T/qgYFv1PqWqnr+pQblnVl0HVaN33nW7cMZ89Hu7euLMlKaBD9
	lDWtZhr1CQLIahKCvtsXSBDdIu3igUrMOovDu9wkQaki0WO6ipGUkt9ricloN3r9m6cfy3ZK4sTEO
	jz11PQnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMqDD-0000000AeqV-1GLj;
	Thu, 27 Jun 2024 14:35:15 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMqCl-0000000Aehu-2b6z;
	Thu, 27 Jun 2024 14:34:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A4ADDCE2F44;
	Thu, 27 Jun 2024 14:34:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73AC0C2BBFC;
	Thu, 27 Jun 2024 14:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719498868;
	bh=Fc0ykomioDc7Uypl1Uf66s988C/OLz9FiLzqmcO3ors=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=HGM0bmuNep0skTj+qhLyH1KhOTJQdcegXnLGbU6X8XLL6E1gt9wyZVRamODRthW6u
	 uetgWhuvW/YCjuL8zAg3wrQsqjgWCItYSM7nGI7mh9oLsio1p5A99rnm1kR7ODmVI9
	 IAs+UqzS1Ux4R/W+WE1YCLXOWPnQ3x1ZiNLVGO/rApQyJnpETKakhIdGSGr7nCamS/
	 RUxlWWXagpRCSDMcdIVEo3BKxFMu7s+FTJI8R/y+ysA6QOVoZS5n4bvcawiaSsIvbp
	 nAU8TvRR3jgXbQNKSsiUHsASHkuE1M83HC/ceyOh9AH7jFufiqyh+TtN1W65NP7u2k
	 Xks/h0wXtuflg==
Date: Thu, 27 Jun 2024 08:34:26 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: FUKAUMI Naoki <naoki@radxa.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20240626201502.1384123-1-jonas@kwiboo.se>
References: <20240626201502.1384123-1-jonas@kwiboo.se>
Message-Id: <171949859356.3298890.9759631010670097235.robh@kernel.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa ROCK 3B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_073431_906354_0891E9CA 
X-CRM114-Status: GOOD (  15.95  )
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


On Wed, 26 Jun 2024 20:14:53 +0000, Jonas Karlman wrote:
> This series adds initial support for the Radxa ROCK 3B board.
> 
> The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
> factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
> version based on the RK3568 SoC and an industrial version based on the
> RK3568J SoC.
> 
> Schematic for ROCK 3B can be found at:
> https://dl.radxa.com/rock3/docs/hw/3b/Radxa_ROCK_3B_V1.51_SCH.pdf
> 
> Changes in v2:
> - Drop rk809 dt-bindings patches, replaced by series at [1]
> - Use regulator-.* nodename for fixed regulators
> - Drop rockchip,mic-in-differential prop
> - Shorten Ethernet phy reset-deassert-us to 50 ms
> - Fix pcie pinctrl
> - Add keep-power-in-suspend to sdmmc2
> - Collect a-b tag
> 
> [1] https://lore.kernel.org/all/20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com/
> 
> Jonas Karlman (2):
>   dt-bindings: arm: rockchip: Add Radxa ROCK 3B
>   arm64: dts: rockchip: Add Radxa ROCK 3B
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3568-rock-3b.dts      | 780 ++++++++++++++++++
>  3 files changed, 786 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> 
> --
> 2.45.2
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3568-rock-3b.dtb' for 20240626201502.1384123-1-jonas@kwiboo.se:

arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
