Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E02606A333
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 13:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZV8ezIG8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=fxiNL9Lp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BLBAQCFUrfqWQ4pvz89O2Rn79q5Oi8M5lHGRZqabB1Q=; b=ZV8ezIG8vsBYmxVvNSfNNsFZ0x
	GZ4Eu8tIiWIr3yIDuwUY/mTWyobYi8qq97SazFAeHFgujiK2iKhBIX40eaejUWsDltILICiCiFp52
	ijpNGOj+mo1lupOTqtCKa5Qzjcn6Sc9uJ+6ZZHxcAPanuOdVU1OdxJQtYoQ84jj1YjiI1u5u8kz2d
	k78MbKLqVEreldMDzQo1h2sdFc4arJt2c/OZJaFKC35/IcyHZsg5Lpp24NDnKnuaXNCzSrVhvZA0n
	xyuC/5okkDvhka365yXK51vD/31pFnoxUMwgPwePrzjIjM/CUZbL4R1La3QiDNfJ8I/hxL3jcSKa0
	9Qj09VMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2UM-0000000C7QT-22jV;
	Thu, 19 Nov 2026 13:47:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2UK-0000000C7Pq-3UEX;
	Thu, 19 Nov 2026 13:47:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 75970447DB;
	Thu, 19 Nov 2026 13:47:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 777121F000CE;
	Thu, 19 Nov 2026 13:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795096064;
	bh=KuaSAeiK1uYc9mpnxRzjNwjlesbXX8iHWkaUCVjsGak=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=fxiNL9LpJJ6gDgpGY/AkTrXCh7kosYEAygK/24M5EmuNJmXLYWba99HJTbEK8ynZN
	 i9ZifhVphYs9mEBgR0++c+OgXf3lUxE951dOUq3SARzHbO0CMDtopRZpeFbqPwgUr/
	 k7Omqwag/IQERKZ6zD8SnRW8cUqbqibT6DQ64Ovs1GmpKaVJ6kjLozjWvVvfTMqR30
	 AOccgxrC88YkndN8pvBlxNQbLfbTm0Xe0z3zi1KLmZ0tHCH4CUdL0yV9182WrW9yab
	 SCOJIqOXjRdQFlK2j7kGzbGxGDD+fbI5JFtGo+7I6pMRQFcQDn+jT8EDG/g8CbIfBV
	 awmVfxzr6Lnzw==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Tim Surber <me@timsurber.de>
Cc: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>, linux-sound@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261111215125.3560398-1-me@timsurber.de>
References: <20261111215125.3560398-1-me@timsurber.de>
Subject: Re: [PATCH] ASoC: rockchip: i2s-tdm: Don't reset a pending clear
 in consumer mode
Message-Id: <179502607252.810609.158294566774714648.b4-ty@b4>
Date: Wed, 18 Nov 2026 18:21:12 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1154; i=broonie@kernel.org;
 h=from:subject:message-id; bh=fimSRl/EIz2UKRbOsZbukLYqOThFn2yXzoZlHkw7lcM=;
 b=owGbwMvMwCWm/754w+YLFp2Mp9WSGLL+/f2TeLZgDku6vnoq28pPRh9qbq64+fhW6fbm/yJnb
 /32mfu6vKOUhUGMi0FWTJElLov7ZX3J6zV8Bxe2wcxhZQIZwsDFKQAT+cDByPD+qcfT6IMb3GqZ
 7i86rcnrbZrqqLBYa+NRsR2//4UtWHyd4Z/umpmsXDJ1vveVtqQGCb7h/+qmlerAdFA12qJ1m79
 BDDMA
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,DATE_IN_PAST_12_24,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, 11 Nov 2026 22:51:20 +0100, Tim Surber wrote:
> ASoC: rockchip: i2s-tdm: Don't reset a pending clear in consumer mode

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.4

Thanks!

[1/1] ASoC: rockchip: i2s-tdm: Don't reset a pending clear in consumer mode
      https://git.kernel.org/broonie/sound/c/6a4f9e7cf13e

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
