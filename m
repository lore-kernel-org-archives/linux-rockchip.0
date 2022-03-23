Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 176A4C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Mar 2022 22:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAhZrZVOHD8e9L9Ij3Tx/jiCkbc//kU+8VaBFZ01sw4=; b=4Lc9hO/9XttaS6
	ldrPkX0gUC03CtXUoK+JPo9kh/nKGyU7v967rXvLIV9kUbWkyHhsSFzYW0VcRFpuihdtq/alyjoji
	PTlgPLbOyvvArAuyH+U6T36IhSyWVTuuU6oUegm2y48n85DLJ1TloHaBD0Kp9RkJsEf5JHcIlPQ1u
	v8qcb4QjprgB4L63hwnTkuqcMoGjoQl6zg2BJOxOIGP8kvjGorX1a64JvLxAk1hKoevUxHXRDFfW5
	oONIeIRyEHiGdx6hNdrZT0vI5iI2d4y0zuqGyDUEPvl+pXRVS3cbhXXvFBcq7Bw+HGF7n8Ipwzgiq
	y54cvZTgzbJh8dCyaHAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nX9ev-00EyM4-IH; Wed, 23 Mar 2022 22:40:53 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX9ek-00EyKQ-Cf; Wed, 23 Mar 2022 22:40:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0704CB82127;
 Wed, 23 Mar 2022 22:40:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D52BAC340E8;
 Wed, 23 Mar 2022 22:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648075239;
 bh=RbOdPqbhxGrwIjd5F9+NTMrXJ8ByftUFEWoffmPPe54=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=EOP5UqAOrS8EbGf7HZzC3CQdKfQQOK6kppJo+ofuy2SHB4wOm0QPn8u6wHopxj6I7
 45dcN0ApTMvaur3P5Xx04dcBLIQSMdUZueDYBINsR/o+FFtb1qfgqvHEkpAVB3WBu6
 70g3nsxYd++mF0Xa4ModnnS5XXFrVPZtDz9Q504MYr/Emm+zcU9pt5bGeB/eNPXtOA
 iWvNL1lq672QhFYNHzeGBeSQYjmmA8MDS/gR1nfuIiMnW50Og4ykN23dIzOpH2K9r9
 wZ+Wk9TcaOitC4US1UnGlHvXwd6PU6DYtsuyYhHPS8aKlRrpbAPzmeUwR0Tp2CPUEn
 uQYTsRDgBxXMg==
From: Mark Brown <broonie@kernel.org>
To: frattaroli.nicolas@gmail.com, tiwai@suse.com, perex@perex.cz,
 lgirdwood@gmail.com, Meng Tang <tangmeng@uniontech.com>, heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20220318100146.23991-1-tangmeng@uniontech.com>
References: <20220318100146.23991-1-tangmeng@uniontech.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s_tdm: Fixup config for
 SND_SOC_DAIFMT_DSP_A/B
Message-Id: <164807523757.1203347.1168659607344775709.b4-ty@kernel.org>
Date: Wed, 23 Mar 2022 22:40:37 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220323_154042_624599_4827E2F0 
X-CRM114-Status: GOOD (  11.74  )
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

On Fri, 18 Mar 2022 18:01:46 +0800, Meng Tang wrote:
> SND_SOC_DAIFMT_DSP_A: PCM delay 1 bit mode, L data MSB after FRM LRC
> SND_SOC_DAIFMT_DSP_B: PCM no delay mode, L data MSB during FRM LRC
> 
> Fixes: 081068fd64140 (ASoC: rockchip: add support for i2s-tdm controller)
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-linus

Thanks!

[1/1] ASoC: rockchip: i2s_tdm: Fixup config for SND_SOC_DAIFMT_DSP_A/B
      commit: 2f45a4e2897793cc6ae25f5fe78b485ce7fd01d0

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
