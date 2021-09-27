Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3613C43219
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 17:47:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 801A56101A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 17:47:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 801A56101A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFmh9HmtYW0846447DGzILJBBOwtUOdBcc0RlOrXaBs=; b=JxoDn0H6drVM6M
	COoFwRiVq2rfFVpR82sAYJoMsWXayyZVQIEbu3WCoWyA5rX9mGgnJxcMy1EcYfRPNNwokPUAz/lEf
	M5csbz3su2GbXRj1QT049O4nbmuhwZwf2SJb+Davg/yu8EpgamSnidmbnOCV4E9QLBqx7JwxzhXkz
	POl31Rm1ZT+KdsxYiYIWxA/R9XpMfqzqcW2uMEtFiOzOj7VQv5NPeGILJxxav1tdWSklWDsupIhuO
	NIEuBx/lX2XKnVIRkMl+tDRKYSjP39RULYrzp6NC40sXl2hF5IUP/Th4FB+AbIHLIBTja1QnSFkKM
	zgtwR1KqHtdjhaOk1nww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUuj1-003fYs-Kg; Mon, 27 Sep 2021 17:47:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUuiy-003fWp-4K
 for linux-rockchip@lists.infradead.org; Mon, 27 Sep 2021 17:47:33 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4C3A260FF2;
 Mon, 27 Sep 2021 17:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632764851;
 bh=S9lPj7S6AtX8lgkNXK2TH/P606+dWXlaJ6v6Z9fSAFY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kYIzxkh3O1AON1PzqSy8BJwjZnoSXGhgyw8GrBDEmRvWBDMc8xx20gGFKic0wswfF
 K60u/4taBh4ZXRWKkUdOBWZsrDctzoXXB/ba6ra3N/NvifCxxqnGVN686hXvo1puId
 hwVMrV8vqUChDExnBkep9C8L8X0+Tqob1KDwPEZi759xHZduHQGVPBSf+EzKVhZXUv
 ACV5KUdzNfpzxZtY1NEy37N0PGQQO4SFqHhPMzNIaOHRp0f1AqIkadSsiuRs36Zrqk
 UfwQyVKDqhkjoCqQkl6AX+JWRgHYRgytWpQWUvTdoM83+aSWRD7LVcu5Q4/uCJFTqJ
 pT/kNYGhhuljg==
From: Mark Brown <broonie@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>,
	heiko@sntech.de
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 alsa-devel@alsa-project.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Takashi Iwai <tiwai@suse.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-rockchip@lists.infradead.org, Jaroslav Kysela <perex@perex.cz>
Subject: Re: [PATCH] ASoC: dmaengine: Introduce module option
 prealloc_buffer_size_kbytes
Date: Mon, 27 Sep 2021 18:45:34 +0100
Message-Id: <163276442023.18200.4927438084255861267.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1632394246-59341-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1632394246-59341-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_104732_221329_F3C0BF5B 
X-CRM114-Status: GOOD (  12.13  )
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

On Thu, 23 Sep 2021 18:50:46 +0800, Sugar Zhang wrote:
> Currently, The fixed 512KB prealloc buffer size is too larger for
> tiny memory kernel (such as 16MB memory). This patch adds the module
> option "prealloc_buffer_size_kbytes" to specify prealloc buffer size.
> 
> It's suitable for cards which use the generic dmaengine pcm driver
> with no config.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dmaengine: Introduce module option prealloc_buffer_size_kbytes
      commit: b0e3b0a7078d71455747025e7deee766d4d43432

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
