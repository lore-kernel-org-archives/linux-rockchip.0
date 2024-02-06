Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDEB8C4828D
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Feb 2024 12:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsMcjs61ln03Ih8W1HzIVM+fdnPiDBdAeFjB+G6lnN0=; b=1uN0yksWbAZPS/
	OSSR65tF/wk11XnwnE8TMygnADLgVzz5Vrv72QQMo/wYgV7YTlRMKJ+TiaKyHCoQTKoYT0AmEq47r
	r7IuPleERWLsCAWJ2yp9nPQJZV63PWhQDST3jQUtmN/0TywgolEMw77y/o7B2PhX9XP5uVfKqtjVH
	nxnJ4OmvBUb5wFhaXTtvIKH/FAefqY+zvDxpwEj0vBZcUihWHP2iOpD5vcFRCVXxF3HsKx1o0MSGn
	2xiokEZPp5EYc7wpTScqY1og+dl7q/OTddFicZzP8KiWNi15lg4wfiKrSZriBl33B8Ve37Xjnxj86
	d91L6OlRlppeEH7WKUAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXKGS-00000007UzC-3sjm;
	Tue, 06 Feb 2024 12:09:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXKGO-00000007Uv7-1X3j;
	Tue, 06 Feb 2024 12:09:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CEA5C614ED;
	Tue,  6 Feb 2024 12:09:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0196C433C7;
	Tue,  6 Feb 2024 12:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707221359;
	bh=pPf6zjaw0YWgrtDcTtvZK7on5ZzqnlKWLo8vYaA+ARw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZIMVt54XGHwiMU68KbTAlOJMOmh/RYRANZ0l8J50GXFWUrJA34B/t/A3e/Q+w+eeu
	 YmDioFUEZSWZ7cGAehoLlZZt7jZ7h+gRFKmaHBAqhMQrsxRRpwcf9Bv+6b1J4CGdiY
	 wUuOnHHacs5bPJhsypJIxGq58KlCSYa0hxDX41FesmXJEFid9UVpxZQuR1n7gM8+rx
	 MwwcOhCZbjnvi39U7mg9V5jdUvZwQ3WFcpUW4aiPkmERCZ56bDtYkmssLp1EzwDDJW
	 BZ6ZCXcZmQwSvxJvjQFslfN8UGOJrKqHyKFI0wdPCOstdq98t7KCHYyLIuf5897GEC
	 TPTWg8l52s/nA==
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Luis de Arquer <ldearquer@gmail.com>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, 
 Robin Murphy <robin.murphy@arm.com>, luis.dearquer@inertim.com
In-Reply-To: <d0a0c4b94f933f7f43973c34765214303ee82b77.camel@gmail.com>
References: <d0a0c4b94f933f7f43973c34765214303ee82b77.camel@gmail.com>
Subject: Re: [PATCH 1/3] spi: spi-rockchip: Fix out of bounds array access
Message-Id: <170722135749.992289.15697794972690614056.b4-ty@kernel.org>
Date: Tue, 06 Feb 2024 12:09:17 +0000
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-0438c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_040920_538191_ED164946 
X-CRM114-Status: GOOD (  11.24  )
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

On Fri, 26 Jan 2024 20:46:22 +0100, Luis de Arquer wrote:
> Since spi-rockchip enables use_gpio_descriptors and the
> SPI_CONTROLLER_GPIO_SS flag, the spi subsytem may call set_cs()
> for spi devices with indexes above ROCKCHIP_SPI_MAX_CS_NUM
> 
> Remove array cs_asserted[] which held a shadow copy of the state
> of the chip select lines with the only purpose of optimizing out
> rewriting a chip select line to the current state (no-op)
> This case is already handled by spi.c
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/3] spi: spi-rockchip: Fix out of bounds array access
      commit: 5c018e378f916b56503bba65cbdec66ad16f20b7

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
