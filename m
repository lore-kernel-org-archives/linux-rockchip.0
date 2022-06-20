Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C847BC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 11:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdrIikG3PNy12a4VB2Q605RD4gmhB1KOTHQqoLzDyC8=; b=MQpRvxJ3brqOPf
	aWxmfX/nMIeBtw7MaVTPUDt5YwVkYGqIQR0YarPxlMYaYHDpc3prrH0EC9qql8Y2mr0ZM6K3rv9MX
	yY1+TEFHU1XHL3+oAA8H6wshgVR/+VvKa4TOllkcxsNgLuT2Kkuk8WHYp6Kl1yHw8KM300ta7wOSV
	jppEL4lCYs3mYdC5NOCW2lwRkOg2Ei5AqGM8J1Nwk3yrrsLABYQMcKKQkZ7Ec0Ixj/hqfCo2njhbe
	C7tCcpOp64KyfhKh6fEqTPSm8aKMS+rQNosk9xeHK2Exu+fmzU9KOnbIw7TqgL8TS3tNbOOmS+TXV
	tlOZmTTfnZPVd01XHfhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3FwV-000Ahk-Q2; Mon, 20 Jun 2022 11:51:43 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3FwI-000Acy-G0; Mon, 20 Jun 2022 11:51:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 18CCEB810DF;
	Mon, 20 Jun 2022 11:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF210C3411B;
	Mon, 20 Jun 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655725886;
	bh=0KLViu9Kc9KUYkxz5DPYN5S3+LCrgMJEn2pVpTajy9Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MHksJSUevDqRB/n8D2pKo7QVww/HGP0V0ReHcduV+fMXCm+PADfQwyBPNmbAg9MiW
	 ne+zGCQ8/VHVEYcjGHngpvldOW3nU/Fym5AepJ9Jwc1oYmF96qPDrBvGDbHmz9JIPO
	 3VXKmddXySqk0LGnaoPWFIVUFu/p6g68wJSHe6xbGi1OCE/37TwDhiEGdyRT4mVdzq
	 4WsIvsX6qKT6HSKxfhswKhibvA1U6Mol8W4bVZhPTokT9YWdtrNQ4FRcOle7HIMJue
	 9BIa0Wa5CnmB8P6L/R/TaN/vQFVwflQJV99ImFQZNyOLysSvaE1iuyVBS8PsuMb7LJ
	 zMwtsjvR1KEkA==
From: Mark Brown <broonie@kernel.org>
To: jon.lin@rock-chips.com
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20220617124251.5051-1-jon.lin@rock-chips.com>
References: <20220617124251.5051-1-jon.lin@rock-chips.com>
Subject: Re: [PATCH] spi: rockchip: Unmask IRQ at the final to avoid preemption
Message-Id: <165572588544.132271.5675732326732041001.b4-ty@kernel.org>
Date: Mon, 20 Jun 2022 12:51:25 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_045130_736630_249B1346 
X-CRM114-Status: GOOD (  10.25  )
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

On Fri, 17 Jun 2022 20:42:51 +0800, Jon Lin wrote:
> Avoid pio_write process is preempted, resulting in abnormal state.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip: Unmask IRQ at the final to avoid preemption
      commit: 419bc8f681a0dc63588cee693b6d45e7caa6006c

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
