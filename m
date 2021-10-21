Return-Path: <SRS0=g3xy=PJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08601C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Oct 2021 13:43:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CEB41610EA
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Oct 2021 13:43:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CEB41610EA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PeURA25UkRiYElDm1cP03ludlHe7+z40iZjCBnUMgKQ=; b=4c2WTrM/sfiBol
	yUc5eUjU5+r7p74KKnkXjR3tWvqVRpRR5rjoTsApdzljxtJqmRhdoOF1hAxs4gEnjMm6xbz4JfOFV
	wO1eiodD7SpH1xSNjbQw/IoDkqP+Qsi81Wg2lI1wcHqo9F7eY2RdL0QEJ2aNoar9d/H05lbXepVHm
	mYMelDc8z2SEgLuL0ww3+YOMgAzUQ8W5QIR4al+6zcx0mHD3a89yyeXags25XVfJQZ+pkTusMfco5
	AszbeM8U7nb10D+i9j8I4tyCHOm6ANNLnp3+mhR5IKRQISVCJnGiQxpJ/ifbNVORBICFu50/CHUl9
	OOdugvl7v+YEUTNWgAnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdYLl-007gBC-Uq; Thu, 21 Oct 2021 13:43:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdYLZ-007g9U-ET; Thu, 21 Oct 2021 13:43:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B3D96112D;
 Thu, 21 Oct 2021 13:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634823783;
 bh=M4F6Y2fqa1ub/BkynSNuVBd769HCJAtvmYbRbnkScfs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i/19NMdZz/wsZwLgxnIDyM7mqX3zHWSn/Ah1Dff7zME8n0ZiyyAKEeLREFSIogMBk
 M/z9g7jN81wDuYuPWUU9kDpQR/AFIDKKU9/Ro0SYqxY1EOs1/PjwuR7FVEZjbvFqSA
 MVxxo2Umg2YuVlpi5AUt1zsTT46zFNhFx8/fzveT28ZzU6GmG4ItxN8rqFSeMsiaSg
 nRO+Tjf8+Ev2DZDSvXZKMVT3xArcid4+f0M2QLCcD/1AC2IQ/Gs9f92irKkavSj3SB
 8hH+BLkxYihs8bZPYvHu+BoABwofxabldFXjS1cfkF0JZRirUoqRuA7Hm9P1vjP8Kr
 454YRBABYg7Pw==
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de,
	Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>,
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] Revert "ASoC: rockchip: add config for rockchip dmaengine
 pcm register"
Date: Thu, 21 Oct 2021 14:42:58 +0100
Message-Id: <163482376624.1547375.15550615168301470105.b4-ty@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <1632792957-80428-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1632792957-80428-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_064305_527459_F0CB57C5 
X-CRM114-Status: GOOD (  12.85  )
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

On Tue, 28 Sep 2021 09:35:57 +0800, Sugar Zhang wrote:
> This reverts commit 75b31192fe6ad20b42276b20ee3bdf1493216d63.
> 
> The original purpose of customized pcm was to config prealloc buffer size
> flexibly. but, we can do the same thing by soc-generic-dmaengine-pcm.
> 
> And the generic one can generated the better config by querying DMA
> capabilities from dmaengine driver rather than the Hard-Coded one.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] Revert "ASoC: rockchip: add config for rockchip dmaengine pcm register"
      commit: 5ba8ecf2272d34de9cd2271a0ac12f5f615ef7aa

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
