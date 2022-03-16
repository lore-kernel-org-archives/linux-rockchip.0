Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA72BC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Mar 2022 20:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnHmkHqyjc5wPDcJ8Y8dbyrRrsSHxmuzxr88O09ViUc=; b=2J2as/yxhskxVP
	1+xSs9W8Ha2GbfqFAkHyW+Y8x09srvdI7udSdfTkHFdNuisUQdGYmH7gVJIgHopCut5BhkZi+tDeL
	SpR4DGZ421DFWLKplqc5zcIkm9SDDg0uAwqfxnMaiF1sREDcctpxgnj/OZzj5Jo72Vo0oE9d6cW8Q
	bLHijZmoUtf7gaKwo0zVv13jt9o1aM+FuKXNWOHMgg69V4C1MLyK1MtHK460Vgzjs663gk/2UjeBd
	J0PpVLyP+2fc05TBWxlBalm7ZAybSQqe9pciNPs8r8TV+e9gnN/GqavF3252KyBx4c7951OSbluDo
	3xOuNctPewdMHIX/cxpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUaN0-00EFxu-9q; Wed, 16 Mar 2022 20:35:46 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUaMx-00EFx1-W8
 for linux-rockchip@lists.infradead.org; Wed, 16 Mar 2022 20:35:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 94714B81D41;
 Wed, 16 Mar 2022 20:35:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4EA0C340E9;
 Wed, 16 Mar 2022 20:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647462941;
 bh=SOkQF0ILuP37EZNlvNmOX0oyg1+0AQ9CCiujV4VUCt8=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=iyBwLL+sX+L53H8jVl4uZVBJge/13srwWAdP5xURwsT8z2otCX9/yRX683EluwQJC
 BnFApqjfhlaLDHMZ1qM0C/NjNv04uBssbsdgFY6VXc9XYmALcEi4byMxC6v1mY3uYT
 xQmRh1oB72ekU1B0Qx2bA5niCPjyUJ0Q33esNJ7GdTqNJt5+PR/vQcaUrshrCsaRjA
 SWe01bWKlEy/ZQGBUrj3dOOTN6bLo56GZSN7P0fk/pvNGK1XW5hc5D+02L8kWm6LJ+
 zhtB7Tx7i8V+4BavvZugV5Q/HIHrS0OIEPrk++z+4TUXp3iFOaqv7PM9HbDX5F5l3u
 4Bg/42BLq+JCQ==
From: Mark Brown <broonie@kernel.org>
To: tiwai@suse.com, perex@perex.cz, zhangqilong <zhangqilong3@huawei.com>,
 heiko@sntech.de, frattaroli.nicolas@gmail.com
Cc: linux-rockchip@lists.infradead.org, lgirdwood@gmail.com,
 alsa-devel@alsa-project.org
In-Reply-To: <20220315025415.2593762-1-zhangqilong3@huawei.com>
References: <20220315025415.2593762-1-zhangqilong3@huawei.com>
Subject: Re: [PATCH -next] ASoC: rockchip: Fix PM usage reference of
 rockchip_i2s_tdm_resume
Message-Id: <164746293938.1220201.12303481539192609575.b4-ty@kernel.org>
Date: Wed, 16 Mar 2022 20:35:39 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_133544_206246_2206CA5C 
X-CRM114-Status: GOOD (  11.58  )
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

On Tue, 15 Mar 2022 10:54:15 +0800, zhangqilong wrote:
> pm_runtime_get_sync will increment pm usage counter
> even it failed. Forgetting to putting operation will
> result in reference leak here. We fix it by replacing
> it with pm_runtime_resume_and_get to keep usage counter
> balanced.
> 
> Fixes:081068fd64140 ("ASoC: rockchip: add support for i2s-tdm controller")
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: Fix PM usage reference of rockchip_i2s_tdm_resume
      commit: cc5d8ac95663a5813c696008bc524b794d471215

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
