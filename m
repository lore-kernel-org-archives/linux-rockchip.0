Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83110C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 21:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUJ02Dq0gdZ07BGAU+MSbfc+eGkIPAn0TGnhVOU8tTY=; b=Ss/yrG0Oq7xcp2
	RSyS7tU11XM0LTOtRPvhzxgwdH5FiZZybhPSe9Xp3pTDVbi4BGMLsUskpRHOUZTwwnJvfW/qHXGWS
	5nZcPm+rxAJQRDnUoHsTqUuopI+rIrlNdTi5RcdKWZQsPJYvFkRAgrZ5XQzMNvFvS8AUaWMJfyYcq
	z7okR5HMnyBT9eCCIXbx7OLMHxEUp4uZ4ZG+dLcPnEp8k2xuMGd2JxXi3zdvH35zEny1P/DmdbuMx
	S95K0xtTGXLfO1jjp6pxx1kXXtXC1RtGnT1E8uJ3qfyBkNbovOFleC5onLCCY3IPWWgJ3FFdkfR8Z
	9bJAX8XE75ThAc8D2bOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExpB-00000007Yg2-0CpT;
	Wed, 05 Jun 2024 21:05:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExp7-00000007Yee-2DR2;
	Wed, 05 Jun 2024 21:05:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A302861985;
	Wed,  5 Jun 2024 21:05:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30B75C2BD11;
	Wed,  5 Jun 2024 21:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717621532;
	bh=vyVyWpamBkhCibWqrfOK0k2btOHC5xE3kXgbNGIntKs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=P5bLm2Y1KeGSag+rNs+2DpD5bY/QXV89c223ilnqh9HJ6pHE8cViiSt0TNL2s7h8w
	 AwRGkgPlZVjdVx9XmmEjtFBkluoSfbeGJyXzcKiO3lqQjlLNbrtspmcmcMiBL+GbVM
	 aUXB8xi1S+d4MhpV6CsMA0fdR1ZIxCSVp8YUdYwyVsaaDxayadxE+1mfisHfizGitN
	 OUrUm6oilb76eEZBH4CGhtV95roADGOpMlkJElwwjCFVCeRUEE1YD+whkoZywyJsSv
	 CmMSM72YP2Eft8rh+hRYPp7loZaPIBVzOmaercAiUL6vmtzWjU1mfNf+Sad716mHzz
	 cTKsR3xQiIqjw==
From: Mark Brown <broonie@kernel.org>
To: luca.ceresoli@bootlin.com, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 Alibek Omarov <a1ba.omarov@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240604184752.697313-1-a1ba.omarov@gmail.com>
References: <20240604184752.697313-1-a1ba.omarov@gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s-tdm: Fix trcm mode by setting
 clock on right mclk
Message-Id: <171762152990.557520.1569792742795917762.b4-ty@kernel.org>
Date: Wed, 05 Jun 2024 22:05:29 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14-dev-d4707
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_140533_655719_C3BED910 
X-CRM114-Status: GOOD (  11.79  )
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

On Tue, 04 Jun 2024 21:47:52 +0300, Alibek Omarov wrote:
> When TRCM mode is enabled, I2S RX and TX clocks are synchronized through
> selected clock source. Without this fix BCLK and LRCK might get parented
> to an uninitialized MCLK and the DAI will receive data at wrong pace.
> 
> However, unlike in original i2s-tdm driver, there is no need to manually
> synchronize mclk_rx and mclk_tx, as only one gets used anyway.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s-tdm: Fix trcm mode by setting clock on right mclk
      commit: ccd8d753f0fe8f16745fa2b6be5946349731d901

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
