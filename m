Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4A42C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 17:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ke5HWEicw/RrCivntTbglRvvOf+Y+G2nHATzzqXQHcY=; b=VuESSZ2MNArxCl
	xgYBNYsguj2gTG3dooK0wGgDcRk1Zt76TmpOUK6NAZS+69lLK8CkEFCHL/QoFsgsLZQnXwerO/5T8
	1VG8cnuNQk4sTaVDUy7xSdlYVtKngtBY0MKCoe0TXll+/ftdBet2F4lGq5l2QHPWPsN4Gdkqp4qGW
	q36S254RqrTXSTGmsH3igDsTOjI/cwJOlE877fhOa/LkfSgo9PHlby8PuSFdBtwfW9hnbHG1yvbLW
	L+hzBJMomU7bxHd+D4NfFY66uf0acR0SUNE4trwPIQ1/uK1DJAopDtSigP2W+yXHEiA9nG09yoC13
	F06XV0YS9IUxv2tIdf1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeJRw-00AjKa-Ru; Fri, 30 Sep 2022 17:05:20 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeJRm-00AjHz-9c; Fri, 30 Sep 2022 17:05:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E8C97B82950;
	Fri, 30 Sep 2022 17:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2712BC433D6;
	Fri, 30 Sep 2022 17:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664557507;
	bh=KRPWFdHDwy6jFjizRpKLHPb3QET+jaDIqMKXoYQyKBE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MwCBBA/YaOR0syu3zILaysBKPSt8hQiWGabe9TKQAW//NoSEWKIKMKQ7/H73joLnZ
	 HSNOSUcKDEVSp8igks8pS2T31xC5nVF/vUH+7c/qzJZMV7MRlgVMUfS7kAWxhrK6LD
	 IhMOtaaTqGigxYl/xfEihI/BoWxvoePNMvcKK8hozK/iqDkedZQiaFS9Y4OmEUV5I2
	 n6nB0cXc5ID0Frde0a8QxXOAJjQw17kdF1nT0mUcY/Hp7Z1mRRls6m7mYIUEQ9YdvW
	 MQTmeJlVsvXluDzJnfp6A/75nFlcyIB8svRIO+Tew5w2jK3KHObaxVnT3cdJmer0Pi
	 1K2HqFtEguXiw==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Judy Hsiao <judyhsiao@chromium.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, Lin Huang <hl@rock-chips.com>,
 Brian Norris <briannorris@chromium.org>, Jaroslav Kysela <perex@perex.cz>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wenst@chromium.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Shunqian Zheng <zhengsq@rock-chips.com>, Liam Girdwood <lgirdwood@gmail.com>
In-Reply-To: <20220930151546.2017667-1-judyhsiao@chromium.org>
References: <20220930151546.2017667-1-judyhsiao@chromium.org>
Subject: Re: [PATCH v1] ASoC: rockchip: i2s: use regmap_read_poll_timeout_atomic to poll I2S_CLR
Message-Id: <166455750485.778075.7092122068963727383.b4-ty@kernel.org>
Date: Fri, 30 Sep 2022 18:05:04 +0100
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-fc921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_100510_501731_840E644E 
X-CRM114-Status: GOOD (  13.39  )
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

On Fri, 30 Sep 2022 15:15:46 +0000, Judy Hsiao wrote:
> 1. Uses regmap_read_poll_timeout_atomic to poll I2S_CLR as it is called
>    within a spin lock.
> 
> 2. Fixes the typo of break condition in regmap_read_poll_timeout_atomic.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s: use regmap_read_poll_timeout_atomic to poll I2S_CLR
      commit: f0c8d7468af0001b80b0c86802ee28063f800987

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
