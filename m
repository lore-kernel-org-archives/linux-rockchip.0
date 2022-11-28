Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ABBAC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 19:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaJHfrtfN4fQEF6445O3OVBIcNCcdYovTw9CF0+iqdg=; b=vblkkBuU2sc8cS
	tbM8UA5d2utsiTurc0v5U8QApqOdqq5XSTDN+ymeYOoSgIhr7OuPJ10hEbysZRBooxJE1msqVmi3Q
	xrtyWGCTqzkyXg1+UFj2H6B0xRsgJKO0Yqof4Ac0IbkFlIS0c9yljBrGZY/Dc2ULSaIY5KaBGFs7W
	yvz0wtkYzAO4VV4G/9Noq4RqCZ7QQMPde+PXfxVQ6W1uKA/a/Gw1X8yoci2a359FsNdFSSgKAsl2G
	auOVjzMdjEoLRgDhrIiPSNZU2R5rJQ5FLZMnOWf4S9Rdsh17YfKgIHv3RQCYoUaUIro8lIk1rLcwZ
	3pFpFhmWh8rDEJJ21GMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozjSD-003s2H-8A; Mon, 28 Nov 2022 19:06:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozjS7-003rzo-Ml
	for linux-rockchip@lists.infradead.org; Mon, 28 Nov 2022 19:06:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 329F66137D;
	Mon, 28 Nov 2022 19:06:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4C98C433D7;
	Mon, 28 Nov 2022 19:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669662362;
	bh=YuU2ft1vTL8owzTKzsHQya+OxilPcCD6BiamY379m0w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kaz2CAvUHoW4mkffkq2TfBYWjsh7NL18BeWfNPrBxjcQNx2pcC4EtUjAQGZrlKxNc
	 duNYI+2P112Au0Bq7j3v8hps12+U58Tmy/RVzVRBaOMmX+XCWgdnzLNNtJ9vYRXRRS
	 YzSgoExBRwAEdsUx8Y8Xb0coQeoioIQsSCELdKdtFS+s6i5OYpZyrl2A7Yyljqqqso
	 lFBP8tU+pwaYi28YUMkEmUIroZb4pL4XTCkQb7JDCCEBf0sD9AQs235nqhn9eTW5B9
	 s27heIop9/Su0Tsfh8ZrrGfQEDwTxM3cHOMVS6GFRO4cV31CQpQsCkotOGVCywu2ek
	 qAz1+rPet6ZmA==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-kernel@vger.kernel.org, kernel@collabora.com, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>,
 devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Alessandro Zummo <a.zummo@towertech.it>,
 linux-rockchip@lists.infradead.org
In-Reply-To: <20221020204251.108565-1-sebastian.reichel@collabora.com>
References: <20221020204251.108565-1-sebastian.reichel@collabora.com>
Subject: Re: (subset) [PATCHv4 00/13] Introduce RK806 Support
Message-Id: <166966235945.739089.7387113152934884046.b4-ty@kernel.org>
Date: Mon, 28 Nov 2022 19:05:59 +0000
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-fc921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_110603_834114_6DF2C932 
X-CRM114-Status: GOOD (  20.26  )
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

On Thu, 20 Oct 2022 22:42:38 +0200, Sebastian Reichel wrote:
> The Rockchip RK3588 Evaluation Boards use SPI connected RK806
> PMICs. Downstream this is handled by a new driver, but apart
> from being SPI connected this chip is quite similar to the
> ther Rockchip PMICs (also RK806 is promoted to also support
> I2C). Thus this series instead updates the RK808 driver(s).
> 
> Changelog since PATCHv3:
>  * https://lore.kernel.org/all/20220909175522.179175-1-sebastian.reichel@collabora.com/
>  * Dropped removing REGMAP_I2C dependency from RK817 ASoC driver (applied)
>  * Rename MFD_RK808 to MFD_RK8XX to be consistent. It makes sense to do this now,
>    since the patchset touches all the child drivers anyways.
>  * rebase to v6.1-rc1
>  * collected a couple of Acks
>  * update rk806 DT binding according to DT maintainer feedback
>  * add missing pinmux config to the rk806 DT binding
>  * update rk806_spi_bus_write and rk806_spi_bus_read
>  * replaced some constants with sizeof or defines
>  * used capitalized comments
>  * rename regmap_find_closest_bigger to regulator_find_closest_bigger, not sure
>    why I prefixed it with regmap_ in the first place
>  * use rk8xx_is_enabled_wmsk_regmap instead of regulator_is_enabled_regmap for
>    the switching regulators to correctly report the state
>  * reordered the first few patches grouping the MFD patches together
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[02/13] regulator: rk808: reduce 'struct rk808' usage
        commit: 647e57351f8ebc37d8e12cbc0f4bf7471754a0cc
[11/13] regulator: rk808: Use dev_err_probe
        commit: f39f8709c217d82aabbf51d8669731137ce09aea

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
