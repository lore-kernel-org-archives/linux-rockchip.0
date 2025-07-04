Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1165DC83F03
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jul 2025 21:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nj02Nwb+S3W5KqLZgnrOMBg0Pwqt8J0NyJQbp6BZ0Eo=; b=OmPrs7SWZP3nFf
	QOHNpz3gCmQ9NsSBHc5cAHyiItqk/4p0lVWCMFwrKe5GXxxYe1sQUuoopoCtlqGAc6tuUPc6Q3sec
	vtj5kfkrKgp3igKtdDRcJCt+LkcCjYI4RW/3uYL6pXtRN1KYsdOX2mn/Gy/i7AnXKjcHMbbVmWrIq
	zRm+4Bv1W3BR03cmud16w8WqaM525mJ9GcJt16RMLaCnvyUKhHNGtq9/Ll3xqdd8MzTh11MiP9Rp9
	JT6Z4DDT765zTPNTc3abeM/BYru4I/Yf8RmYfFGDWlFm517GOUU/E5VYzn81qrQlJZuWdzC6xNBqT
	AZyQ1+ac/8rzy9VHGBOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXoDB-0000000FY0r-2SZj;
	Fri, 04 Jul 2025 21:44:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXoAq-0000000FXgJ-2KWe;
	Fri, 04 Jul 2025 21:42:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 272B16146A;
	Fri,  4 Jul 2025 21:42:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9E48C4CEE3;
	Fri,  4 Jul 2025 21:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751665342;
	bh=6yn4rMYivw3/KIBDGpK476SEiUbXY5TLmhWSBFNrfuE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=XM0YJq5cnTC5wgCVzcz7ybjl9cDO99a5Y/IaR/r+mzhuujwQ+auUqC9+YjdZxU52r
	 sQwj+fWy449ni/DgMFpqesdt7Ts8ksrcg8PaCXQ6X8T96UbZ/SHMWqxSTgvSYWPdTl
	 NO/LVxPA6PhBgoJuPVoIGnIoACVF+e9LvT5gvo1dzYqv9VWNZS8C7zN8bpRuyHJag6
	 RKVfNBYORdblAAiUq2iyhyaMZDcib2cUv1mpSpB/CwRaPuPlVaCKNX8Il86/k2l30b
	 fF8KtrkFQPiauAN+By2oECOr8BEfHwAy47CMfP+r1jnwWpNa9JTFxTqe/1HoS48m93
	 aCcJQRgDu8ZDw==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl
In-Reply-To: <20250704130906.1207134-1-peng.fan@nxp.com>
References: <20250704130906.1207134-1-peng.fan@nxp.com>
Subject: Re: [PATCH] ASoC: codec: rockchip_sai: Remove including of_gpio.h
Message-Id: <175166533831.206730.2590873270491527384.b4-ty@kernel.org>
Date: Fri, 04 Jul 2025 22:42:18 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-cff91
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

On Fri, 04 Jul 2025 21:09:06 +0800, Peng Fan wrote:
> of_gpio.h is deprecated. And there is no user in this driver
> using API in of_gpio.h, so remove it.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: codec: rockchip_sai: Remove including of_gpio.h
      commit: 571defe0dff3f1e4180bd0db79283d3d5bf74a71

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
