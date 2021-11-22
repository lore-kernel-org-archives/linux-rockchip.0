Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37383C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Nov 2021 00:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCELNS7KGM3Atrd97M1o3EQ1fjeyxjpsQMCJC4ilUuM=; b=xcH1yQRliEoAsv
	GNLLjFtWvUAPxxIByjc3RoCKuFVx58jVSiZ/4Ma978kXb3K8L8eGipgFm6Zh9ZUO5KxORWUvIDthh
	JG06+IgTvmaC5YkqtLuAmK3jxaiD6dY4A9/3eeIr52wn2sEp2U2OCLhRo89xX5Yub7O5CUVPoOxWK
	RWh3lNpvMuXgY3TNbvTO9oh1zEBe/0VV1dyPDz2gr5nfTty3OBeqGbwpb/mUnp3CUzw4wQXgHQjIC
	aiYlPJENgEldBDU9bsMTYeePOa/x+kZbpvAISojE88X3HqBv1qBm9k12NSj65+iT8pHagYXi76vz0
	lkJgQJQxcF4IsAt+egnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpJE8-000U0R-Oe; Tue, 23 Nov 2021 00:00:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpJE5-000U07-RA
 for linux-rockchip@lists.infradead.org; Mon, 22 Nov 2021 23:59:59 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B742860FF2;
 Mon, 22 Nov 2021 23:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637625597;
 bh=R4inWEq2iQQrWDi7YP3Cg9zv9pdAIG3tab5qNYq/Ugg=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=COvgZoc7HlJJ60EycIB0dfNuLnZzk+M4tFPKrTjncQD5K88aSvDUQxufN60ImBDu0
 3NiCGoVblqFbUnJNsrdrB3dk3VSXT51+Pb6t+XitCKYasqScRA8HYh/jK30bNH6c4m
 VCIVr4wa0zJkIfh2P5YpQ3CPx0A9WfaoSqyqQ8rRDi1t62pM3rx3plT9KoqsJXsEPf
 z1naa6EWk/WFH7bhR0IOrbleUET0YBTxG33AlHfK4/4TRuEtcvVaVtljPHAOQbE3cI
 +TSyOoeDwS7ESLxRrU8WyH5QxStCya4J4YE177YWbPiRTuE3Wk1txyh6XQSi9FRFXo
 O+SPjnDeftT0g==
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Lee Jones <lee.jones@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, alsa-devel@alsa-project.org,
 Takashi Iwai <tiwai@suse.com>
Cc: linux-rockchip@lists.infradead.org
In-Reply-To: <20211121150521.159543-1-frattaroli.nicolas@gmail.com>
References: <20211121150521.159543-1-frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH] ASoC: rk817: Add module alias for rk817-codec
Message-Id: <163762559549.2471670.593188809347574663.b4-ty@kernel.org>
Date: Mon, 22 Nov 2021 23:59:55 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_155957_946285_5811419F 
X-CRM114-Status: GOOD (  12.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sun, 21 Nov 2021 16:05:20 +0100, Nicolas Frattaroli wrote:
> Without a module alias, autoloading the driver does not occurr
> when it is built as a module.
> 
> By adding a module alias, the driver now probes fine automatically
> and therefore analog audio output works as it should.
> 
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-linus

Thanks!

[1/1] ASoC: rk817: Add module alias for rk817-codec
      commit: 428ee30a05cd1362c8aa86a4c909b0d1c6bc48a4

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
