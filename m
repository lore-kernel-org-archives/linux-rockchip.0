Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D9A3C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 16:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoJEBBJKhCzZGbJ5hfaRW1kxPk+REflyDaQ4iqS+u4c=; b=d96XfONyim6hUr
	vlifwxUtZKfMa5p17eLarsupckaOWyaSSeVGAZTzzlEPJPacqJ7Mg1X8DT5+yqxO3x6u/7glS1o5Z
	yAnpVVb1TvwURfWREnk5TRfajvIKEuHpKl6qdO7wHaFaoKsAzMN4ESpCIYw/GpJadDPl+o3Z5CqSU
	b70VrZuFd+R5q8J8KXF/bwWIJhuW3HLgncRhiZPsoP2amC92hOoyTgFVC8krQmR4tXCluL3lk36XI
	KlAgERieUNH+XZhJQwqVlLaOJSPO//gitGccxUlTgiM3AX+k2QGhLFcr4WfOteULVQbotcUtWSABm
	x+ytQVo05+aVbSxkUQ3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp9ZC-00000005RG2-3Qht;
	Tue, 26 Mar 2024 16:22:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp9Z9-00000005REi-2djd;
	Tue, 26 Mar 2024 16:22:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 23708612CC;
	Tue, 26 Mar 2024 16:22:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EA99C433C7;
	Tue, 26 Mar 2024 16:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711470142;
	bh=//W8P4cggBSW4ea8DF0U9iBbG/iet5qmMnbhF2CbDqw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WdMrYjnhXYNxEf9pNXnLav5F4Q4epZrMVL+Zz2HGT5iP/apNBDGKnDGgaXPEvRqrt
	 OSt7ASfME63Asis7oPSNMMgDVkQ/tEhvKBMxVpzSrdnS/N75iru8LP3FECq+002ak4
	 gEyUzMeFj6KXQKuwDvIfyQQRgiUP6nX62l2D26HzNjSef8Oz+1ECVc+zo0iExP5RRS
	 rLgLMDcuR5YKGuOCC2PuNBrfu0P1FJeJ/hNj4mY/rqdwsDnwSvOxF572bK07/6t3KK
	 Q4sddwI+t3yMJBC95MgpPLzqKjF5xzaeAY5h8sL/UBc/OVCZpMbeY0KvMCb4pEzdtd
	 dMKOk7KIy4enA==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Rob Herring <robh@kernel.org>
In-Reply-To: <20240305-rk3308-audio-codec-v4-0-312acdbe628f@bootlin.com>
References: <20240305-rk3308-audio-codec-v4-0-312acdbe628f@bootlin.com>
Subject: Re: (subset) [PATCH v4 0/7] Add support for the internal RK3308
 audio codec
Message-Id: <171147013904.144152.3554445649674983907.b4-ty@kernel.org>
Date: Tue, 26 Mar 2024 16:22:19 +0000
MIME-Version: 1.0
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_092223_750825_AECCA543 
X-CRM114-Status: GOOD (  16.57  )
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

On Tue, 05 Mar 2024 15:36:27 +0100, Luca Ceresoli wrote:
> This series adds a driver for the internal audio codec of the Rockchip
> RK3308 SoC, along with some related patches. This codec is internally
> connected to the I2S peripherals on the same chip, and it has some
> peculiarities arising from that interconnection.
> 
> For proper bidirectional operation with the internal codec at any possible
> combination of sampling rates, the I2S peripheral needs two clock sources
> (tx and rx), while connection with an external codec commonly needs only
> one.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[2/7] ASoC: dt-bindings: Add Rockchip RK3308 internal audio codec
      commit: cce4cbb157493483f03c21213753b66425a31430
[3/7] ASoC: core: add SOC_DOUBLE_RANGE_TLV() helper macro
      commit: d75a21611a6e723d81db3f827e131ad39b69186c
[4/7] ASoC: codecs: Add RK3308 internal audio codec driver
      commit: 4ed0915f5bc4bcc81bca783a5b984f3d81e9764e

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
