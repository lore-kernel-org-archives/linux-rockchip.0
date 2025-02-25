Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C281C021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 16:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ltx0FV7zVojsnMbfQ0L5e1SyD78hlBUTNtTpGcob+E=; b=IOiJTrqYaO+9Am
	MeO7ZqJOroCwHQ3tLZrHkn2zxs7Ka2XhbsaJBxri+gp43+h80hu+WNkeGmeyJqv50MyT/52OAb0wn
	CYVf60hzwvv3X6F999u0lAtxh26O2y/abTGzzbTcT4eikLb7qOPlQHRCMb5uBiDdJe7yIGOEDjkAj
	J0+xIssC2IyrLBtEZsQWrV7CAC2F+ZYEMmW/OKHcpRozSru8x9OovfLrFvP4QILXTFWJUeynPPQN3
	MOheh4qmPn1XtU6Q9nO2i+DZc1PiVqqiyTDJxpk8SJU6o5NO/ulF/yvN5Kf0bv9lpa4Kn05iCuRRu
	csMJwgAzRu5Tyy3vrzpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmy0h-00000000L66-0uFe;
	Tue, 25 Feb 2025 16:42:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmwCY-0000000HZgj-0Q7q
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 14:46:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B28286126B;
	Tue, 25 Feb 2025 14:46:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8A07C4CEDD;
	Tue, 25 Feb 2025 14:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740494785;
	bh=6ZThMx3yk5s32UwJseFaT+0LfZxbEk9CwJs9at/sz4o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JBngrPUB7/i1+yjFpBp9I9OvqFFITb4P6hFYqyz+5W3iuG/l83/RgnZFIQroM4OrC
	 YaKdAQ8NMAL01KLJKlB93BVlGXMIFs8RiE8uxS2iJ01lILFP3WCMwnnqRRf+MGqxWt
	 0U8nRcEY0hNM5MIuxYghPIraxG6uFjF0jL/2VkW7PDXgCwsFxE7JbqEGL+FqUfQvMT
	 o7z0blAKwjG+kEN08spkJTBd6roI64NzBumphKDGBkvIHn1Gjl2vVFE6svS3q915xH
	 HPftpzYJtBQoSTGGYNnGKtq8R8lwuM3m/VH7vyxidZOLNRhW8/r9UfTjBOwNdjeRFu
	 pg6bRqLdMN6+A==
From: Mark Brown <broonie@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 =?utf-8?q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>, 
 Peter Geis <pgwipeout@gmail.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Vignesh Raman <vignesh.raman@collabora.com>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
References: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
Subject: Re: (subset) [PATCH v6 0/8] Fix RK3588 power domain problems
Message-Id: <174049478169.62098.16182863254035343977.b4-ty@kernel.org>
Date: Tue, 25 Feb 2025 14:46:21 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-1b0d6
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

On Thu, 20 Feb 2025 19:58:03 +0100, Sebastian Reichel wrote:
> I got a report, that the Linux kernel crashes on Rock 5B when the panthor
> driver is loaded late after booting. The crash starts with the following
> shortened error print:
> 
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
> SError Interrupt on CPU4, code 0x00000000be000411 -- SError
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/8] regulator: Add (devm_)of_regulator_get()
      commit: 0dffacbbf8d044456d50c893adb9499775c489f4

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
