Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 793B8C7EE26
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 21:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acJETg7oPweMeR0XmgWM/nI9Dx0ehfxykfuDP11F6jw=; b=IqriWX0abh1g/0
	sJM5PyzOnf1MgwiK6rJ69TwWpxau9Gd/juDJqUZAvnMiDqDrErP97l6Ip3f+A7Zc8ck47UNAkpStT
	5dcGHLQu/upDcCtobzWdFysDQ8ghHLMHoBOLNJuNeEP4xcdCTargsnXhk658L5MGf44k1Af29shAA
	1JaY1KUi3+w2BmdWTApumYLtWRNfQnAWntJJw3Cl3uiXk0K3vy/hLazNh9AYZFj0ZXzfXzNfCECAO
	ENbA/sPJg7MwjmPb+E3vo+OVnNcgUTWydcLaO9T0BNAdhbvh4Cc1gpIrqFprgCLWEwyQGlNM/vqvf
	/FSdASOEBXLhFwzQdlnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Zno-00BWLU-2c;
	Tue, 23 May 2023 21:44:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Znl-00BWKd-1V
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 21:44:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0E5D96255E;
	Tue, 23 May 2023 21:44:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EF41C433EF;
	Tue, 23 May 2023 21:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684878256;
	bh=Pcy27QxV2VSyKZ0c9gBpRqx5QQlOlbBSFETWOV2+EdI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ohrWebOdofNkYKggD8+jvJ3xc7Yb5SROIdSTiZbdW1jiRh+RKMNsakq11Fa5VAQqx
	 zsfTW3+wtLfKBmArxSLLjet7u/dP1Hxuf3DVrNU4AJUSXS3keDPZIYo5gAKAV6+e0Y
	 CtPzsbo4pMQxIGQX2TW4esVgn2i6xWrDHBP+4cQlSGXb24n5LD5SDFK5AEZaQ/5iwV
	 4+IZWvHaTee0QzKnAKp5j1U7D0fqicGThMKXGV1e3Ml367FxM9EnMPYEoAUS8fO82f
	 nfkj/lkTPsQT+zKGSpSn6R/q97fGP51kucSwu3WRye3Ob4h4W56c0av6pQMmhFZdb9
	 runop5qF1Euag==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Lee Jones <lee@kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com
In-Reply-To: <20230504173618.142075-1-sebastian.reichel@collabora.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
Subject: Re: (subset) [PATCH v8 00/14] mfd/pinctrl/regulator: Add RK806
 Support
Message-Id: <168487825330.297228.86399112771503926.b4-ty@kernel.org>
Date: Tue, 23 May 2023 22:44:13 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-bfdf5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_144417_584542_E1D5D7FA 
X-CRM114-Status: GOOD (  18.98  )
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

On Thu, 04 May 2023 19:36:04 +0200, Sebastian Reichel wrote:
> All existing boards using RK3588/RK3588s use RK806 PMICs. This series is now
> the main blocker for full upstream support of those boards and it would be good
> to have it merged for 6.5 :) The patches have been tested on multiple different
> platforms and are mainly missing an Ack from Mark or Liam for the rk808-regulator
> changes.
> 
> Merging must happen through a single tree, since the pinctrl and regulator
> drivers rely on the register definitions from the include file added by the MFD
> patch. My suggested merge strategy is that Lee creates an immutable branch for
> the regulator/pinctrl tree once all Acks have been collected.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[10/14] regulator: expose regulator_find_closest_bigger
        commit: 431cb97b763133fba8b1c68c1ed089315f25e4dd
[11/14] regulator: rk808: fix asynchronous probing
        commit: 1b9e86d445a0f5c6d8dcbaf11508cb5dfb5848a8
[12/14] regulator: rk808: cleanup parent device usage
        commit: 5111c931f36cebe77d4ce66964c348e6eb4afca0
[13/14] regulator: rk808: revert to synchronous probing
        commit: 22a94021e7d2b456c6abb59ad0a7ce4e94933d4a
[14/14] regulator: rk808: add rk806 support
        commit: f991a220a44726c54c2332569a2a80bf074aa775

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
