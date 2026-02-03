Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73C0EE87821
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Feb 2026 12:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LcIyqwXvObH5uYpEdxN8iHh43sTnK4K9AhQ8laXnDuo=; b=m+ie0aHL2FsRsI
	GeAp+2vy3Qwvf+gTSM6jaMeH2DuN5H7wuUMvpzKq5c30Hhuw8Z6Iqs7+xLoLYinbScewsEEf7U7CR
	HHoZTMOEH5wP8F1Hi+3YmeGhOMkbvVwj6z8vlJEy+FlWDrHeitY8FRKecbaFmbbzZKKRAbgB4WwBV
	mj50RdQCNjhIRXNiOnagqsKL6M/5h9neCOuKepW5RoWfNzW9XcbSidcP+05CYiFkQWWHgW3+6M67g
	YDiBoKy3OiEu7eRBwpVmK2nllUMXKGCEkhZDDkDj59puQI9XA7UWnp6Tp5StkbJNUnn+AqHG42hgU
	b/Pp+AAGnxKeVGckSMuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnF9r-00000006Zxc-0t7L;
	Tue, 03 Feb 2026 12:05:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnF9p-00000006ZxW-3Yfz
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Feb 2026 12:05:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E2A6C601E6;
	Tue,  3 Feb 2026 12:05:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E334C2BC87;
	Tue,  3 Feb 2026 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770120324;
	bh=kao7TbUlacMJNZsS+k0rXkPVIuTTFly/b1SFR9FwuYo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=icHe28pzwl5/c2wAhmSHrTWGl/6O+r2a/PRrs/NiuDYb4ozYspISsafQzO00aBqcl
	 ET24NflbQKZ9cZWBFZDL3MftVomlunmOmco0A7EeoVKxRJXDvM9TN9+LEyA1RXqnWW
	 Sd/03pefvaLjjnAduq15OlICl7kPb4sLDrsAxiVnFhy1hWp7JFyWwUweWsoixODTgg
	 QZPndtIe9r9nGuyuJ6Bc6qHNw/+owbRpfP/cKlc+9E2zHJ5XpB56ngQBSRFFbvbcrz
	 k4vdneIMOnzaZs8xP8h+B/W312xvgYzgVpQcaLmB7UWBUpVF5QNc+iHfo0L+fV9HCu
	 A5v3xiDYrJPxw==
From: Mark Brown <broonie@kernel.org>
To: linux-sound@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, wangweidong.a@awinic.com, tiwai@suse.com, 
 perex@perex.cz, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
 lgirdwood@gmail.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, 
 Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20260128174608.1498-1-macroalpha82@gmail.com>
References: <20260128174608.1498-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH V2 0/3] Anbernic RG-DS AW87391 Speaker Amps
Message-Id: <177012032197.85387.2083007353460643930.b4-ty@kernel.org>
Date: Tue, 03 Feb 2026 12:05:21 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-47773
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

On Wed, 28 Jan 2026 11:46:05 -0600, Chris Morgan wrote:
> Add support for the Anbernic RG-DS Speaker Amplifiers. The Anbernic
> RG-DS uses two AW87391 ICs at 0x58 and 0x5B on i2c2. However, the
> manufacturer did not provide a firmware file, only a sequence of
> register writes to each device to enable and disable them.
> 
> Add support for this *specific* configuration in the AW87390 driver.
> Since we are relying on a device specific sequence I am using a
> device specific compatible string. This driver does not currently
> support the aw87391 for any other device as I have none to test
> with valid firmware. Attempts to create firmware with the AwinicSCPv4
> have not been successful.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: dt-bindings: aw87390: Add Anbernic RG-DS Amplifier
      commit: c26d6cdade6c2a96049f24fac64a8e3734188703
[2/3] ASoC: codecs: aw87390: Add Anbernic RG-DS amp driver
      commit: a145cfd0ffe7bd7d61ce25839cec737c449b0d2c

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
