Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 540CFC54E94
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 00:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWZGLdb1i9IBa5kt68lo0E25iur3FE3AYoNnPtDlKdQ=; b=gY6pnHCJqNCjAb
	urjNdlhBkYuIVwaAZQnvSWZaSRpaA7vSclfjGkQ6AEvLq1ZTrdi6F3n9eslnQn8OAzbuJUCaWVTlj
	ZirhBgTjtbWngrLresaGJeM10S0S4mL972NefO2yuL2dXrMg8nhmwlgaNlm3xDaKGDOwGHJn6J41L
	tAFPfzeAgoIeJ7qDafCJ/cvHmFv2aRbIoHtub15TgGZ/FRgxsrsQltOmylIca72GzfJL4HyQLF364
	Yp4nfLtZGA4p9AKtDiPHxF0rCRqhbQ2VCAQl6SN+CMK4nKexQja4XcJ/QZEYKcnK9GWHz5EcQZnEl
	Ro4CfTaSYdhqI2Skrgig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKq8a-009BvC-Dr; Thu, 26 Jan 2023 00:29:08 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKq8L-009Bo7-5n; Thu, 26 Jan 2023 00:28:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BB07CB81C68;
	Thu, 26 Jan 2023 00:28:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65302C4339B;
	Thu, 26 Jan 2023 00:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674692930;
	bh=fbBRAdPn9UFXEiL+pTgBGg0Ie4LQZr2rftDpSDQY9mQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=J2htSXXHT0yD60LqM36NP78mUMK3vdQZPm3sPfBw0ylOPx8uAF5HuQiUSYi7hbzwH
	 jdDNJLFsF/ezK4qmwcuVPdd/3LAnAxsba6JHrD2EzzbwBBLCqnWdrLcsFuX4Vnkh+N
	 G6BL9SaoxeHbOnOEogTRcDQncFNaXHydmJcOCXKKFOQ4sXdtC9EnTPLLhcV71Fp/V5
	 mDMOuKy1OobLePtLrMuzF9nf/DC+GtAHAKSu7snlPZnodGhOCUGi4zyfvVnGuBbTHc
	 SYdCe7G0uTJSXQmaXF65Ku5S1FeGg9+cZ9gxmUP+VjXReWrp2JyS6s/l/IKTak/JXe
	 XecrCqRjSSGTw==
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, alsa-devel@alsa-project.org, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20230124181746.19028-1-rdunlap@infradead.org>
References: <20230124181746.19028-1-rdunlap@infradead.org>
Subject: Re: [PATCH] ASoC: Kconfig: fix spelling of "up to"
Message-Id: <167469292812.2696228.156727580350360808.b4-ty@kernel.org>
Date: Thu, 26 Jan 2023 00:28:48 +0000
MIME-Version: 1.0
X-Mailer: b4 0.12.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_162853_416203_1F43033D 
X-CRM114-Status: GOOD (  12.48  )
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

On Tue, 24 Jan 2023 10:17:46 -0800, Randy Dunlap wrote:
> Fix spelling in sound/soc/ Kconfig files:
> s/upto/up to/
> (reported by codespell)
> 
> 

Applied to

   broonie/sound.git for-next

Thanks!

[1/1] ASoC: Kconfig: fix spelling of "up to"
      commit: 636be128d659131739df62e08455bbf6678fc58b

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
