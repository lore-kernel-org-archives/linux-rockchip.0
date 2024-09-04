Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AE92CD3431
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 11:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JrpqtvFbuSOv157k1eUaD5mA3SGJWOzuVN+i6WUgQ0=; b=B7LZnexyxNrHVw
	KJ/XofaQBYZwWzeY937BqRkGODRtykP+REJ+ZZHLsbpMbm5UTQYXtMUBx51T7NXSMZ53uHwNVbUHQ
	HoO2IEHDjObUyY3t7WpzixoDxWcUF9mFnFqdVXaa+6Riw7bzHVGuD9rkz18ZxxaJM+wjIpstKcXjW
	hqAmcsRIIXz8hNnJTr/yn6MLoXUENUKxDcTJ0y84Yl+7dr3lqJ/tANc4k/AzcwIy7PiKisaKcaVDh
	OVzpaXTW3btIemBgY2dzJYY3RZn1xEWgyXrneu18ZsMIyAnTlRBThzxhFJ6rh7hgCT1Hv4GUx1NVq
	mAUjRVhlLAKVr4wbSblQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sloCQ-000000049Ff-0mwH;
	Wed, 04 Sep 2024 11:29:22 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slo0G-000000045H2-0uBh;
	Wed, 04 Sep 2024 11:16:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D8500A43E15;
	Wed,  4 Sep 2024 11:16:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95A4EC4CEC2;
	Wed,  4 Sep 2024 11:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725448606;
	bh=qSO3yyRwjPHxSBTfBfqxB3xWwOqLqpYZ4js+mwJ4e8E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VD3HQUw8TLGddJffCWTxisyQx0iZ4Io+/vN6eUyIQPvMSRvclxpjWy91KSNXzt7K5
	 0W3o250OkUtHHhKbJZmcDF9bQVVVrKKN9UILStpFELO9P19wL1ZrOtk/FtyMnFppGn
	 zUOmMjKCgp9XSa9/7MhlItvJWza57QgEfMNEA7Zyskkksq0/UZzZGZAwRwe9Sz+5ks
	 qOOEcFdd2GMwbhXjFdhUIbh7SwBwjvFvNfL/Jd8fTlBOfEvD57Sicl9RVZHUSz7xor
	 NX/sSm1csd/WSACebRtQjIqYMlocGhxfKjKlIPuAroHrIsYq27hs1XPqfLzI605OeP
	 mx+Nw9MojWbOQ==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 marcin.juszkiewicz@linaro.org, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20240830203819.1972536-1-heiko@sntech.de>
References: <20240830203819.1972536-1-heiko@sntech.de>
Subject: Re: (subset) [PATCH 0/3] Fixes for the audio setup on the
 rk3588-nanopc-t6
Message-Id: <172544860433.19172.15489715396080759951.b4-ty@kernel.org>
Date: Wed, 04 Sep 2024 12:16:44 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-99b12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_041648_486470_9A419404 
X-CRM114-Status: GOOD (  13.58  )
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

On Fri, 30 Aug 2024 22:38:16 +0200, Heiko Stuebner wrote:
> The Nanopc-T6 board does contain some devicetree errors, that came to
> light with recent changes to the board.
> 
> clock and port properties need to be part of the codec-binding like used
> on other codecs already and one property needs to be removed from the
> board.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: dt-bindings: realtek,rt5616: document mclk clock
      commit: ea8f615b399988abd801fa52a5eb631d826d0ba4
[2/3] ASoC: dt-bindings: realtek,rt5616: Document audio graph port
      commit: 92ff90cffbeef9b1a4983017555a194f8bc83f77

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
