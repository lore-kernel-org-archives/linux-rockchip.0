Return-Path: <SRS0=zXd4=NQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8407C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 15:28:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76FB7610FC
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 15:28:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 76FB7610FC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XO//nf2SiJjL1BY5nqtwOFQYRurcU6lFzuQ4hKpw7/0=; b=P6JD5DiBcnLCX2
	fC6SYkPWzXMKPFNe8NUy8qDtDVKjGO2QamuTQTfzuoVnLvLzXLYcmA+75zS4W082fTfEhSqQfqPqB
	j8AkOTy0xJZtg4pLaLploXR6SUtLtFJwArSGEdT3/Iu5FK820tawJJLTCt8aA8Zf5pyu+5Oieu6nm
	LI2+22zgdwLs4qLSJWIjCmnkLVIrBe0oG84MFZ/D2R7vzmVdcR4X2xaDg3vNMKVAZs7kVQgOj37zQ
	0LGi9xjHLCsV97sk6IYIk+o1UnMgpcfyw0Mc2dGTy1oj5EGJhRocyIl7QOTTe1P21KKgb0CSz4f64
	nqfVyOJasuH6k7bJevWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIuop-007Xd7-TD; Wed, 25 Aug 2021 15:27:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIuoD-007XYM-FS; Wed, 25 Aug 2021 15:27:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 967A261052;
 Wed, 25 Aug 2021 15:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629905241;
 bh=Zr59DmCS8mnXVbmuH6P2mt8dhP1q69YOuESSZTdi8ew=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=RvI2UKfCzTpcL8Veen/YUy+bD4HnitN/kC9Arbl3mBkwKtbwAUqKSbkOFUkS6wEeJ
 PhrthLy0N/BNLjMs46dzupu8RjlLivXghRvFoUFxW/F9D9qRfESPRd7Ssh9oxzOcJH
 1chm1C05jLBed6wN47MHAYYDnYDTJMxuaIHiQgHvoxIIivM/ORb8VY975Om/o7VUbf
 dwPiBjGaE80KgmDkIZ5lA1tOhDk4CeTyPgk5qgcfcSSs0DtJPFbBa+RUoxLk+2LVBL
 kcgP9skWu2SfL9Sg2NCIlT3pmGMH1pLYu24oKb0nI4memDzQ5YawzXAxSZ4Cdccvpr
 b/bwPNQNoQtyA==
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>, Liam Girdwood <lgirdwood@gmail.com>
Cc: Brian Norris <briannorris@chromium.org>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20210825033704.3307263-1-wenst@chromium.org>
References: <20210825033704.3307263-1-wenst@chromium.org>
Subject: Re: [PATCH 0/2] regulator: vctrl: Avoid lockdep warning in
 enable/disable ops
Message-ID: <162990416261.56667.17765131822739903662.b4-ty@kernel.org>
Date: Wed, 25 Aug 2021 16:09:22 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_082721_564385_C92AE4B5 
X-CRM114-Status: GOOD (  12.60  )
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
Message-ID: <20210825150922.8BIYE4Jb6C__51YeMWM7PKmPeTvogIokXaf8r11m6bQ@z>

On Wed, 25 Aug 2021 11:37:02 +0800, Chen-Yu Tsai wrote:
> Here are a couple fixes for vctrl-regulator. This driver is only used
> RK3399-based Chromebooks.
> 
> Patch one fixes a misuse of the regulator API, which was found while
> tracing the code to fix the lockdep warning.
> 
> Patch two fixes a lockdep warning and actual (not easy to reproduce)
> deadlock.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/2] regulator: vctrl: Use locked regulator_get_voltage in probe path
      commit: 98e47570ba985f2310586c80409238200fa3170f
[2/2] regulator: vctrl: Avoid lockdep warning in enable/disable ops
      commit: 21e39809fd7c4b8ff3662f23e0168e87594c8ca8

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
