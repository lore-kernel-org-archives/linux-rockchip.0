Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B17F1C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jun 2022 14:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+VyvNS+GJDqONgCyrG2UGrV3vrVi39Hj9ZbshHLHTI=; b=LaXMLz89SxsLtc
	5NpCFdOfwf3lK2l5GsbLc6cR4fHDOoeNTzC0YTmHmdIwP9zYS95XVlFxr3Dfoe3rFY3BrD0aaaQ9W
	iGpq3x+mT7UzMSINjqUROrzfCKmzrcG/S5/p1R06frLuBtgrfVAKp/5PrP2PqR+GRfNSiRnpxw1QX
	8ZFDv2q1vft4FahOcv0nWqgoH5nmSL2CxsKtCFxdxIc2nQiUjgTAPi+r1sIeivFHaV3VqrsuZYZwH
	TK2WS83Js3Mnsd8dclrkdr849RptKGu0P/EeV1lhnv6RM2dS4btDakJOaOUfvx8oW8BRULEgSHdMN
	6iXtwlLcfhvVxncIGINA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6YLD-00COZr-BU; Wed, 29 Jun 2022 14:06:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6YKS-00COEV-0O; Wed, 29 Jun 2022 14:06:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9DFBF61EB7;
	Wed, 29 Jun 2022 14:06:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56FFDC341CC;
	Wed, 29 Jun 2022 14:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656511562;
	bh=hQ4GAhXdMgF49WKm+/UqfK/ikb/wVg3umyPPuTJc5B4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hiVpqZ5ooSG23Egrz8t0eRL5wRs4x59r5mR3X6pG1Biqem7zx+KjCFGD5aj3bnSLE
	 evU6B9jOfOUqR6VyXKFqDfwxWniVsJmlTh5z7C/TsrAa5j5VwuMv/4xs22e0Uq+N6e
	 bs35PYcgw2+ZnlKf/gPY0IxBi2CVBlIXc0D6fdslkM5VvmIt+eb4PqRCqCb+pEaKBT
	 LJlpyWa0XjiPAF31i9So3nKSCyiLOfMzxUZ6N8awFxNi6529aFAecYXIvtOdbH8gAl
	 hH6UQKeineRn3/Om8AnmpfmZSQwFg3VVcI6LqRDi65zz9k9vZDktcL39E172GJWUiK
	 OQiZcKk7860WA==
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de, judyhsiao@chromium.org
Cc: alsa-devel@alsa-project.org, wenst@chromium.org, Rob Herring <robh+dt@kernel.org>, briannorris@chromium.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>, Liam Girdwood <lgirdwood@gmail.com>
In-Reply-To: <20220629080421.2427933-1-judyhsiao@chromium.org>
References: <20220629080421.2427933-1-judyhsiao@chromium.org>
Subject: Re: [PATCH v1 1/2] ASoC: rockchip: i2s: Remove unwanted dma settings in rockchip_i2s_probe
Message-Id: <165651156008.1437597.7188024938057495855.b4-ty@kernel.org>
Date: Wed, 29 Jun 2022 15:06:00 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_070604_128138_E7367A9E 
X-CRM114-Status: GOOD (  12.16  )
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

On Wed, 29 Jun 2022 08:04:21 +0000, Judy Hsiao wrote:
> Remove the unwanted dma settings in rockchip_i2s_probe.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: rockchip: i2s: Remove unwanted dma settings in rockchip_i2s_probe
      commit: d6910eaa6fc71c0307e16b310a07cdb347d26d7d

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
