Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B593C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 18:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvUhGBION1xg7FFvoWFx82S69N3n/GK7j/6bSIX1BBY=; b=MooSl14P09/45Z
	AUYQWfHw51G54gaZsY2MbFDwnySSg3KMdVPbFn54jEofEm7yv/Icp9xXNQasPfKezqhpeHn+dO7Xh
	d0FiIum7ceM5+fKA0TrnJHHjL3tbkpcY1fdxf4dXjoU6DhFJKci3D/ZmvM4KY52SK27Tjn3Q8a3hp
	TwYhDWUKCefg+Gh9egN+q2VcBjAWsgoobjEmYUEsuCApMWzqViwpmiNwvqSKQNoz4DY4di9aBC+P4
	ywhe7zhx5IgzYEO4oD1pZ0gYgxzwLaJYWKfIZE+dAbPqxiBVnNGbmbdTGpVg2KGLnrLCaUk2HFuJo
	yNQcb6xfU7yC+BDRaF2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKla7-00Bk2s-PQ; Thu, 17 Feb 2022 18:32:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKlZv-00Bk1J-K8; Thu, 17 Feb 2022 18:32:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AEEC9B823D2;
 Thu, 17 Feb 2022 18:32:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 266F8C340E8;
 Thu, 17 Feb 2022 18:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645122748;
 bh=8YextsepZgUr4+oe5f01LRtpOeJxsq+lsISRRrHwJn0=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=VNBraLvw8tzhp5HQKFZZQSD/eEBmA9GYmGDGvVdYGnsnSsO4hMlTzHp8ezULp/NLk
 h7CPFgftAYTLPNyj3edHai5GLyuHYAjLYbMroo6G6AvP4gKXYxxSTkH2BQzpOX63/C
 vuRkB0sdMBQOZRaBPa8ElUHxUVBxqAky1tvm1UkCt2YKRg0qCC3TEPT6v92SD0zqiy
 OeCX8+5JHLVdBgIHsHtg+1e5Cfl1REQXfB018lH2tCaqMm6UAYDJrMAn5EW4TnhdV0
 iUztK2QZBL6h8tvOPfVqOp03wTgeLulMk54ltLJV5eFFkPaVOztdyqnrducnSFHq0n
 /Di2Lbd1EjYnQ==
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: linux-spi@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20220216014028.8123-1-jon.lin@rock-chips.com>
References: <20220216014028.8123-1-jon.lin@rock-chips.com>
Subject: Re: (subset) [PATCH v3 0/6] New support and problem adjustment of SPI
 rockchip
Message-Id: <164512274685.3993181.4255845764381770585.b4-ty@kernel.org>
Date: Thu, 17 Feb 2022 18:32:26 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_103231_849170_8687F393 
X-CRM114-Status: GOOD (  14.37  )
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

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[3/6] spi: rockchip: Stop spi slave dma receiver when cs inactive
      commit: 869f2c94db92f0f1d6acd0dff1c1ebb8160f5e29
[4/6] spi: rockchip: Preset cs-high and clk polarity in setup progress
      commit: 3a4bf922d42efa4e9a3dc803d1fd786d43e8a501
[5/6] spi: rockchip: Suspend and resume the bus during NOIRQ_SYSTEM_SLEEP_PM ops
      commit: e882575efc771f130a24322377dc1033551da11d
[6/6] spi: rockchip: clear interrupt status in error handler
      commit: 2fcdde56c44fe1cd13ce328128f509bbda2cdb41

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
