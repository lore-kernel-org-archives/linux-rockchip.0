Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E67FCCD1B9
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 18:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfawAT2t5j4yhO9h64cIpUV+xwpYf38vfMC06ITADGg=; b=VLjL2WRNuOWHDI
	XGdlVc5ZeKIiITf2Mk6WingVxoURWmSqXRpw+DQUj23aYSKu3WcVS+Q83QuKDRnI9yPTbA/L6jjdX
	yN7je2+CvQcRxMGdq3prCuZoUdtl3GZLKSgcwwAnI41yibjYD2jFSwTIAcW4eSGQYSfZUJlHcVT0a
	iL/flhaSKj6dT0HB+WHwT6YF4m/vIx5RuJ73pNGp5l5LY8mSlzBVO0pCIZI5s3Sd54FC5uwP7fkdv
	a2oXFHWGwxag9WBWv5PrYvcEdKgh/ZOa8ek7DsAOBHKeFqaadwNKM9dQo3P3LZC/OuJ+HlUj7Lton
	ZsxAOeJ9kUTsB2Rjz74w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBHSz-00000000Odc-0IdL;
	Tue, 21 Oct 2025 18:52:17 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBHSx-00000000Ocg-0xrp;
	Tue, 21 Oct 2025 18:52:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9CDE06210E;
	Tue, 21 Oct 2025 18:52:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1574C4CEF1;
	Tue, 21 Oct 2025 18:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761072734;
	bh=jTJGo1a5Vybzx2bfQmxlWwpD2oIUSFEBoWaTwwHmxsI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Tfzj5ljGWUHoeehh4LAev6SfHTfBfPTH2HrIPoTSAX7kotdFk94Kehfmox0a8gNYu
	 cfLNIDo58gatBuNcR+cUtFMXuLTQD5MzvYPW/69K2z/c2Dhty+XbaCDEv7P2XMzqq9
	 GNCvdLJU95APeWnRnmxN2XIpNt7OYyuNJ4nSEaFyW0vrD3HaKoQ6hxpqhHxwmHeUbT
	 CTvB97sItty4efTg3GTGNpJhwGwmzGhIQOx+e6Xe/lTEpRz8LpV/xL7/e2jXMjEV5w
	 4hLPT5ylExWfokI8G2XUnYmPYZiTHc+WpnoKFE9bCTHgNEyKnWFJJEPykAsyA65uGR
	 2Tl1nYSTYfmuw==
From: Mark Brown <broonie@kernel.org>
To: linux-sound@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Jaroslav Kysela <perex@perex.cz>, Liam Girdwood <lgirdwood@gmail.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Takashi Iwai <tiwai@suse.com>, Colin Ian King <colin.i.king@gmail.com>, 
 Markus Elfring <Markus.Elfring@web.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Anand Moon <linux.amoon@gmail.com>, 
 Christophe Jaillet <christophe.jaillet@wanadoo.fr>, 
 Colin Ian King <colin.i.king@gmail.com>
In-Reply-To: <115fba03-e8ba-4bc1-84d8-7d483c06208c@web.de>
References: <115fba03-e8ba-4bc1-84d8-7d483c06208c@web.de>
Subject: Re: [PATCH] ASoC: rockchip: i2s-tdm: Omit a variable reassignment
 in rockchip_i2s_tdm_probe()
Message-Id: <176107273158.196841.8935507815109050831.b4-ty@kernel.org>
Date: Tue, 21 Oct 2025 19:52:11 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-2a268
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

On Mon, 20 Oct 2025 18:23:27 +0200, Markus Elfring wrote:
> An error code was assigned to a variable and checked accordingly.
> This value was passed to a dev_err_probe() call in an if branch.
> This function is documented in the way that the same value is returned.
> Thus delete a redundant variable reassignment.
> 
> The source code was transformed by using the Coccinelle software.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s-tdm: Omit a variable reassignment in rockchip_i2s_tdm_probe()
      commit: 900da53226121c1e710ca95857806a136ab281a2

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
