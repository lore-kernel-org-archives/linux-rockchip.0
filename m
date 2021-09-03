Return-Path: <SRS0=3Vai=NZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593C1C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 18:05:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B06960F90
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 18:05:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1B06960F90
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvOCTmW6sW7908wRPH2GGo7IFnuLzPEQZGPgk2HBafM=; b=hXuGZU2RcNQG1Z
	vWRQB2yYmf8pU7kCdgbGTRdpjFlZQf7O32JEk3Zgv2AlRbdAfmFi4lt2K9mXDJC5GPRkyDX3UnotO
	jdGYEVXnwwBkMMhr5VBiDVRWJlcFKWHkGQzQK7RKfwiSioiGGEKeLO/rcQvOzREVIQUQ0WYkJy88W
	YxpM5LB38nfUjsrA20sNVY7B1mc00Ul/z9R9jbXK4Lqu+Gz/kF7O703BL7+4OrC7DziVVhTE5xtMP
	I28QC2wE5rDICRQCGlOk/230+cnoFInOORxt2U6SYidvNdYYzOV0Rra75ZOXyArOPBc/aClA+Pxt4
	Q6Gn9H7N/Ti2A3tLmooA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMDZ1-00CX4N-Cf; Fri, 03 Sep 2021 18:05:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMDYe-00CWzo-3W; Fri, 03 Sep 2021 18:04:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 54E91610A1;
 Fri,  3 Sep 2021 18:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630692295;
 bh=AYCTypw36ptHgabLcJlokFD5oklyEoCNON6TkiELR0c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lk9RGXY9AVswYmZWtt1rE1/CavCQsvnNbMv2JGR71HazCSpK4RiR0+haWbqts9/D1
 LO7x2ocAa8NFCqGVcy8WNXRs4q+vF4tB6DOzUhT7e1pPRKCnmdDhNo44WgYPyGowvA
 md5bT1JflLrXWSLUOBJ1vGD/21QUtrd7Cc2hKdet7pTvzhT7Hu87DBjaIgFOk9YKU+
 tslioRp3Kd/ws5LH/SvYxfcWmH2I5k6EMLDNz5YwHlVs0vn4bQelO8W5FKuKzCS/8j
 ki7168sdJs86xPhj/sWdICaLo7VSDwqupNWXrNknBvJawC3UnXqufthq4KV6HeY73X
 ybTNrX1qPjUZg==
From: Mark Brown <broonie@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>,
	heiko@sntech.de
Cc: Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org
Subject: Re: [PATCH v3] ASoC: rockchip: i2s: Fix concurrency between tx/rx
Date: Fri,  3 Sep 2021 19:04:19 +0100
Message-Id: <163069197835.35101.4150427867250097515.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1630674434-650-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1630674434-650-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210903_110456_204798_F4ABA5BB 
X-CRM114-Status: GOOD (  12.87  )
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

On Fri, 3 Sep 2021 21:07:14 +0800, Sugar Zhang wrote:
> This patch adds lock to fix comcurrency between tx/rx
> to fix 'rockchip-i2s ff070000.i2s; fail to clear'
> 
> Considering the situation;
> 
>        tx stream              rx stream
>            |                      |
>            |                   disable
>          enable                   |
>            |                    reset
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s: Fix concurrency between tx/rx
      commit: fcb958ee8e832e9cdf43408535207e15f14af755

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
