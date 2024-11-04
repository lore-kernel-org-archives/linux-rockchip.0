Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2985CD132CF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 14:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/qKMtSyAcLBGK6IPXB3CiDjyca7d8jYmiLIS7sEG+g=; b=afCNrGgG0BKBch
	K5G0vtveaddwOG5QZnqvUWFx3kgST6vHMctgx0SwB6Gd2G/rQKaGXgRSfLSYdZ3vlfR+n1EyJA4bx
	GD/xyw6MwnuNw2bkVI6NVZVJz+GMwVN4C6Tq6oKOLr+b2Y/zUgAfAEhwjrHoQvTJ6F5W7zgrGlIdu
	RDCfdAMB6q2j4RUtHGnzkvJm+j3YRhJxcubC5L87i8YlMs84h4nEWNcAAzB0ZMHvbGxz4OZmpp91/
	TehXFbLpy2qtL3ZJD7cwPjr7lyRER7TlYsKM0PF6SNStn6eMNEJ6Wux/A9kQMmjNLdzGx9CTkNAGD
	qA9EWFl51D85avKldBSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7yAH-0000000E41T-29NS;
	Mon, 04 Nov 2024 14:34:45 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7xjJ-0000000DzJ0-3rE9
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 14:06:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6BA91A42DF1;
	Mon,  4 Nov 2024 14:04:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 718DBC4CECE;
	Mon,  4 Nov 2024 14:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730729212;
	bh=w9ObZxa/UU2kAEex0iae7ZbNOjcPWAbRIhO5NeNfrN4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lUdAyh74qs6d0rpFI85MWbyaQG3HFP3qDyaGjbYnU3ERCqoSt+xaklrQ8hNpKWwS3
	 lLuvOkhb/Rkr50RhQ+Q+wfESPpRLKL7yY2MAxj/MJnT+lSSUb9E7kj29bk86zLJ6oy
	 NTdbG8U0fnEIJEmuppdp43PqAK2ZCA+e5mGtNZ99u1akMD/eL44ZhKFzBu672H6tU7
	 HZMTZ/We0zza6iWl04mBoTpplLajsNtCLrmFGHKmJJcOr0lDK4Z+guuBOa7XNvAada
	 UXlPbJ/d4nsW6NjXXGcrf3UUJd7ewnb6XNQvRkyQXMQcRWrglrlZg+Olzfm6NrwBJS
	 r+7SKH8Yj5UZA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20241017-rk809-dcdc3-v1-1-e3c3de92f39c@gmail.com>
References: <20241017-rk809-dcdc3-v1-1-e3c3de92f39c@gmail.com>
Subject: Re: [PATCH] regulator: rk808: Add apply_bit for BUCK3 on RK809
Message-Id: <173072921119.32252.6219604204402845231.b4-ty@kernel.org>
Date: Mon, 04 Nov 2024 14:06:51 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-9b746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_060654_058879_5B8B9D9E 
X-CRM114-Status: GOOD (  13.76  )
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

On Thu, 17 Oct 2024 21:37:28 +0300, Mikhail Rudenko wrote:
> Currently, RK809's BUCK3 regulator is modelled in the driver as a
> configurable regulator with 0.5-2.4V voltage range. But the voltage
> setting is not actually applied, because when bit 6 of
> PMIC_POWER_CONFIG register is set to 0 (default), BUCK3 output voltage
> is determined by the external feedback resistor. Fix this, by setting
> bit 6 when voltage selection is set. Existing users which do not
> specify voltage constraints in their device trees will not be affected
> by this change, since no voltage setting is applied in those cases,
> and bit 6 is not enabled.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] regulator: rk808: Add apply_bit for BUCK3 on RK809
      commit: 5e53e4a66bc7430dd2d11c18a86410e3a38d2940

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
