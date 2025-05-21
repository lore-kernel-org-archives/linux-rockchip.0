Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3187C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 17:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JQ4Nga8W39KNJnxQDrC7GUo0/K7KMO3J2GjWSF9kMA=; b=y8y701IMdLgVcs
	GbLfHcXcr3ZOO3+39PhrSUnBNMe4xkDD1wuggDwfPRqjQUKDc8L/FyAobM0UgZso8JoF2MMgga7pD
	x26s789IAoXlb75rxG5Cl64CzL1iZIaYkXf+D1mBAWbFjv8dpVzWsijgd4NjQu03P2gC3UQwwfg/Q
	EPc7PBQcwN1t0OhaSdZbaggAtwqdHI9CmaFSwsEkjCJptcDcTT80VHR7kbtkdlKAnmt8MVFpk1Znl
	4W09aUzEjF5X+FHzTj/cd6Wg8vIF8gqJ7v5Kcys3MpeoXXMyb7DXeUhSaGybqrrQbTmFG0fqroIM3
	NyB6FrfwrzntD4qnj3Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnhs-0000000Gcd5-2rmV;
	Wed, 21 May 2025 17:58:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnfi-0000000GcXp-35R4;
	Wed, 21 May 2025 17:56:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8A4174A20E;
	Wed, 21 May 2025 17:56:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35D6CC4CEE4;
	Wed, 21 May 2025 17:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747850164;
	bh=SH3v7r/YeP+ILksXxAq4H6i/5FdXirbGQTMwOfTFny0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pbnxd02T3gFqUPMywHByGWNqP4yHJv049nk0XpF8GLIt6EkzkEVJp3Mq0lDhrCpLV
	 nDe3S5GGj1AbfQcnTfI6EhFgN8zEI+yeXzhI6EYBQdTOKU1aICAOrvBl1fPsp4yDzw
	 26GdpAQisHmuBYM/aItT8RbInXIZVISglDGWrWtd4RAZ51y5hH5FuFQjJNCOqg2QAi
	 u8MvnleyLUJh2SvrJjSG8WbHUCre3t+6aCKOCdsrsMJFop0RnD92g0cms9fyvKxGs3
	 XXGOb70FeRtmlnuDMOw16h0nv6xnQGhti9PhX8rLu/8aGcnmzAEClsa6jrjP4qfdxa
	 pTer5+zRybQQg==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>, 
 Jonas Karlman <jonas@kwiboo.se>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-spi@vger.kernel.org
In-Reply-To: <20250520100102.1226725-1-amadeus@jmu.edu.cn>
References: <20250520100102.1226725-1-amadeus@jmu.edu.cn>
Subject: Re: (subset) [PATCH 0/2] arm64: dts: rockchip: Add spi nodes for
 RK3528
Message-Id: <174785016195.188147.3036453631222636236.b4-ty@kernel.org>
Date: Wed, 21 May 2025 18:56:01 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-c25d1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_105606_807087_EEB1A146 
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

On Tue, 20 May 2025 18:01:00 +0800, Chukun Pan wrote:
> There are 2 SPI controllers on the RK3528 SoC, describe it.
> Tested using st7789v chip with spi-cpha and spi-cpol properties.
> 
> [   10.831306] fb_st7789v spi0.0: fbtft_property_value: buswidth = 8
> [   11.042915] graphics fb0: fb_st7789v frame buffer, 240x320, 150 KiB
>  video memory, 4 KiB buffer memory, fps=20, spi0.0 at 15 MHz
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/2] spi: dt-bindings: Add rk3528-spi compatible
      commit: 70e5f38e734572ca5a56cff48cf01a0f31917099

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
