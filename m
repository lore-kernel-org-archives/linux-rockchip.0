Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B84BCC0218C
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jan 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18ixwrhFku+6Nx858BFJqR7bknxg5d77xGIgybM+rvU=; b=iX/NHWcJBmmFtw
	WyzLf7eHrxu8fQ7uS+DTEfrfhASsOzT857VGkMcmzRqR1i0nVmIDZje1IDhUk2KSkMwjnADFJb7SU
	hlTVtTdVyLv2kzsYYx+NfKxKZ5cN9+xsYeBAnD1cqQ0J09MzdpzAXFfwJ+r+OmQLjoDwKTvnAuKR7
	Cqiv1aHoV/RqcVvPAPEkF6Y8IOJ9sbR9MTjcESIaL94Y0nqMD19oki88X2vOEknf6C48G0VDpY4PF
	d07HlMVhJcTYUHpoXI7UIe0ycR/4Fp6hbxRhS9LE6rQE3d7eoIuJo07CEI6QJDuPVU0bql2DXMIJf
	2f1mYsKeK5Kc/8u48kaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taIl0-00000008ZT0-40zX;
	Tue, 21 Jan 2025 18:13:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taIhR-00000008YpM-18DD;
	Tue, 21 Jan 2025 18:10:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 431745C0156;
	Tue, 21 Jan 2025 18:09:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B9F6C4CEE0;
	Tue, 21 Jan 2025 18:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737483004;
	bh=UdZ9afI6nCqNOL74I2jYwoxBKG9cTM3qEhqteNY0Xvw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=I3VGdnEXDqVWfBKW6NaMyQurjhYZwg26jWT4mb8obx2xq3dEbXHWT+hmDq0H9IYr0
	 AOnKXtZJ4YyGic6SJ9x1U6LfQzhSOeVgvPtETbofPm3bv+to2enhqqt0jJWtboz1+c
	 djHLiMYU++T6ZVO51Xk719Lsu6usSlETau/n+nPx82FJsQGhwMhSfBIF52ywMUzVxH
	 ywrOlzj/c9Acd6k6YUFXpcs8e4E3a5WinOmEUr2gwkNgm2Ol815bkjyqidqGgz3XTm
	 dGTriTLOeUYaTf8Mu4TSdKEVlEix2/GPIUKX5MM/OMXdR20XqZ9d8odIdY+arG4+np
	 yMQ9j0U+xWVoA==
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com
In-Reply-To: <20250117163102.65807-1-detlev.casanova@collabora.com>
References: <20250117163102.65807-1-detlev.casanova@collabora.com>
Subject: Re: [PATCH v1] ASoC: rockchip: i2s_tdm: Re-add the set_sysclk
 callback
Message-Id: <173748300208.97954.15641423704093846884.b4-ty@kernel.org>
Date: Tue, 21 Jan 2025 18:10:02 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-1b0d6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_101005_356975_3663ACA8 
X-CRM114-Status: GOOD (  13.86  )
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

On Fri, 17 Jan 2025 11:31:02 -0500, Detlev Casanova wrote:
> In commit
> 9e2ab4b18ebd ("ASoC: rockchip: i2s-tdm: Fix inaccurate sampling rates"),
> the set_sysclk callback was removed as considered unused as the mclk rate
> can be set in the hw_params callback.
> The difference between hw_params and set_sysclk is that the former is
> called with the audio sampling rate set in the params (e.g.: 48000 Hz)
> while the latter is called with a clock rate already computed with
>   sampling_rate * mclk-fs (e.g.: 48000 * 256)
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s_tdm: Re-add the set_sysclk callback
      commit: 5323186e2e8d33c073fad51e24f18e2d6dbae2da

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
