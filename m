Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 800A1C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jun 2022 14:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeMebgJih+EZ8zmzo5zAX+wpdzuP6oNpB4VKXQr5HzQ=; b=FZj36PqCDAaNag
	1/2SscYheds6uVWyQ9JkCOXuiQjZhnF7fKck/9TWDOo6Sro1VyEpskYmO045etpTIzdiSoL/B9Pua
	sUvdwtTJ/iBVHZoM3k2QIaVMpcRq2hMMfdfm4EZGHGdEcobzwmzqtjFJQb4/pEhMwkngqoYB6liuq
	4MwVqXXJkwhCDMkNecBbIdpPF/YlZxsbRyrTzRWeVJPE8dYrk8WNd3m9c1RdGh5LcQJWqeToqUvmE
	cgt6CKezRd95hlPxJiKOEBm33N7gFfhqxbtD5qIm8J/X1/L4EDMf/uS7U6jnJBzi03Wev887bZ2in
	7ln8ezFyLKwkduS0xotQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6YLC-00COZd-SV; Wed, 29 Jun 2022 14:06:50 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6YKR-00COEG-Mi; Wed, 29 Jun 2022 14:06:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2F78CB824B3;
	Wed, 29 Jun 2022 14:06:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5FBFC341CB;
	Wed, 29 Jun 2022 14:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656511559;
	bh=ZdjWjB54cbHRycxjLjITQrOn43M908WL8or1/9HBUP4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=fU2BuCn79mheeDdDSP3MX6LYQ+5ckPhDuYaqjp8b1HSv4cqiAXAJNAeTOa9TyAs6K
	 Q3iRARr/muciSSJsFU7N7vAOGSd/FgJB5CqSYLyV26WGaGpUJxPbz1L06vtQyqiCwv
	 TVQ3NNbgZM84meUWk09BU+U+4oH39ksuPITo7PGRDqG//Dk6hw/3dUXx7S1RhBhjLk
	 Mos9iiiXXADkMbS21xZIL3BCJyIRqkOeafCV6NfGDuC3kw4qzAyc7+hRq1ztBH9hEL
	 nhlZeS3sWm1R+6U8JgJXlLy3x6ZqG9/ZsBHhKBsbbAJGf3dqH9pZ/czKHtNKl66bSy
	 +ffyJlifgrTrw==
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de, judyhsiao@chromium.org
Cc: alsa-devel@alsa-project.org, wenst@chromium.org, Rob Herring <robh+dt@kernel.org>, briannorris@chromium.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>, Liam Girdwood <lgirdwood@gmail.com>
In-Reply-To: <20220629080345.2427872-1-judyhsiao@chromium.org>
References: <20220629080345.2427872-1-judyhsiao@chromium.org>
Subject: Re: [PATCH v1] ASoC: rockchip: i2s: Fix the debug level on missing pinctrl
Message-Id: <165651155754.1437597.8598340692080624115.b4-ty@kernel.org>
Date: Wed, 29 Jun 2022 15:05:57 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_070603_926905_F4182833 
X-CRM114-Status: GOOD (  12.34  )
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

On Wed, 29 Jun 2022 08:03:45 +0000, Judy Hsiao wrote:
> Use dev_dbg on missing i2s->pinctrl as the pinctrl property is optional.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s: Fix the debug level on missing pinctrl
      commit: 48620f17e071060092197a09663a1c1fe6207829

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
