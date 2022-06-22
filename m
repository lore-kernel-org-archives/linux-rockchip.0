Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3D89C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jun 2022 17:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a74hPiCrvlnt8JmBeGRbE5GaplKQo76J5FpFL4uGTu0=; b=w3TXxU7W0AdhFH
	pGiLocTcz5Fq4rojA/y9mLilNipRSNhTYKdHHOUmrY7S9R71lAsSuyfE1FDJ9+orQhxqo/abxocpA
	kWRBIJRp3eUEtRswhzTzSHDTDdkeEK+Llju8z+2EEgYbAWRceB83BasJoUBkP+9Eba7t8D59IBXQh
	dGHpUS7cpSn/NkslAtodCu3S4IJH0hr1KkfVmS4LkptP9g52+2wt1EH/g7NQbtq2iRgXH1q+lJCAa
	XNXGMUOehE4dJw8/JIXHPwNNQfnFlmrVf63+D61gmvpmGDPyf3vgYQUXU/JyYC3eWNGqXvAv21VNi
	TWwZyenxL9DSw3K60xQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o44BR-00BhqW-Qo; Wed, 22 Jun 2022 17:30:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o44BA-00Bhm9-Vf; Wed, 22 Jun 2022 17:30:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3876CB8205B;
	Wed, 22 Jun 2022 17:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EC7AC3411B;
	Wed, 22 Jun 2022 17:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655919007;
	bh=WpJxGSkPnoTmSLwPwAWBaxy5WCwKFsEXIi5/wZIjC5Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=O8jxIq/LPamDMoq3ZB2j4wKsgadFaOqNRR2sr+IiON6+3oKt+nbysJU5zpEoBOByl
	 fHmubXbbNGi5HsAVhjywJjEsxEmjTw71SSTsJr5e/wmXA3GWk4Ki9vdn6oQlVG3jqT
	 QQtlHrEY+c3CoRRr0TmpuAJ0g9VGIpx7EfPEqG+U6cuTP5Sz4PgZiwIMmkffuNxd0U
	 64ztA/4TMUpRS4RSCgoXh85rrTNo9jaNjhEzenVzLKNeYpjLIXHfH90Osum6p7LKOb
	 v/wPfk30TGijakLXclDCK7BscWP31fN8u3E4QnoSIoaDYuWRk7S9IcE1e5M6Zg+yy+
	 KMyCln03Hi57A==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, heiko@sntech.de, wens@kernel.org, tiwai@suse.com, perex@perex.cz
Cc: linux-kernel@vger.kernel.org, wens@csie.org, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, judyhsiao@chromium.org
In-Reply-To: <20220621185747.2782-1-wens@kernel.org>
References: <20220621185747.2782-1-wens@kernel.org>
Subject: Re: [PATCH] ASoC: rockchip: i2s: Fix crash on missing pinctrl
Message-Id: <165591900483.1405752.13168398437677956332.b4-ty@kernel.org>
Date: Wed, 22 Jun 2022 18:30:04 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_103013_212302_CCF8ED1F 
X-CRM114-Status: GOOD (  13.73  )
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

On Wed, 22 Jun 2022 02:57:47 +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> Commit 44f362c2cc6d ("ASoC: rockchip: i2s: switch BCLK to GPIO") added
> pinctrl lookups, but did not skip the lookup if there was no pinctrl
> device tied to the I2S controller. As a result, the lookup was done
> on an invalid pointer in such cases, causing a kernel panic.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s: Fix crash on missing pinctrl
      commit: c3b5fd7fbb698496461f280728b456d9927f22af

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
