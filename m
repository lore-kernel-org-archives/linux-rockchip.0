Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D33CC67861
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 17:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8acZ7SI7G9henpWx9zmiKVDMvel2N29fuiGiLFsmO4=; b=eDPxBDlAih8Bww
	9SdqzD1gkolf4DmFOkmIryrFG3cDIyJFCCoQ16uddvzRX93IsPvHFA2vPRlPF9RHoZ7OsGdXeconn
	+ir6AHp5MHvhch35PU51WMOVbj7MTS1t9ohIuzVE2nyuc0JOHOyRSVoWlQiBq9NQw8m9DsaujYmub
	syI+cDF3Pl6QqbBbW8bpgtCuPP9Vo1UWFaplZ1nmSfDE+V9SzQ7/bjhEXqlsVVQ4zhV5MvCEN0uwt
	PdbDcTwpskd3vs079xLL03UupNdgCq4Xaf+gpB/+h6kD9G3z3YXWINrigMNLjoZPVHykuyBAAJGX9
	2wKFqzMOvrNEx83gQIdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruF2u-000000036ER-2RcJ;
	Tue, 09 Apr 2024 17:14:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruF2q-000000036D9-40UW
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Apr 2024 17:14:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E75FC618D8;
	Tue,  9 Apr 2024 17:14:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D516AC433F1;
	Tue,  9 Apr 2024 17:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712682843;
	bh=eLVIl7iYW4+J9rJxM3YqwKEmIf8e95ULiezgmaMUibw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SymclgfcWVlic2Xo9YSpojdep8sD9sMRPugZF6LFfE2883Nq40JAB53fA5/6hzp9Y
	 uWTNQ8wCXZ8Wc7nO0XqoofySluyiJSm127DmOuYYGQ/X3b+Z2CDD/pSu774EultFi7
	 O3q8k2JBQTFAsheXDuaaTMOhTGfKYzEEaGfsV4XUJkhwpQZ/tGlU3Tfhd9wjN/ndEh
	 NZejBTbED3PU42oWTX9BMCga6rgtgt2D5x03QiHuVp5AuETc/amP5vJGvlwCZMbyGi
	 kLOD3QP0qiGdedKTkw22UgqDEIq7AY4sOv8lu+MwlcC1sCGefo+zRqXFrlcrwrV1KW
	 53j+67mlzCoqA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-sound@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <6cdbaf4afcf4d2059b257f6cb3a8a61bf5e17688.1712676714.git.geert+renesas@glider.be>
References: <6cdbaf4afcf4d2059b257f6cb3a8a61bf5e17688.1712676714.git.geert+renesas@glider.be>
Subject: Re: [PATCH] ASoC: codecs: Rockchip on-SoC codecs should depend on
 ARCH_ROCKCHIP
Message-Id: <171268284155.51610.12348972415810451410.b4-ty@kernel.org>
Date: Tue, 09 Apr 2024 18:14:01 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_101405_150523_7BEEA9E2 
X-CRM114-Status: GOOD (  10.84  )
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

On Tue, 09 Apr 2024 17:34:56 +0200, Geert Uytterhoeven wrote:
> The various Rockchip embedded audio codecs are only present on Rockchip
> SoCs.  Hence add dependencies on ARCH_ROCKCHIP, to prevent asking the
> user about these drivers when configuring a kernel without Rockchip SoC
> support.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: codecs: Rockchip on-SoC codecs should depend on ARCH_ROCKCHIP
      commit: 9fd60615ad2835d8e0081fd2458721c8b994f28f

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
