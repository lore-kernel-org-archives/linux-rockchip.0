Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B41E7CA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luu+SkR/Ke761zFZ8lQRg8PnE8hqnol/GuL3Tja9Qu0=; b=UD1FzYeii5xdyH
	b2RUFstNFYrcU3iWbSVE4QEOXuXG3QGSXaRNLRaIedBZ++yWs7Dp2szTWalG/Rf0igvl2mz7wrTLG
	gT6Q1uM00qAAMED9R9YYyyXFluCsQNuu2SldKsx/56awV+DrwZyIutxibHoMG7WPXb8QSdtXwnTfe
	nmnF4EQ6CsqJfSzoormAZXvOoyUYSqL+NOTmO+pKNrxdhRIJbmofqvIcUZkUVw3CdDFLN/A1X2MLK
	0jhGZOjhfSkM0XVY6gwBtHNyzbbs0V0/1qcnWTuf6PRY3jNqiBZQP6djgVCbNKy43+fupn+NkhR1z
	ADqG7TC/UvKTnSZy/EjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiOt-00000003j6F-1vPK;
	Thu, 08 Oct 2026 07:18:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiOs-00000003j5w-13it;
	Thu, 08 Oct 2026 07:18:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9A38360252;
	Thu,  8 Oct 2026 07:18:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D248C1F000FF;
	Thu,  8 Oct 2026 07:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791443925;
	bh=bIWEluHy4olmpdCKhHecoCjRfu/n7+ylkyhpZgJoDQY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=YhNZ3kZYbA2kvqgVMOMv1chucJFUmlxb6iMyG/JWhON8FRL30yewBlVwIse4ouIOP
	 6Lt9Yk8AeEZSdwsiSgZcBvbge+5Acgn9YMzhJXkxGxtI6UQMU2+P90beYGkXAfeyMD
	 oZuRtxQGMSdCX+ny7/7pM92hPtB5PIwnUnMnJFKRJ434oSt/99MzPUQvzQWLDjeojF
	 sUfVokpjAqJs9jUYhK+wYGNKe3+7Gu+izo3P2Xg/5HIoM4Y8c+6RN/wxwP5Zus9olb
	 wdmY3D8+CarQ7pQqHp+XuD/nOC8mUgNk/DbCnZq+w2z9Rvo/amruLJ2ZZSvAZ3pBJs
	 vsKzgNGPFBJqA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 phucduc.bui@gmail.com
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>, linux-sound@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20260903112739.373621-1-phucduc.bui@gmail.com>
References: <20260903112739.373621-1-phucduc.bui@gmail.com>
Subject: Re: [PATCH 1/2] ASoC: rockchip: rockchip_sai: Handle runtime PM
 resume failures in set_fmt
Message-Id: <179137153110.2423942.4793821974137109884.b4-ty@b4>
Date: Wed, 07 Oct 2026 13:12:11 +0200
MIME-Version: 1.0
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1316; i=broonie@kernel.org;
 h=from:subject:message-id; bh=jkEvlhNrGy4+zr/Kw7j1aPz+pb88B7Nghlwg5R4mxEw=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqx0PQHvrXauKfqKrTsbBnSOe4rrtmP4OQWk+1H
 oVnsF8TNgOJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCasdD0AAKCRAk1otyXVSH
 0GeNB/oDhu8wDi9UdXa53rTKeQkmHe1JGb4K1econGzifJVtnAH+WpdnOAHqNocd973sKbYrYJK
 b6aH18ARbId20iOkmNImVSYBMOXDJSc0sxRM4gzN0FqrIEDXs/7kULaF4e1xMSl0tEk4SSQ/GTH
 fgf//KIHHsHB90pm/nqN3ZOC5tq+o5o8Gde+ATJ3jH9DL49ldBE4cxvOh2FjqgRuzf7Kyz3Bx43
 ZPiriQ1KqDKBqp9HhSMI5bzVXcyjEUdTTgUbIyXNYJlKrsBYMlgrL0c7MnFjdSiCw08qAfuslU0
 +5X7q8X0N3jGNPZUVFh1CtWaePdr8Xr5X+sf06c6USIVyuPv
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
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

On Thu, 03 Sep 2026 18:27:38 +0700, phucduc.bui@gmail.com wrote:
> ASoC: rockchip: rockchip_sai: Handle runtime PM resume failures in set_fmt

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.4

Thanks!

[1/2] ASoC: rockchip: rockchip_sai: Handle runtime PM resume failures in set_fmt
      https://git.kernel.org/broonie/sound/c/39205bb7ed4f
[2/2] ASoC: rockchip: rockchip_i2s: Handle runtime PM resume failures in set_fmt
      https://git.kernel.org/broonie/sound/c/e9eb1854d161

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
