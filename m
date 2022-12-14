Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86B7AC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Dec 2022 13:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fM1CBizGmYhDV7YRcQUrGFvRqqrKbWuIOBUbJf84xNY=; b=dBNsAVxtji7lif
	0Lb2nr/upQijXcF6mb5ejYphm4J41f62Hy5ODVX/LBu6ZfefDHZfy0B+5iKS7wx9v95A9mAyt2eyy
	NAxcP71fTiIPC56TpUuVyoESBX/qNY3EjFjchHaz7QCnuDPOlAfLvZEPM+sLF9V0z9Eiz019+cg9B
	EM+FGxes9o2sdlhjEFWyC9CPVniNTqAhJqrk5TtqFUYmz2p0Ha81jI9SCOCaoh96/nScl6OmkQy22
	h69r/daETAwPkkeopd4wEV+mYMg8fByF/3jNhgZr2vm26CnhWdwSNqqoXme9/4oslt21Kjeockx4e
	23jcFexA55fPB2fjsAuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Rw9-00GqVz-0C; Wed, 14 Dec 2022 13:36:41 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Rre-00Gn1p-A7; Wed, 14 Dec 2022 13:32:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B3B17B818A5;
	Wed, 14 Dec 2022 13:32:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 723A4C433D2;
	Wed, 14 Dec 2022 13:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671024719;
	bh=ZYr9Q/8Dak2rzozKFGnSn4t8C3Nckcsozp4ynaU2ZZc=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=Q1RfAlmtJ8n8rU9JRMKuwkUIc1baBoRtMkgfHk/Rv1WAWgpPfotHX8RoyUyVGnwsT
	 popMCTg2GgmjZI2AraHwzGszqqXmEEmy5gtCjK24yr9qqSNyNH8zShiZnnTz42oVg4
	 TFAqXcpSJaeo1n0s614zRNaOGje16OB7chOx+wYciLsuotbuRuSwLlINjpzCt+9g+9
	 fdsUG0wFpcQmiPDiK6ZQ4yx7ORwU0pqqMR2NV1B7Y6e70iA7sDyAceG1VMJZDfWxzT
	 3r3+AVF64tSMtPtE0HjxkaGnypjO+Fzj7Z8i5Qk/kcy5D9n4E8bqSeR80pzIWXkbmt
	 3CYSkudta7hUQ==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, heiko@sntech.de,
 sugar.zhang@rock-chips.com, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Wang Jingjin <wangjingjin1@huawei.com>
In-Reply-To: <20221208063900.4180790-1-wangjingjin1@huawei.com>
References: <20221208063900.4180790-1-wangjingjin1@huawei.com>
Subject: Re: [PATCH v2] ASoC: rockchip: spdif: Add missing
 clk_disable_unprepare() in rk_spdif_runtime_resume()
Message-Id: <167102471719.27755.15684745065318413232.b4-ty@kernel.org>
Date: Wed, 14 Dec 2022 13:31:57 +0000
MIME-Version: 1.0
X-Mailer: b4 0.11.0-dev-7e003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_053202_624698_BE9F191A 
X-CRM114-Status: GOOD (  11.79  )
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

On Thu, 08 Dec 2022 14:39:00 +0800, Wang Jingjin wrote:
> rk_spdif_runtime_resume() may have called clk_prepare_enable() before return
> from failed branches, add missing clk_disable_unprepare() in this case.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: spdif: Add missing clk_disable_unprepare() in rk_spdif_runtime_resume()
      commit: 6d94d0090527b1763872275a7ccd44df7219b31e

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
