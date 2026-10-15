Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5445CC6B38
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 00:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEM28RcJs55XHrnho/I677Toq8p0JG1rxIthZKq5sFY=; b=OV6h8iPzuGMVXZ
	cOnVYCdFtEaZ+9+YbjLDdDmh/oAdMFPWVjLGtWs5lJEzjdEYOs3fn0I/3iufN/ZqzZBFRlU/h+eR7
	P6jOoiAlKTBmdASpNCECNmlCisy2tE4oBNvxrIhHCpKaEKfrkbHjgm7EY7bneklIj8+GqeHxdSTZN
	cp4OhMoxMJEykPXMhSG1IA25iBomnbbNaCQRNjAjPlKv1vPjFYt9FHaEeFaDzU4Rf7xfOSL7Ze5Uj
	jsBidEYmviBqEpmF7/L04hZcsflrybpwpAHerlK/PeQyUnedovk0/rFIwYNvpzeoEaysVdPVLo1kv
	LBRemi16PlG6L8lWEuIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHWHw-00000001eUZ-2wN8;
	Fri, 16 Oct 2026 00:59:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHWHu-00000001eTd-43sv;
	Fri, 16 Oct 2026 00:59:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 99A8B434C3;
	Fri, 16 Oct 2026 00:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 912C91F000C4;
	Fri, 16 Oct 2026 00:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792112349;
	bh=eItMnpJmHUYZohjA01qEtQ+vtbYcQn+72+14Xb+rD9k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Iim7+GSz/8nbintBCANlpj3K6xBgsU6QMWt16WkVYJ/huzCyhXSfoWlf9MxTnmt8L
	 JFQGUtHiX8QYwIL6AAm8v9w4klmRp7Zo6nj9Iv8B13Yyt7K/BuivaggoQmGtVjE3if
	 4JY2Gut84cu0btfKX0SCi8uXdAT0VcLWYvW5X9YdSYZkHdcxXgPcdhRXLUHH/gpCFv
	 J8VRspBpou7i8w5ng7N1zoI65vAvv4PyrkT/W7yjnVvLlO7AHtbtxEQ1ZLPrYGAurF
	 spFg9ihtGzW5zaivF2IGtY8XQ5ROxUxaVAnKNb//AfAyvu7vGXf9ToVnv5nwI/9qTW
	 JUyXuqDsjqtsg==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 Romain Perier <romain.perier@collabora.com>, 
 Haotian Zhang <vulab@iscas.ac.cn>
Cc: linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261008181459.2762862-1-vulab@iscas.ac.cn>
References: <20261008181459.2762862-1-vulab@iscas.ac.cn>
Subject: Re: [PATCH] ASoC: rockchip: fix device node reference leak in
 rk3288_hdmi_analog
Message-Id: <179210073217.134795.4749610519691581859.b4-ty@b4>
Date: Thu, 15 Oct 2026 22:45:32 +0100
MIME-Version: 1.0
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1155; i=broonie@kernel.org;
 h=from:subject:message-id; bh=Rf7Yt4Ju4mTE1WETnV6s1Vut9DdADKeEVXLimZehUSk=;
 b=owGbwMvMwCWm/754w+YLFp2Mp9WSGLIult3kvp5RvEg96c+Jpcwzn9edmiwy48a/56v5J228n
 79gg/Gu6x2lLAxiXAyyYooscVncL+tLXq/hO7iwDWYOKxPIEAYuTgGYyMEEhr9iZyXjLqdszOJy
 /B48z0jUg3NHwDwtT8tXcmwi21TCNLsZGW7anehfHZZi02/27O3lxTZHGNfvsXe3vPrWP/fgVyd
 fFWYA
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

On Fri, 09 Oct 2026 02:14:59 +0800, Haotian Zhang wrote:
> ASoC: rockchip: fix device node reference leak in rk3288_hdmi_analog

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.4

Thanks!

[1/1] ASoC: rockchip: fix device node reference leak in rk3288_hdmi_analog
      https://git.kernel.org/broonie/sound/c/f15b2df0b940

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
