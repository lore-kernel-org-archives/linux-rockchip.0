Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAB37ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 18:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8TvPDy0NDTj6Gn4B20bVqzkqR+QCQMzNA5v0MQqWAs=; b=V+Nvvif7+AxIZD
	cTTT//LdYHrrfO+W4zWI/BgOAELIgNKQi3uKVhFXZHWNnm/rOJF61iTU6r1ud93jI1G25sJPVXSeJ
	O0ge/ilKJCREhNhC6HVQomSV2JyOiqnf4SXPbsMJkOlFHonT4n4yhfvMZ4Aguzh9jwXRg/cJmaXHD
	uW9xKVcF7ztVKSxP/f+jUSPtacBzSGfrDPUrsY/G0CnEU08mRit18aWAU/PETFrOlUA0WZ66AHLDC
	kBAVQ6ylQnk7h6Z3mC/NRdBLOIJxPoKCo8trPwuMCSWjmU/CjUWcljx8wYzJkeBRxeEylWnTF8/9k
	J6NqhsZJi8B9HwvN/qHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT6MZ-001J4X-B4; Tue, 30 Aug 2022 18:53:27 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT6MV-001J2e-P3
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 18:53:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6DEF3B81D81;
	Tue, 30 Aug 2022 18:53:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62060C433D6;
	Tue, 30 Aug 2022 18:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661885601;
	bh=n2oCNckMdWFuTnsc9BCHrAKAiEPqoAK9e1Dl3nAkMYA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=aJGnySLbRmkplRrzI8eOM4Lv9QBHleBdnI1+59aeZesedGt53LEYzDwQHWqHVUNt0
	 4hmlKBilLm3UOCQgYRP5HZQ16DvlcA4qXFvU6kMlXbX11xEeo20nb3atR97/9wUNE0
	 mjBWi8qDPSs7j6SMC0F8jEJME7yF4TLsHpj4MsU1DCWmVihA+7xiv1DT3zxbgm81Pi
	 phG8Xb3CV+2kvyAW+O0Jt+4ZOpnQU0b7tM2YN4km8IRsKztphe1kYlk1K8WTzwIJl8
	 1uEEkgElZXWryg5XGM/ecPgDdESdf5Fn8Gu74QqwZDbw3tjYYB595pAnIDNUhJpnRA
	 h80ACPHDtmn1g==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, kernel@collabora.com, linux-spi@vger.kernel.org
In-Reply-To: <20220830124452.33561-1-sebastian.reichel@collabora.com>
References: <20220830124452.33561-1-sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/1] spi: spi-rockchip: Add rk3588-spi compatible
Message-Id: <166188559907.1148585.13680922112371234952.b4-ty@kernel.org>
Date: Tue, 30 Aug 2022 19:53:19 +0100
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-65ba7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_115323_979627_B64A72F1 
X-CRM114-Status: GOOD (  12.22  )
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

On Tue, 30 Aug 2022 14:44:52 +0200, Sebastian Reichel wrote:
> This adds a compatible string for the SPI controller found in
> the RK3588 and RK3588s SoCs.
> 
> 

Applied to

   broonie/spi.git for-next

Thanks!

[1/1] spi: spi-rockchip: Add rk3588-spi compatible
      commit: fb43eb0a930ca9474484b1ff04c3fd532efdc8e3

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
