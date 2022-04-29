Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3873C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 13:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7gnGJ0oASu1tQSZTo7VBVijgLTMZt0ktc680toqzfw=; b=OvU3ywpGW9Ey4L
	NZ1YLfhUqiTFv7Nc0kUduB6VR+sUdPHyyUnNhPtIPIuGjXOElkZSLAzlLsLLSeVjaF1bzCMwNJ0IN
	rIrxFgmthon8s7sqCc4/UKDYiLK7sERfwpvqcwTjWZ/rUzRFAn8aYoyLxMVcGDKgg4DwQJ7TcfnUw
	IgL1ogTKsbxN4QDNLIMXV8EPwfyAhkOpqzQ8wZg8L3CYabQRL3+wJubb3p3E9S5vfxVmnru5kyD5H
	KsUwlO/ON+YlfH78JHuXbFIyq+jLtL57OufOJBFJjx/rRFKbguDzPbDjsIMCJbUODqEnj9Tkyu4AA
	4t0B2lOEFgMkg8ao70uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkQqK-00BPK7-Dg; Fri, 29 Apr 2022 13:39:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkQqG-00BPIa-Tn
 for linux-rockchip@lists.infradead.org; Fri, 29 Apr 2022 13:39:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6EE22622E0;
 Fri, 29 Apr 2022 13:39:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45615C385B0;
 Fri, 29 Apr 2022 13:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651239567;
 bh=oTA/bLA09vyo7gZftSiBJgvnmnzNeALY3BscTIa+ohw=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=g2iWwYLhZMqK/AT1qsnItdAbEkyJvxxyoA3K1GYJrA+o76kDlvN915Ls+oqDkF2wY
 +KgnKeJ19klqffLx7drnPNtUY2WqKbuwB4pK2wVy/r6R7dRbai8ZiOvEfxHm4tN5Rk
 Oem4Myu40JQW8wpp4vxU0/dH1bRvwPpRu+rWXj2k73S32TqGYx5ym21swq9VIV9O7X
 7RdRDvp6BreO7NYw2BVovviIQdCwbOkuXqHqtZMkM7FlXNr47pKiTFBKyWAjwEA9Rw
 rFsLLEI3hAx5QtZh/vioFxmvYOjKIoELdAUymfRr1RcCFAopZVJMm5fd2zXfWP5h1e
 yXEbTShKn7FiA==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, katsuhiro@katsuster.net, frattaroli.nicolas@gmail.com,
 perex@perex.cz, tiwai@suse.com
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-rockchip@lists.infradead.org
In-Reply-To: <20220427172310.138638-1-frattaroli.nicolas@gmail.com>
References: <20220427172310.138638-1-frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH] ASoC: rk3328: fix disabling mclk on pclk probe failure
Message-Id: <165123956599.69278.1250997560637769759.b4-ty@kernel.org>
Date: Fri, 29 Apr 2022 14:39:25 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_063929_042624_53D84452 
X-CRM114-Status: GOOD (  11.67  )
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

On Wed, 27 Apr 2022 19:23:11 +0200, Nicolas Frattaroli wrote:
> If preparing/enabling the pclk fails, the probe function should
> unprepare and disable the previously prepared and enabled mclk,
> which it doesn't do. This commit rectifies this.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rk3328: fix disabling mclk on pclk probe failure
      commit: dd508e324cdde1c06ace08a8143fa50333a90703

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
