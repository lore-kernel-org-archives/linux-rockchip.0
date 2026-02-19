Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D5DBE9A048
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Feb 2026 15:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuVJUpFvDR0sYQOM/9dk+Mfv6blt1TXH0FUFdwwWp3c=; b=xryEEd2PGRGrfD
	xwGl4fIQvsRAJRuOUFYmb+R4U0i9//AhgrNKufveJY0TdZLlpK1UUpFz6jV5LaqscycdpK38Z6eEm
	c3L26AAvwEvKNrhvmyQ2331nFzE1kQmPxYhkY4Cn0KuG9+1DXkcVvIwwAIQhprfOPQU7lzgYDAkoy
	+8pbdwkbNfDth5srvrJerjuwMX8igVFvsScZOwvb0gmuVY8+29UoHhqarDX7+ZwM6/P2JJVHBwF2U
	zdhcitCVOpEwR+Dv0XiHtkRT5d0cutxxRuzpGS1WIHRSSmnOsi6/GyJwDp6jb4xLAG5douzLOm4kg
	LaeHA3MyOiSQPIMy95iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt64v-0000000BZKj-3kmy;
	Thu, 19 Feb 2026 15:36:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt64u-0000000BZKT-20J9;
	Thu, 19 Feb 2026 15:36:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 56DBB60054;
	Thu, 19 Feb 2026 15:36:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A3F1C4CEF7;
	Thu, 19 Feb 2026 15:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771515390;
	bh=dnerQRAkWguoqhDbE6xYkx4ycJCWKMZ2dF+v2bxWQ8o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kSSRDVrx1HY5u5gxDKR1bty/30CCkC3qhwWpzo+55b9o1gmyqq4DNJFvqGBLxJ+cP
	 l9ah4CAIA4eQ7bLMap8fzdfdFqDfCXB5VzVu13nJWiE6sYvvGn/bKy3lV1KFgn0K3P
	 3H/6VNr0av9PHl+GokoPwX/mCBWPcMQSKkl6LOCRkH/4ZX9bpICXH+cd8GsUyVxndX
	 1Sw5NNX+o4PkaDq25lnTSh3g9OdsPFDiBipolic/gHGsxYBic7AU6jJhdDjUQ8oeNX
	 QHE7RoD/uhIfAY0iTvJP62xa2yCJVr/41JnOIsG5azjQhky2z4WXJURGGZousPXRAa
	 M87wcMnBoC3Mw==
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
In-Reply-To: <20260218201834.924358-1-detlev.casanova@collabora.com>
References: <20260218201834.924358-1-detlev.casanova@collabora.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s-tdm: Use param rate if not
 provided by set_sysclk
Message-Id: <177151538730.130550.12673698490748954577.b4-ty@kernel.org>
Date: Thu, 19 Feb 2026 15:36:27 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-47773
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

On Wed, 18 Feb 2026 15:18:34 -0500, Detlev Casanova wrote:
> Drivers will not always call set_sysclk() for all clocks, especially when
> default mclk-fs can be used.
> When that is the case, use the clock rate set in the params multiplied by the
> default mclk-fs.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s-tdm: Use param rate if not provided by set_sysclk
      commit: 0783052534f547f8f201dd4554b1df9f1f8615b5

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
