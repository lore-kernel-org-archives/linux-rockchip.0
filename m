Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FC4EC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 18:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/huSLYUFV5Q6AuviBtOq5xq1RLa/quM34L9Bczy3xqY=; b=b5mbGjuq3jMh71
	0G6MHM9W4V4lioMZi7BuJn08MW/AbZUdxxHzmKpOARRQmJ2LdKmUtwrC7yuu45NPD18ZHt28kuQEr
	OszkplhlvdKAyIn1wF3STC3DSLG4UsVUeBlv2nrB79gEwgVj4g0zPU5y7TG66OeRluFZHJjpAcdIl
	kkh+jQkOH6R/yHz6pPniFRDFZTC9CPzlCJeVrKuApjQ0dZu3LdN66Huf2AIQFA2LlPzo0rO6DwizW
	xeeq+wgf8fIgW+Z0fcVEp1d5gOg/9T2mphOFp/erVquiKB3awN7xZQA5OVePLRljsI/dlzQBiJehP
	N+wJDT6Oo8TAKteJ5KuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msUOs-009nnX-VK; Wed, 01 Dec 2021 18:32:14 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msUOf-009nit-4Z; Wed, 01 Dec 2021 18:32:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id BEAA7CE1DE5;
 Wed,  1 Dec 2021 18:31:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 312DFC53FAD;
 Wed,  1 Dec 2021 18:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638383517;
 bh=7qhygDHX4J1BeJlKqGRQ1ZZF1wSu4J7V9n4jarp8HOI=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=fA3Rscm+Zo8Tu5O8KbUZDiMyF/Na5hEy0DoyxyYkFXD50PkuN86AfvwqMj3wJetCk
 bO141OVMndGgrGBAur5hfdUOYhr7T9CZKzp2UzrRP+v2JiQe4Qsw9L2ooekc922YiC
 RcgM4FnUqQaZnELYB0/3DhpS/qOdTzFyQoSlzVQpZ1SaYSPwLBp0RE4OdDcX1wGTdl
 7luZNt1Ts3YL6Q3MBxMhPzdwHvofLGmOc9qlyYvHMRG5MJKOs9j2lDL4OqttjdfEvu
 AU2NIlv5XlriBbBC5swsofXtQk1QkQCxvN8LK+iHJhaKFvBzK9hwNsV0m6KgG+1A7I
 qQ6IiU0QIoB4A==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Takashi Iwai <tiwai@suse.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20211124210655.288108-1-frattaroli.nicolas@gmail.com>
References: <20211124210655.288108-1-frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s_tdm: Dup static DAI template
Message-Id: <163838351490.2179725.16335234667243038624.b4-ty@kernel.org>
Date: Wed, 01 Dec 2021 18:31:54 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_103201_434081_AB9E28C8 
X-CRM114-Status: GOOD (  15.50  )
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

On Wed, 24 Nov 2021 22:06:55 +0100, Nicolas Frattaroli wrote:
> Previously, the DAI template was used directly, which lead to
> fun bugs such as "why is my channels_max changing?" when one
> instantiated more than one i2s_tdm IP block in a device tree.
> 
> This change makes it so that we instead duplicate the template
> struct, and then use that.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-linus

Thanks!

[1/1] ASoC: rockchip: i2s_tdm: Dup static DAI template
      commit: 53689f7f91a2ab0079422e1d1b6e096cf68d58f4

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
