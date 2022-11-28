Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95285C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 19:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kB8lgdqwWSAkJyiYcI4H758gOjmkaEcVMIsUm7DghDM=; b=LauL/EIJKDqvP8
	OjftuNYAOH/ExErJoLazEPcLdzVGQRumGCzaqkp3g2hhJXZTsOrx0YtRfvHYJkN81iabASXZkso+V
	/ChGAPzUsFHNnCBPf2449MuVOE+FTMfbWpXw/XYhhCLbUfzChDwyht7uljJ8zGlwftddaaUbR4BcX
	IfGJfH11rD+kekqjaj9FcCNbsm18hyDBgqHKRSONHHDQjPydG3F/kawK7Nga51ildtdzEtOFHaoi6
	zfQFMmEoO7Kq+45pUxRZeQaCiPnzX75uYt9QZ4KsAsKyGCZb7Cx8VcbU8EScGXgZhaLfqL9VNwuMo
	0m5UKEzI/B/LoSQ6yygg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozjSB-003s1K-S0; Mon, 28 Nov 2022 19:06:07 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozjS5-003rzA-Rp
	for linux-rockchip@lists.infradead.org; Mon, 28 Nov 2022 19:06:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7A28FB80CA3;
	Mon, 28 Nov 2022 19:06:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F2EFC433D6;
	Mon, 28 Nov 2022 19:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669662359;
	bh=bYrX7p6VXu59IzHLRpXR6E2l0n/Yi7FmtGPA1cHqfAs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=O0MFcLEjqofyJR6Tl+sWupNctU5YJ3s9O8z+oa7x18f5HtRTS3w9oNQKYvF6coPlu
	 YAD77vsF0A+hvQELCtZFpBQRK1nOSQyhu89kJYlvGEZ2Sf9BFjlUvyHUzZE9sxElNA
	 VPj6uH8GEviPeq07k+z08/94rp5BQU9j9TKXwS+cXb5vxOYQqR4VCVrDIouxRCyQtw
	 r/VxCnc3mZmDB3PCSQFD6phwAGP4bmpJXOSDtpD7vHVJzbjUtfpuM45yQNRseG3M88
	 gVdCpILsU1Aq9QVL5LHsykiQXIn26TMZS6RX/kEDt08TFo4mTwRnKU6k9xp2TBneF2
	 YYvYpgsl3fwIw==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-kernel@vger.kernel.org, kernel@collabora.com, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>,
 devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Alessandro Zummo <a.zummo@towertech.it>,
 linux-rockchip@lists.infradead.org
In-Reply-To: <20220909175522.179175-1-sebastian.reichel@collabora.com>
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
Subject: Re: (subset) [PATCHv3 00/14] Introduce RK806 Support
Message-Id: <166966235607.739089.9217119235765482431.b4-ty@kernel.org>
Date: Mon, 28 Nov 2022 19:05:56 +0000
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-fc921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_110602_065403_DD2A7D39 
X-CRM114-Status: GOOD (  15.82  )
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

On Fri, 9 Sep 2022 19:55:08 +0200, Sebastian Reichel wrote:
> The Rockchip RK3588 Evaluation Boards use SPI connected RK806
> PMICs. Downstream this is handled by a new driver, but apart
> from being SPI connected this chip is quite similar to the
> ther Rockchip PMICs (also RK806 is promoted to also support
> I2C). Thus this series instead updates RK808.
> 
> Changelog since PATCHv2:
>  * https://lore.kernel.org/all/20220908003107.220143-1-sebastian.reichel@collabora.com/
>  * Change DT binding to not allow nldo-reg6
>  * Fix DT binding to check for [np]ldo-reg instead of [np]ldo_reg
>  * remove rk806_get_voltage_sel_regmap in favour of regulator_get_voltage_sel_regmap
>  * drop rk806_set_voltage in favour of regulator_set_voltage_sel_regmap
>  * use regulator_set_ramp_delay_regmap
>  * drop possibly incorrect printing of chip id register address in case of errors
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[11/14] regulator: rk808: Use dev_err_probe
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
