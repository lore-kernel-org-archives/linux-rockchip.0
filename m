Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F77BC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 11:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75MkUwdcbusi09xxlouYwoWLNSTW3YGgGJUdYBpGHA0=; b=eTlIouCF+aiJw5
	JC/iGtQ5QgZaoARZB/YWC7UNxoyDzRw+aev7f8HaZF0r2NUwcqCQPN4YTXXg/zWYS5qxZSwNF41/Q
	5WKlUd+R0/Wd0IwKxd87jSAMD8JtplLBvkGvqJymC3mjQpMhCppb6vwD7iGBfIeYV7IRLIRsUeHdj
	hhL5MHKkFNRWYrInEOFNaUTAic+jBbmIC8uzZJAM6UflFQMTS5GDXnLUuOpXnxp4pemOQ14Fozkeu
	AsVNCduVzw8orGlZmQHVTtiuL25vOfYVXQn6knqDMZpxi7mmC7xStRUBv++GFkWKRK5FYb8sn0CUk
	xlcM75UGKSsownwKig6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92tJ-0099lj-OQ; Wed, 06 Jul 2022 11:08:21 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92sx-0099SH-Kl; Wed, 06 Jul 2022 11:08:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A1E48B81BE6;
	Wed,  6 Jul 2022 11:07:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 461D8C341CA;
	Wed,  6 Jul 2022 11:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657105676;
	bh=4zHuh7F5byl2nEPHnYTUbXvbtKodYNHadkpLFgUS4D8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hYxx8Tehs7AmPsTysQ6czl9Kxyix/jOttDeKm8zJyZGMw/nRLfXlG4CexEZYiMTpl
	 spfMy1sybYG6UUHOETIJBE2RiqHuSk5p5YTSqpKwUIH7+dni69ipqZCVpE3bUf60aG
	 GNIyTtdTFW7tSwSsfeBnApKSCGc7I6iJh0rKk5rApl6PujvQ89TLY8a4ERnvccQPzp
	 hIHZhdeTniLkDq3NW9uTUPwWtsMm0QAMqvMOCiYkqDsK8rBRwl6kO3GQkRrlyvGge9
	 qMsW101toZmR9EfuR/l/IoNMTGTBYdArbWSXcmgQDqNaS6piqBBhzToh4DG3m/tFll
	 zKXIeNGLD5z8Q==
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de, judyhsiao@chromium.org
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, wenst@chromium.org, Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>, briannorris@chromium.org
In-Reply-To: <20220701021427.3120549-1-judyhsiao@chromium.org>
References: <20220701021427.3120549-1-judyhsiao@chromium.org>
Subject: Re: [PATCH v1] FROMGIT: ASoC: rockchip: i2s: Fix error code when fail to read I2S_CLR
Message-Id: <165710567400.237380.4691352154008052318.b4-ty@kernel.org>
Date: Wed, 06 Jul 2022 12:07:54 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_040759_878189_5A391F8C 
X-CRM114-Status: GOOD (  12.47  )
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

On Fri, 1 Jul 2022 02:14:27 +0000, Judy Hsiao wrote:
> Add the error code '-EBUSY' when fail to read I2S_CLR
> in rockchip_snd_rxctrl() and rockchip_snd_txctrl()
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] FROMGIT: ASoC: rockchip: i2s: Fix error code when fail to read I2S_CLR
      commit: 0ff9f8b9f59208332c6707e37d5739c57c7f7bce

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
