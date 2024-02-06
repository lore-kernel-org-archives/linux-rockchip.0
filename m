Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFEB7C4829A
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Feb 2024 12:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQ+lcyJjlHC/rolm6X99SUzWgnf6B6OPqnnRO5SZu2c=; b=fce/qLHHUktFuK
	F3QygPJIEVJiVWU2K4jJ69+G/GOPFlvwU2zaIZbqWag157lqD+xok9tbZz9COibV7IjE6wIMEiQib
	fTlV+MccGfXHMupF24tW1/d4O6Hes3PRr/a3safbLww8d4PrhTGB0M72LB4p1rLYdLNX4injLPper
	FuQ4uIC0r6dVFl8/SnnoLs3usHhkx/ZC3UqJ35RQyTTPzhQ+le1PLGvmng+q/KHdPjYdWI65HV5Ct
	VdNS96d5yGn0oQRYgAZK/Kw6clRMyaEzq9vA77825bu1xNxnqkhb5tLdOcCxRd/OH0Eeqco6RTRNg
	rm94YxdO1noAMCZ+KBWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXKGZ-00000007V4F-0eoo;
	Tue, 06 Feb 2024 12:09:31 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXKGR-00000007UxD-3vic;
	Tue, 06 Feb 2024 12:09:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4F580CE1322;
	Tue,  6 Feb 2024 12:09:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2143DC43142;
	Tue,  6 Feb 2024 12:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707221361;
	bh=bhzjs8R7sbGn+87s1FW9V15rI90gCXYsB4OLyhnwb+I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bfGM1OFYU4HkcmBMBddbA/WPbkmm8Sm3dEMhc36T8tBLGium8YmlmZrNB/nl6Xrqh
	 rOQ+hVKxL/cOVKOHGc6qa1u5T9ZElmXe2Z5BdEf/grW5faIAAFZK0eeNEiJj9re+4D
	 xQnXMgvt6PEDO83IPp/VDuyvTalhUyARsOOy7ilLUONORRBhzekD3Pi3z/vOFfDzB1
	 YMQmQoMU6VfkaAdWXcvnrYMnDixCKCJ21IWLfGcfG/gZCDnPdLr00G6cs30wZEIpt6
	 kZnMuOAO4EGcsb48EAxDmXpwofmFiTEm77w4lhpHufziLvZCTxS3RsH++PlTVB3+bE
	 hZH62IbetfUkA==
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Luis de Arquer <ldearquer@gmail.com>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, 
 Robin Murphy <robin.murphy@arm.com>, luis.dearquer@inertim.com
In-Reply-To: <4d18808e85b85077761c5655083f20ebfd7d3770.camel@gmail.com>
References: <4d18808e85b85077761c5655083f20ebfd7d3770.camel@gmail.com>
Subject: Re: [PATCH 2/3] spi: spi-rockchip: Fix max_native_cs
Message-Id: <170722135988.992289.16551970004382399267.b4-ty@kernel.org>
Date: Tue, 06 Feb 2024 12:09:19 +0000
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-0438c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_040924_295882_CB2B1E2F 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
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

On Fri, 26 Jan 2024 20:46:44 +0100, Luis de Arquer wrote:
> 


Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[2/3] spi: spi-rockchip: Fix max_native_cs
      commit: 07d6749317bf8cc416fb7eb8f997a884bd610f8d

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
