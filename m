Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F5CC48BE5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 16:09:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CC0C6102A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 16:09:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CC0C6102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29fqBak6et/WTgQTDa0AfdZl+icS4vmw4aUvC80mpG0=; b=K4YrUZonZZqYWx
	UR9MNUeOdq5jQYopvRYZynuzOz93r1dI1TAyULtfOqyz56wlWaYBbA9lMzFNlPEHukk+KT33xva7z
	FQcu+wOVjezCzyHSAxk853Zy3rxfxaXwiS2LdRQEmXL+mwF+9kdi7EZ5t0haDf4tqNSqrrrGiT9pO
	p+7ObBQunWX0IBgX+Iz7kIZ99LSAusZUhKRMI5/EwjBGzmULxIpE9GB5ndt/dqo9oZKaQNbagx5X7
	K130RAMRZ7EoXWpdrZlLEzL1EKdRmE0Wx9OcUfGjpMPne7A5JXJZJsBgPkfcyCZ4VGG/pp9+/T1b7
	aEqgUfK1+Mt5tSMCKESQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw5RZ-00BCfG-02; Wed, 23 Jun 2021 16:09:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw5RM-00BCdG-9X; Wed, 23 Jun 2021 16:09:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C8B446102A;
 Wed, 23 Jun 2021 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624464563;
 bh=bOVsSWZOWPwWjIygRzUXx6bADV+DwhY//u9cvEOSFz8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L73/0MuegwZuHAChajYH8mmfAdsTFzk7CDpNsQc27xRMxYkQvDgubxqBN4vDmYQ7A
 ns1B8FXxU6Bea40uYaH9bpqlvxlPaa4x1d6KHx/inNqmsBkfrPpdSmVVE9efEqr4WI
 0u4OX0QXjja63j3sBDnQbVBXrAYZFcmI24Oi2pXDGhJoERKNZccldDAVh4JHbwsCLF
 QxH/jJGl+er/QvnM7layxjd1+7MbUVAKBrxEr9rWpQ9C1mtGHGqqzqzuNj3rY9fW5T
 acK3347FMiQZtVLwhEy4bdBPE1acNnbhvcicCvifXb/2I0+kUmjKXbm98QiKTi8HpR
 kTlcNz9OyA2aw==
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
 robh+dt@kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 0/6] Support ROCKCHIP SPI new feature
Date: Wed, 23 Jun 2021 17:08:49 +0100
Message-Id: <162446446390.55587.6401502942889105025.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210621104800.19088-1-jon.lin@rock-chips.com>
References: <20210621104800.19088-1-jon.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_090924_393032_8F35A05A 
X-CRM114-Status: GOOD (  13.11  )
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

On Mon, 21 Jun 2021 18:47:54 +0800, Jon Lin wrote:
> Changes in v10:
> - The internal CS inactive function is only supported after VER 0x00110002
> 
> Changes in v9:
> - Conver to use CS GPIO description
> 
> Changes in v8:
> - There is a problem with the version 7 mail format. resend it
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/6] dt-bindings: spi: spi-rockchip: add description for rv1126
      commit: c58c7e9bf55ced301fdd9c8c1841361cc5fc8458
[2/6] spi: rockchip: add compatible string for rv1126
      commit: 0f4f58b847b23d79185ad20ecf629c9f913f4f41
[3/6] spi: rockchip: Set rx_fifo interrupt waterline base on transfer item
      commit: 4a47fcdb5f8b220a396e896a4efed51c13e27d8b
[4/6] spi: rockchip: Wait for STB status in slave mode tx_xfer
      commit: 2758bd093ac35ca5b62dbecfd30dab60e8b59790
[5/6] spi: rockchip: Support cs-gpio
      commit: b8d423711d1870c5e1280d5bbb0639fe6638a60e
[6/6] spi: rockchip: Support SPI_CS_HIGH
      commit: 736b81e075172f1e6cd7a8bc1a1374a2dee9e4dc

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
