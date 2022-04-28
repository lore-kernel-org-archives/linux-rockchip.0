Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6DF3C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 16:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7gnGJ0oASu1tQSZTo7VBVijgLTMZt0ktc680toqzfw=; b=XT5ucZ1Tn1GIVW
	BPS7ORvONzPaidbA64zxxTjcv4FMnobTbOjJ2ic0MZWtAFpol0YrQn8zEFSJmMlhitKpfpbkXYw1e
	UrE1Bvy8laLGCT4hFlXXI+jXJa8fjbjxWuTv3M12tdrAY3XgGZ77zJpsls3ZiVChnKdXBRa/B5dMi
	BSIj2V2O6pEHvXHJkIRRxG9ejbQ01JfcQN8Dk1TKAs5QE4vLXCK5RJDwxyw8bktI40smMgRVwElN+
	tK7Iaxok5ZfZu98cgaNM5ycjWSttbz0sLqs51Ueaeqvs4Z/AZlqTJl+xsgpP7PwL24AvCeSoKbg89
	e040gK5tyDJ5ASPxrxzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nk7IF-007wqr-D8; Thu, 28 Apr 2022 16:47:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nk7IC-007wq4-Kd
 for linux-rockchip@lists.infradead.org; Thu, 28 Apr 2022 16:47:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1CAB862026;
 Thu, 28 Apr 2022 16:47:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDEBEC385A9;
 Thu, 28 Apr 2022 16:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651164419;
 bh=oTA/bLA09vyo7gZftSiBJgvnmnzNeALY3BscTIa+ohw=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=kzImxQxtKo2A4VfSdtTB5B2HQF5eIMKRAuAelphHIW4NYWeafoGPqJYbmVl9JqVpy
 LgaRdgvPg1QheX0laSoq8QZ1n7U8Lx0MFBbg7PYGCD7p6jNbdomCIe+IXMvdZ01OED
 Ur91+jW4qSgd+LcePzEbAM1P+dDi1sFEs6KLezxeLPhA510mcHWGhAU4GdPUb3buIW
 3s92pSDZeJROYgFMNPaX9yZScLT1AiaFOgn5df3hkOLwTKNu0OvAfzj611FACxzm//
 HpN6pdKOi+0VdBLxjyKVm5u18uVvyvrwGy6jZssFuLPUv6cAHmTAPeOYD0joBjou5E
 TCTy2g7WB/yvw==
From: Mark Brown <broonie@kernel.org>
To: perex@perex.cz, frattaroli.nicolas@gmail.com, lgirdwood@gmail.com,
 tiwai@suse.com, katsuhiro@katsuster.net
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-rockchip@lists.infradead.org
In-Reply-To: <20220427172310.138638-1-frattaroli.nicolas@gmail.com>
References: <20220427172310.138638-1-frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH] ASoC: rk3328: fix disabling mclk on pclk probe failure
Message-Id: <165116441767.4067540.16396705501182849019.b4-ty@kernel.org>
Date: Thu, 28 Apr 2022 17:46:57 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_094700_768188_9812E4AE 
X-CRM114-Status: GOOD (  11.69  )
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
