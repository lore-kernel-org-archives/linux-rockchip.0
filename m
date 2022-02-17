Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD1DAC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 16:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uadoM+el3mmMPz7zkdA5Sq3b6gxA8DAPpcvRN2InQP0=; b=Xs2AHppxbjVhbB
	1AyXVbUHdZaFJQ30zHr46dox52BoYCYOeZg41+PZGcy5maz2lMjp9PeRswcbRHx6URiQa/l4h1gQz
	lodPrdY19+3QSmTC79RfXG1gv+8BFAVSErBar27FsvMyAH2VA7jbK1BaBL2P9GZO88fGebXZFjqNV
	7TCf4MmvozaKNhRskAzBjIdZiErZ+CRdJ/nk4kNEKnlH5guy9urPjvFuQywW2deZjc8Iu2/neI1wi
	tYi4hRys3YKob0bYDk2bchBZ/Tf44zhQ40SEJyAc8BkFiStHbbAL0Xmk2w2fTfPj0sYbN32pYBqzw
	22eG5OJDh+tnXcNYy7rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKjYd-00BQ9q-Ru; Thu, 17 Feb 2022 16:23:03 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKjYQ-00BQ5e-IB; Thu, 17 Feb 2022 16:22:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3EACBB82362;
 Thu, 17 Feb 2022 16:22:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CD63C340E8;
 Thu, 17 Feb 2022 16:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645114967;
 bh=WdbxnQytOJyFGKv/5Vdo8JVuxQQcHwb/2yJR9P+3OUU=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=MQGFC60n2jBDWLwIZ3rq3bUFlfWZHDDeM04QnUnmEq3EZy4AT4bVB2yAK8tINWZRX
 5yyZoymrJIp3YKQIsYEadHe5ug8dYbReYeKcU04c5fHo9pRqp1ul+pAyVO+T7DRdVH
 ocSIHsTV7PXwKPdkbG3FoLs+aTqhwNvaPXJz/pjypPjkQsLPvVWd98OH127aCNzx7F
 HoCuKqJnea7b39bJMd34xDSFb0UwwPPxtB+4HfiXf8AMYDHhuVL/dxnh7sGiGO3utF
 fBf+DZ4hQ2LHut0+L0iCChPA9EAWoUAj/OfjNC3nG6CoVX7DbO9jBNppE48w7WnGsO
 4+FZY1qhknxKQ==
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20220216014028.8123-1-jon.lin@rock-chips.com>
References: <20220216014028.8123-1-jon.lin@rock-chips.com>
Subject: Re: (subset) [PATCH v3 0/6] New support and problem adjustment of SPI
 rockchip
Message-Id: <164511496635.1843820.10942141701559024729.b4-ty@kernel.org>
Date: Thu, 17 Feb 2022 16:22:46 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_082250_761975_8F8AA8CD 
X-CRM114-Status: GOOD (  13.81  )
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

On Wed, 16 Feb 2022 09:40:22 +0800, Jon Lin wrote:
> Changes in v3:
> - Support clear the bits of configure bits filed
> 
> Changes in v2:
> - Fix patches should be at the start of the series
> - Fix patches should be at the start of the series
> - Delete useless messages
> - Limit cs-high presetting to the chip select n <= 1
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-linus

Thanks!

[1/6] spi: rockchip: Fix error in getting num-cs property
      commit: 9382df0a98aad5bbcd4d634790305a1d786ad224
[2/6] spi: rockchip: terminate dma transmission when slave abort
      commit: 80808768e41324d2e23de89972b5406c1020e6e4

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
