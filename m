Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4756C352A1
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Dec 2022 17:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZfiOzw4G5R2v0AebeTBMaGfUKQrRm22BHYHXySU2sg=; b=Z2tJuV4j8ka6QB
	mDijSpX85xoPg8Z/p0JvEFNZYtotFGZf/NNWCh0CDYshXnhna/XAcO7+/t/UPfI5GiDr7LSOtv9J0
	vZFXfdbYw1j4fAR0BftLe3xr/j0Tg6kFc1OHyk+ci36GnoGd6o9GPMrOkT1Qzv7r20dho8W4AClNX
	t2GBDajjVIQvRZCu7OCpjg50BMT4zluCPNGMjS4+PlkGIgMduVBBWLKIs9V/+hyCypb/CQQePmlI8
	IQM3zjK8E5ItxpH2EgK7vQ3RigcMHoMIgxwHH5Vc1hmjmdRs8TnL13a8myiRLCAsBrHX8+g3vTOwP
	a7i2pVbH6o0/tlIgg7kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2yNH-007VSP-OS; Wed, 07 Dec 2022 17:38:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2yMk-007Un3-Nm; Wed, 07 Dec 2022 17:37:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4921DB81FE8;
	Wed,  7 Dec 2022 17:37:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B249C433B5;
	Wed,  7 Dec 2022 17:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670434672;
	bh=8QWEQn+zKzCFj1WRsl+nO7lAaKxvMO0yYD7CsBPujQE=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=ReRQ0peILFdvUb8wufK8d2EnzPSJhzPn9TjYRfXAlEmvz+GrhL+OS7HXX6vFXij9a
	 LoJyUsn/96/R9fXkV/lAepwqPPba0NV1yuVxu65XqZHrp3AN4K3kiWiqEA5HV4ICPT
	 FkCj5+/6Wfo3GCkm7fq2mAsJkH6wUm/TcihgceKxr2Pz365hJcKK5xQsjGpAo3LNMi
	 nA6owA7Jek2ygIlmYp+dMVncFFwZLtGzh37gPcDW+a/XrK0PBRa9qLZyDsu8yjgm9S
	 Cinon+hXXL4+wb/jtNz1Aiv/Q2cXqlZX8G2CIKcdUuymTB7ZME0xs7ob+DtTnvq9H9
	 m66xmZctzNnSQ==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, heiko@sntech.de,
 sugar.zhang@rock-chips.com, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Wang Jingjin <wangjingjin1@huawei.com>
In-Reply-To: <20221205032802.2422983-1-wangjingjin1@huawei.com>
References: <20221205032802.2422983-1-wangjingjin1@huawei.com>
Subject: Re: [PATCH] ASoC: rockchip: pdm: Add missing clk_disable_unprepare()
 in rockchip_pdm_runtime_resume()
Message-Id: <167043466982.393374.17030767228632271968.b4-ty@kernel.org>
Date: Wed, 07 Dec 2022 17:37:49 +0000
MIME-Version: 1.0
X-Mailer: b4 0.11.0-dev-b77ec
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221207_093754_969577_1CF8B7FA 
X-CRM114-Status: GOOD (  11.86  )
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

On Mon, 05 Dec 2022 11:28:02 +0800, Wang Jingjin wrote:
> The clk_disable_unprepare() should be called in the error handling of
> rockchip_pdm_runtime_resume().
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: pdm: Add missing clk_disable_unprepare() in rockchip_pdm_runtime_resume()
      commit: ef0a098efb36660326c133af9b5a04a96a00e3ca

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
