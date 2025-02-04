Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D208C02193
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Feb 2025 23:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fJ7Sm2wECoqw89Ziw1lNwGiah/CGx6ABIRVuEVwl6g=; b=KP6B1uBx1/d3LQ
	qZg9DR3fHIriSEx7hZO5EmQQG0+GJ2C8yx7li0y+g0ETbM949rhNt5KTT5q6EAXTFk491m5kBUdVi
	HkoGPOEmfuInFze+vwcZmmycPq5JQd+Gv1wT5gHM/zllQLFl54IdXp0uHcpwsIwsazWECergbePz3
	OXT+C7fqOuuU3E++YABX8LXuyS82E4DaPvop8ijbp5NTWwnl90zGnAc02lkvG6OHgp4rBZemDG511
	eSzPe+rpsk0bMsbJso42hITYzwslCvuC8TVSJ+1QbD7YubZJ4WSkSc3fsIhAimBa9mRWyYr+9xeiq
	K2DpsIyhME0dEoiQRV1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfS3m-00000001nUI-42d3;
	Tue, 04 Feb 2025 23:10:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfRjm-00000001jIH-41JX;
	Tue, 04 Feb 2025 22:49:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5F34A5C4A31;
	Tue,  4 Feb 2025 22:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B756C4CEDF;
	Tue,  4 Feb 2025 22:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738709385;
	bh=c21nkojC0/zmcsGKUYdOKW+3n0fPYKpSry/wSjAsMZE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ewbEwJ+Jt2ylXUhNkdoMVd0/AKjvEkuEOBNo1ouFznOXb43uzl9PqUk/Iixr14s47
	 8kU3aEE/4o2sEGslFNpIUUkeFJe5sFAwE9QNSQQGHTuA5zzpC8PQeZDPtesGOQLRP2
	 mxpvCKRM68Yl6cf2JvPiQVER1f1C5UT2kCaKPDGoc4g2/vOuzPx1YVtZDkbPP0uNfS
	 LfPrc0VdpQnhv/4K1AkY2FuBrDMKJqyFpLSHdWwOdELTD99rWUKfO4237POzb2kgNl
	 8I7e5sycGQFzlNrexdnxzHcgIys4Mp30d1CLSdxrTbUU/f1Vo/c7yxyW7kWb5FcTQP
	 GS3f++FrkUcGA==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 John Keeping <jkeeping@inmusicbrands.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250204161311.2117240-1-jkeeping@inmusicbrands.com>
References: <20250204161311.2117240-1-jkeeping@inmusicbrands.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s-tdm: fix shift config for
 SND_SOC_DAIFMT_DSP_[AB]
Message-Id: <173870938377.148411.14544200141839813009.b4-ty@kernel.org>
Date: Tue, 04 Feb 2025 22:49:43 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-1b0d6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_144947_047266_DF39B508 
X-CRM114-Status: GOOD (  12.07  )
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

On Tue, 04 Feb 2025 16:13:10 +0000, John Keeping wrote:
> Commit 2f45a4e289779 ("ASoC: rockchip: i2s_tdm: Fixup config for
> SND_SOC_DAIFMT_DSP_A/B") applied a partial change to fix the
> configuration for DSP A and DSP B formats.
> 
> The shift control also needs updating to set the correct offset for
> frame data compared to LRCK.  Set the correct values.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s-tdm: fix shift config for SND_SOC_DAIFMT_DSP_[AB]
      commit: 6b24e67b4056ba83b1e95e005b7e50fdb1cc6cf4

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
