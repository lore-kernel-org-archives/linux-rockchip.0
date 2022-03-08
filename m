Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D666C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 17:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiQ5D/J1FzcLxe10/+5Ai11qRu2CdO69LO12YwiBQDk=; b=Ls5I6tQGHw37YJ
	xotEO3mhyfdlS+waXmV6qd1oMAm69CP7zVqrwI9Bd/t5jPigl2+yReMM34xZzvRfrfdy8Mcm52I9q
	OZMkYM+ZLmj6zkyTibYgSOc6QUq6xsCei1Lc+AjKHEQjgjtM2XVhj5nnR6WQy5xBocMr500bnvUOT
	YMyIjfoZnmZIBThjh/Ifk+q/Ulyq/nnS6Zh6AzF3YimEFXpSebZgADmN4zUYLXxvL7jW+vV/eHFQf
	RpM9Ffq1v/YEntziIAlPYUas6yrRvOPyxgjtu5r/F2fn1iaEQ8uUNx+obSUZTaLnZktE29AoTicBZ
	yriPUmlPCWTkljY9rieg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRdgt-005YVP-Mm; Tue, 08 Mar 2022 17:32:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRdVz-005Uiv-Oc; Tue, 08 Mar 2022 17:20:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 92A6361093;
 Tue,  8 Mar 2022 17:20:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1471FC340EF;
 Tue,  8 Mar 2022 17:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646760050;
 bh=OTBvjPDi+isTMADoBJKHUAl7J8WbruRWlXA5d3Qair0=;
 h=From:To:In-Reply-To:References:Subject:Date:From;
 b=h+9lSc42lHWYcPr8dH9nm8eA1GZza7+G7Amy5YzWHbBP5WFKhjLghncJ+7zerIBSa
 CeFMl2t0J3fmb982ZU1FSL0knrWyJB1GKmgs0zd6x/+pkqDI9kicM9Adtzd0GJ/8KC
 GdE5NeOr/Nr/APVNkh5RUFSUTcFWIjLkuCRoDyii5cM7C7hicAlT812Q6aVlCour+j
 V1mfVnnXjpGBLujey+3UDyvbe9AEd9/ADUG4p076i/rfkFNZ6d9CSfPfpKZiAtIJ3Z
 Td+60L2vllqUOqMBYTYv/Hp//xHUMbAvQvC6LVOvxoVYm79T7sV0fTdMujx87FlQ+0
 Y7BTMEY7+RBxw==
From: Mark Brown <broonie@kernel.org>
To: Jaroslav Kysela <perex@perex.cz>, alsa-devel@alsa-project.org,
 linux-rockchip@lists.infradead.org, Takashi Iwai <tiwai@suse.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Jianqun <jay.xu@rock-chips.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Miaoqian Lin <linmq006@gmail.com>
In-Reply-To: <20220307083553.26009-1-linmq006@gmail.com>
References: <20220307083553.26009-1-linmq006@gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s: Fix missing clk_disable_unprepare()
 in rockchip_i2s_probe
Message-Id: <164676004779.54315.18423520292577645597.b4-ty@kernel.org>
Date: Tue, 08 Mar 2022 17:20:47 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_092051_894738_3678A324 
X-CRM114-Status: GOOD (  12.84  )
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

On Mon, 7 Mar 2022 08:35:52 +0000, Miaoqian Lin wrote:
> Fix the missing clk_disable_unprepare() before return
> from rockchip_i2s_probe() in the error handling case.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s: Fix missing clk_disable_unprepare() in rockchip_i2s_probe
      commit: f725d20579807a68afbe5dba69e78b8fa05f5ef0

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
