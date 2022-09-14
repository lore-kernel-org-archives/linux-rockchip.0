Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8157DECAAD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 11:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rh50DInJn+b0R2b2LGhp/LLyA7AAwaHQVkdr84vsch0=; b=FTBObayCMpBR9K
	6iQmMyMmLoQPX3i9VVG651JvhmVXo8Ki9gpcxdhLewRM4/UHRAE7WsXq+hm9EtqtOZiJ7wZSjrRpA
	/qmoCDL7BrCXBn8WD78kg+inpyvzjKRyXIS1m+ufvEWbHG5DyZGEOt5fKQUV+30qXt1KjfMGQO/BE
	mYxdXAWy8frfkAWmjVgYuLqy3gAPoHWkffuYb1XuQ1LsTAVKJNIgFzRXn09004LJZuh746YRgIIwk
	H7cY852VQNdA9wRsU1DIEnGLsE/wkWZZkwZVxp1By/Y3Wswl8CfSW4UGvpOwm7Gn5pimzB4IajPSa
	7opjQRUgyiT83u186hCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYQDO-00FcO7-TI; Wed, 14 Sep 2022 11:05:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYQD8-00Fc7Q-CR; Wed, 14 Sep 2022 11:05:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D5D8061BE0;
	Wed, 14 Sep 2022 11:05:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DD86C433D6;
	Wed, 14 Sep 2022 11:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663153541;
	bh=gsGR7uK+L91dwepl01aajzxbTPAj28CNr4QvBuBbOZc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=b9ZZcpIBGW+YRWtWA6iJZw/yJM9Pdf5dyjp8rj0g9HUACJikOfGtjb671ufB7eMEU
	 bEO2bzcHnPfsreK5gugUEs7XD+vNyMD5F8ziE6IcvVTtsRR8b0sEikKFC2F69wQX5h
	 0viMgSglWioQrHmgYxj5VE02hcsPhjj7PXNz+9wh+DS8aRSngA7a+xzKCByx472+rt
	 2xHTcrCLo++71bfBiQTBOBOJOiS17kgPOft3ei88tBzqnTUgwiWMjl1em3CpFr91OA
	 u1E0T4EwgavnwRB0M3B8gELOpNKQJsKHef1L4BDy8WGIp+b6FLa/atluvHNJJWCVOC
	 Faf+HySCxIOuA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Judy Hsiao <judyhsiao@chromium.org>
Cc: Takashi Iwai <tiwai@suse.com>, linux-arm-kernel@lists.infradead.org, Brian Norris <briannorris@chromium.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Jaroslav Kysela <perex@perex.cz>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
In-Reply-To: <20220914031234.2250298-1-judyhsiao@chromium.org>
References: <20220914031234.2250298-1-judyhsiao@chromium.org>
Subject: Re: [PATCH v2] ASoC: rockchip: i2s: use regmap_read_poll_timeout to poll I2S_CLR
Message-Id: <166315353882.340317.4308348397044706944.b4-ty@kernel.org>
Date: Wed, 14 Sep 2022 12:05:38 +0100
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-7dade
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_040542_495966_27564274 
X-CRM114-Status: GOOD (  12.99  )
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

On Wed, 14 Sep 2022 03:12:34 +0000, Judy Hsiao wrote:
> Use regmap_read_poll_timeout to poll I2S_CLR.
> It also fixes the 'rockchip-i2s ff070000.i2s; fail to clear' when
> the read of I2S_CLR exceeds the retry limit.
> 
> 

Applied to

   broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s: use regmap_read_poll_timeout to poll I2S_CLR
      commit: fbb0ec656ee5ee43b4b3022fd8290707265c52df

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
