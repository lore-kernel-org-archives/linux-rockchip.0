Return-Path: <SRS0=Zsw1=PI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C81FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 11:29:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D197A61354
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 11:29:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D197A61354
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IMwOr8b2RLf9U2X5GFjWTdVfIv6pCJ3SR6XqfC/Dyg=; b=SnIsyK2O9VHHIL
	rI+bgA4V34M6/NCOVsneFNBgdrT9+mvw2WIAp/NwICuvlZzgOklZ79FTULtAp8JykxDQ3sAZJrRmd
	Zuq+TzPO2/LY6qtzTL83YBMS4mTS6NOvocylh8VUIf1jdgJ7g7/8wUKCbWCuJ9u5M5BKimGaTlDxf
	3izFIk6Z8EWrCz7NkMdEqjeVIaSku462iOwlYXYswE+Jef3ONKjYqtWncvcdM3AfFaFCjtyP7XFg+
	38qL+limlaZLXkZi+a+SsqFkrXIKHGZ+aXiJCGUDI0VF19KdKkcwFiUeRUi9WYWcnopzbaZRsjTBf
	bxynMN78g0kWM1PJxBIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md9mV-004IYG-FP; Wed, 20 Oct 2021 11:29:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md9m8-004IRQ-8d; Wed, 20 Oct 2021 11:28:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 753266135E;
 Wed, 20 Oct 2021 11:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634729332;
 bh=wTQloiZs/BuLYX5Yg3LlKrHdopyQzbSJH5f/Y/+nJdU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n3eSBergbHy5zgvxaAoAveP9Bi9qIaMsR9UsAb7OpUkOA5hNNoSinHCgLxT3M6j3x
 isbmgUQZ9O0VU6enRGoJxUljlqlw0SjVggMHohwmveeRlkJ4ibOHJZQqQPLa60kFCZ
 u1S+2++oPJFnW3vNsj7KjThnXZgvH4HPP2thzFxgGXzSZm9X4Z5DgMKedL2D7YE7cy
 ZlCzUgzTlExFHjswmLq1BARGvnKnb7ktgC3HXLjqqOkS8UU75rDxmPdvcqDf9V6/+5
 poapQeOXKQu8/5K5oAiVBjjqw99M7cebid3jn3Dc3IPXh3FjZnU7J3Ff0Zl/SM4k4U
 JkqiFwVKKLXaQ==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org
Subject: Re: [PATCH] ASoC: rockchip: i2s-tdm: Fix refcount test
Date: Wed, 20 Oct 2021 12:28:37 +0100
Message-Id: <163472931363.2896549.8558505612147911310.b4-ty@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211015210730.308946-1-frattaroli.nicolas@gmail.com>
References: <20211015210730.308946-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_042852_347310_1B4B5E96 
X-CRM114-Status: GOOD (  13.95  )
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

On Fri, 15 Oct 2021 23:07:29 +0200, Nicolas Frattaroli wrote:
> During development of V5 of the i2s-tdm patch series, I replaced
> the atomic refcount with a regular integer, as it was only ever
> accessed within a spinlock.
> 
> Foolishly, I got the semantics of atomic_dec_and_test wrong, which
> resulted in a test for 0 actually becoming a test for >0.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s-tdm: Fix refcount test
      commit: 0ea15e98cfbe56147e227360282ccd311e824b61

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
