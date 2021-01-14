Return-Path: <SRS0=rUAS=GR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E693C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 16:49:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1EC7823B44
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 16:49:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1EC7823B44
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2fPyZNmvKaQJnx2liTu+XrKB/p8hitWwkcn6jUaVEHM=; b=mTD4/nVH3mMjUcLDwqwX6KnCvB
	PepwTDCn5NEC6iu7D8EPxrTQ8hd0Pv2e96CaRZCKweeA81zrz0b19kWh0Ide2497i9sf0jLvr+xfq
	EuoamTCECf/bMAoBvD++S1N5W6gbhqKOLpnuF9UDpc6xDpL8uX+6DpP0c/1sanpnFKxenk9caRXXJ
	sDxYBw9b16aSPUhqcRWiyimR4XFbjRa+7lYnoojuGm081Uij6Pc9kgJb1+qTtvxI83hhObfv+lKq7
	WrVPSr8g7EoN2hFblE/SAo1cafd5FKgxSodU7cZpeP7PzBTe10XddU1dMsngFZhWRgBSfwtceXe9f
	YFDCa64A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l05oS-00044i-Lk; Thu, 14 Jan 2021 16:49:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l05oQ-00043u-AV; Thu, 14 Jan 2021 16:49:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2065923B40;
 Thu, 14 Jan 2021 16:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610642969;
 bh=kh+EMdAVaiZX6MYoUtUwlmZYZYChel/nYSoIGsGDHWc=;
 h=From:To:In-Reply-To:References:Subject:Date:From;
 b=Y1WPlKYggloBG6xjslS6XpLMsjDmQcnRwHI2fMOYiYDBqvtOEKrtJZq/MfHSY+Qpw
 Olr2oQBzHJd8hPTABZ29nRF9wdZTv03ryCkN/cGYQp/Z5K7mRTjF5WO/AHDqlvYoi3
 F0mwzY3mJQhWZPWysaojJwnsrozWR9UHOLnBlgYmFWDqpqWgky6Crp+OSm3tuhHz8l
 FvjfQBdLYhFDeA1P+yrVxQSq82VwL9WNUwNHYb3l3y1B7c9IueNlKfueGzwv1NWD4l
 2KtcQvvInTpjpedGbQKqXsLg2igSJugMX1s6V92ZNM0P4MmXmdGlRhkQgUoesa835H
 3PyJ5Kh1KsdDg==
From: Mark Brown <broonie@kernel.org>
To: Vincent Pelletier <plr.vincent@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-spi@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, linux-rpi-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Scott Branden <sbranden@broadcom.com>
In-Reply-To: <633c3d5c350dde4d14ce2120c32698c25b95d302.1610062884.git.plr.vincent@gmail.com>
References: <20210107235832.839221-1-plr.vincent@gmail.com>
 <633c3d5c350dde4d14ce2120c32698c25b95d302.1610062884.git.plr.vincent@gmail.com>
Subject: Re: [1/3] spi: bcm2835: Call the dedicated transfer completion
 function.
Message-Id: <161064292108.43781.9781211725257862178.b4-ty@kernel.org>
Date: Thu, 14 Jan 2021 16:48:41 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210114_114930_456949_B4E7D410 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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

On Thu, 7 Jan 2021 23:58:30 +0000, Vincent Pelletier wrote:
> spi_finalize_current_transfer currently only calls "complete", so no
> functional change is expected.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/3] spi: bcm2835: Call the dedicated transfer completion function.
      commit: ccae0b408ba08203d5f50a301b105284374217a5
[3/3] spi: rockchip: Call the dedicated transfer completion function.
      commit: 6bd2c867cd6e03d88dfa21f9fc8c610159061152

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
