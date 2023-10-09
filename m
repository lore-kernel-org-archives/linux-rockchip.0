Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5134ACD611E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 18:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxUmlh9e8h9VxgNw4mGl07OhLrE5BOQIM+MkVJVKPeg=; b=sQHcrZNe9SILOz
	CPvRGvX0nvtw6jnpoHdRPfh+hB7NgkZy1vN4xpm4OPc9q/OqksZX81JNJuNY8MlTyi9/Z2tLNYvMz
	yaFWBbUoUEJroBp1exyLOZ46xsOvYuMQluGh6L2Vja0v1PgdRw1SDLF+52DTPtxp3lni/+G1uvy0w
	XrRyPVfE7vU7nQnJhNybFvU2a5mkRcd1YtyOQOwmaQ0CMcYiMZ7x5KuQimrivyLZVxIutTv5umgYg
	6iZmdw5bQBm9pnKmeOAiB1lDRp+0zNJONswn6buJdFvV8vcJ4ZJ3tJfGM9Rd6nLu32eoSXsVsftRe
	xMFrRCIPd1eNhIIDqf5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpv79-00BOyG-36;
	Mon, 09 Oct 2023 18:36:23 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpv75-00BOwc-2n
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Oct 2023 18:36:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4FD4ACE19D1;
	Mon,  9 Oct 2023 18:36:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2E92C433C8;
	Mon,  9 Oct 2023 18:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696876577;
	bh=cleXwwfg4OCGw1Kekzev2WGKdvehBL0Gc1xi4pIDrp0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lRVKJnS86mkBgUwHEKu3kTFmSyz0+HRJuREm/e4ClHEh1+kRaNQ0DZNol8dHUriEU
	 MNX+R3wWHACHrBArrmULIe7ymsvBD4q8CMJn11vgxPdNOc72FMylFe60KtEQEKXHaS
	 T2Ujs52iMz2UKlImVbFCPfNuoA+lzj+nuJt7VwIn6uw72hhQvtLGQ2QAlfiSFmkNEc
	 6UAA3hV9J73+xnqT4RgkckUG8QdipOceou+nwaYBhqAqdDrDSF1vAqzKi5mIee85OC
	 d5ZFnpbbIEjUMv8z380k9BIVNG1LB+SHEeLJ685xGevfbyzZJ2Z/NIdFcXeqkMznXG
	 hgebKbLav8evA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 Linus Walleij <linus.walleij@linaro.org>
Cc: alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20230929-descriptors-asoc-rockchip-v2-0-2d2c0e043aab@linaro.org>
References: <20230929-descriptors-asoc-rockchip-v2-0-2d2c0e043aab@linaro.org>
Subject: Re: [PATCH v2 0/4] Convert Rockchip ASoC drivers to GPIO
 descriptors
Message-Id: <169687657441.138823.7986058351382162360.b4-ty@kernel.org>
Date: Mon, 09 Oct 2023 19:36:14 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-0438c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_113620_073546_D754DF30 
X-CRM114-Status: GOOD (  10.95  )
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

On Fri, 29 Sep 2023 00:12:53 +0200, Linus Walleij wrote:
> The Rockchip drivers are pretty straight-forward to convert
> over to using GPIO descriptors.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/4] ASoC: rockchip: Convert RK3288 HDMI to GPIO descriptors
      commit: 15b26d8165b39a07f038fb4d2b67a04c50463eb9
[2/4] ASoC: rockchip: Drop includes from RK3399
      commit: 3116dc2e16542d56bd173e90ce1893bed697a830
[3/4] ASoC: rockchip: Drop includes from Rockchip MAX98090
      commit: 7214141067922836b48157e8266335096a0ea4ea
[4/4] ASoC: rockchip: Drop includes from Rockchip RT5645
      commit: 329b017ccdf80cdcc3550f6caecbf2bc80a67432

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
