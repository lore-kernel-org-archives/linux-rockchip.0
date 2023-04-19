Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 085EAC77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Apr 2023 13:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92bm6QhG0t0wtqz4la8R8Mulm+erN2x50hquEcn5m94=; b=Bq5rWsFVvhLYLh
	sUIkK0l5DqTsQSH6fayXnvQ8ZgOlQm9oRmoP91QiXs8j2dRHnzR4KHZe9lxzrHPQTW3vdg4FMcSiJ
	uL+Jb1fqwNsZmhhwUAItLXotFLmXZjCaqXMZVzK6c2no9TTH5Q1XLfGVAMQNPfnJGs6OLsbmBLQ/0
	rq2+jgBdE+59YHim/X4u8/KpoJ2lrTyKDANVk7W5BScDOf/SXBfdT76usp6HgKtPfiqN2+ePbntER
	7YO65MLhzHmjJAOlA3/ze4F9Pmzb/nV+isP4K/05SCAe/ifdRT8i7NLGL5+dDfnYUeMGyaUUjtHBM
	d8C1JBWWNGxEV1/+iHEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp8E6-005ZCX-1G;
	Wed, 19 Apr 2023 13:52:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp8E3-005ZB0-0J;
	Wed, 19 Apr 2023 13:52:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 552EA63479;
	Wed, 19 Apr 2023 13:51:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC255C433D2;
	Wed, 19 Apr 2023 13:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681912317;
	bh=5i4cIzN8TwYjPI9xJWVhpK6iSjWWktcyEBZa+5fNb2o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=f66H0mMCEZm3K1hXHhntDw/hEpd/tqVMpCwZJvjftc2HXPDDQQ4BXX2U7eNmHGulo
	 pVJNyGUlY+p1vsxqDu/b00dv74xXwgPPotbBRLLcTuR/zD/5ZixRU5kfhP8W7JZDqR
	 1D9VqgJ14pk13gS1JX3LIj7aWXb/j9Eg3NOAlJCzoQuEBS320TdBGk67z3Z9tfAHhS
	 zV5QCZOP4FIie4s54vpoU8L12qNsKu2q+GbdoHnFAz8u+u5FleuuSO2ipNrGAhiBCp
	 Iigfo4FnuCLEJi27U38Sc7cGgak189oTUfykH8D88ftNdXE6bl/WahPWF84hm5Izf+
	 oBdZH8X8XGQuw==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, 
 Chris Morgan <macromorgan@hotmail.com>, Jon Lin <jon.lin@rock-chips.com>, 
 Li Lanzhe <u202212060@hust.edu.cn>
Cc: Dongliang Mu <dzm91@hust.edu.cn>, linux-spi@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230419115030.6029-1-u202212060@hust.edu.cn>
References: <20230419115030.6029-1-u202212060@hust.edu.cn>
Subject: Re: [PATCH] spi: spi-rockchip: Fix missing unwind goto in
 rockchip_sfc_probe()
Message-Id: <168191231525.73880.1269643228977123432.b4-ty@kernel.org>
Date: Wed, 19 Apr 2023 14:51:55 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-00303
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_065159_191646_8B749E4E 
X-CRM114-Status: GOOD (  13.14  )
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

On Wed, 19 Apr 2023 07:50:29 -0400, Li Lanzhe wrote:
> If devm_request_irq() fails, then we are directly return 'ret' without
> clk_disable_unprepare(sfc->clk) and clk_disable_unprepare(sfc->hclk).
> 
> Fix this by changing direct return to a goto 'err_irq'.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: spi-rockchip: Fix missing unwind goto in rockchip_sfc_probe()
      commit: 359f5b0d4e26b7a7bcc574d6148b31a17cefe47d

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
