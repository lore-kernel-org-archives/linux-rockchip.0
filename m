Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D22BFC369D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Apr 2025 14:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nB/KVRbqdLtiroXgYWSrkzijBvChOlM6HF6rEHYKGzc=; b=mh2BRuISvjRXIw
	jo2Rj91wyLqWd4eqde/60TduGHDujvtGeBcfdltrn7Yr0p4JNmJD3ZbR67Olr2WBg4IRNzmIFnMpe
	5GJ+R6fUmFjtz0rOwYdEf2xoaQoR6AbPHZ+Cx+zJMEqBB2klc43wlU2IDIZbVmdFA0WzenywCd4Ty
	dBPt4tB6I+qbR5xUIdtJauE4O+R6TEu6NYw4RkcW/QMLuqcLuXJ/2IlBnXshLaCtX8KSGS1qA11e9
	xaXTZRZiA/4jo+lQUkAHGb3/blyUOI9KdjiYljikl0OXTv1RKu11icyKX+n2aZrlsDo9T9PN3LDkL
	BrJEHpV4wzfA6QOSUnfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7bBK-0000000AqIY-3xiv;
	Wed, 23 Apr 2025 14:34:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aTd-0000000AfNu-2oqK;
	Wed, 23 Apr 2025 13:49:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C7BFB4A0A9;
	Wed, 23 Apr 2025 13:49:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8FE6C4CEE2;
	Wed, 23 Apr 2025 13:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745416165;
	bh=osGtOXoJ3/G4yq2pLf+qpaLC++EVm4B+QQ46Ny8HTnk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=txMPS8mzhOH4JqWs1/gpActbHw272wesasElzGIudFpTPjkYoE2Fidl1RznTJYoB6
	 HrIW0sUUeMDYBEGX9A/z9xoQkqHITBpJgrLpcBLkoETNeCWg2Ppw1Z4WTmIhG6Zt5M
	 2S7JGvwX4KzuRr6fzQEyVX5BPNuqZhTBegeRGEdr3O0aPf6H5i5qWfemZZRNWldNdt
	 ylCBx4jutIwZmwtbc/01ACKzZptf2DOuKlb60SkdBqPU9zb3pJJHQlnDh3EdZDXjGD
	 dP7fKeCj1xnj6YDBpdC9zQ5dxsTbRteEBjFwyn8anEIXhn2f3+SuZo2N/hs4VsISpY
	 keUVg1uVu8MiA==
From: Mark Brown <broonie@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Sugar Zhang <sugar.zhang@rock-chips.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250410-rk3576-sai-v2-0-c64608346be3@collabora.com>
References: <20250410-rk3576-sai-v2-0-c64608346be3@collabora.com>
Subject: Re: (subset) [PATCH v2 00/11] Add RK3576 SAI Audio Controller
 Support
Message-Id: <174541616068.423395.2187976314107237451.b4-ty@kernel.org>
Date: Wed, 23 Apr 2025 14:49:20 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-c25d1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_064925_735037_03E99947 
X-CRM114-Status: GOOD (  14.21  )
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

On Thu, 10 Apr 2025 21:39:52 +0200, Nicolas Frattaroli wrote:
> This series adds support for Rockchip's Serial Audio Interface (SAI)
> controller, found on SoCs such as the RK3576. The SAI is a flexible
> controller IP that allows both transmitting and receiving digital audio
> in the I2S, TDM and PCM formats. Instances of this controller are used
> both for externally exposed audio interfaces, as well as for audio on
> video interfaces such as HDMI.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[05/11] ASoC: dt-bindings: add schema for rockchip SAI controllers
        commit: fd55908d3278300ec4cbbacbfb07748bb9166314
[06/11] ASoC: rockchip: add Serial Audio Interface (SAI) driver
        commit: cc78d1eaabad3caf3c425c83037cd8ba1c9f2bc6

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
