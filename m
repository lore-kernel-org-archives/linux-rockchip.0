Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18C77C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 17:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEIQuBbDqXHyPa5fegmrIFWLW7d9RZy3jS8GixhF53E=; b=s1UmWLI2wRknQD
	dOeKt0NaRrD6aVCay4Hb4J/9jcmTLro9uzItDD7P1jd0yTKVLPzQYzBl+lHrhjPgXcXsAiwdjs9bB
	AaqTGsklJdYoU9zLsfA7kP1uh+NkwWBaoNzUQLSQpT6dwxaaKqMAU0adsmwT6zFg8FOAnwiS6sdtC
	aNQqofR1UigCmGFiE/MYoCuBwkzcr5YjKtIwzOsmnmm7zf1kHysaVZAFzgCo8hJjfYNUGeUFdXxBC
	YFDdbSXEdw0IPUTsN2+LM4bWA5S4R+qqkU+IKsPlwlWy1VCWDyxelXvuh/RMpivz/yRI1YbQGkZtR
	XRmFtVFuifXSGHyd0r2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj2Uc-00AfDj-MV; Mon, 25 Apr 2022 17:27:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj2SG-00Adzn-FY; Mon, 25 Apr 2022 17:24:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 02CA961583;
 Mon, 25 Apr 2022 17:24:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68287C385A4;
 Mon, 25 Apr 2022 17:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650907495;
 bh=+80wHVodptz//ofhkGGYWEEAicTPsSLWn5+WM/nG7v4=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=hG4sh8Adq815IjPH7rdRf8US4h3Qr/fh9BekQURg5sIFT5j1PUnNmtAmQ1hcPTche
 W8tzXKnhlZDoQj7LcED+fVZas8hrZORY2tafZ8QKSJ7kJVCfr9Yj1Kbm8aYsy5PVtl
 Q68P+Oa9HpGK3mUcmaph7kAGU+ANM4rFFUFP3zpTH3cgdMDZjXdjQpyNi5VWRsNgLJ
 zYTsJ39bHxbmx0bRoJseuv7+ci/2zOVLI74GnLxRQs4tAI9iwYvkIbeE6N3H9Cmb0T
 kDm3SXSzhuzM/Ztgn6rMjatmKiRjfosh2bjJP291O9WehxRP4IVl03vQt7R+vUHR9F
 qKFBDKd5cpz6w==
From: Mark Brown <broonie@kernel.org>
To: luca.ceresoli@bootlin.com, linux-spi@vger.kernel.org
Cc: chris.ruehl@gtsys.com.hk, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 heiko@sntech.de
In-Reply-To: <20220421213251.1077899-1-luca.ceresoli@bootlin.com>
References: <20220421213251.1077899-1-luca.ceresoli@bootlin.com>
Subject: Re: [PATCH] spi: rockchip: fix missing error on unsupported
 SPI_CS_HIGH
Message-Id: <165090749413.584172.1969660470967557422.b4-ty@kernel.org>
Date: Mon, 25 Apr 2022 18:24:54 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_102456_628439_A15B1256 
X-CRM114-Status: GOOD (  14.97  )
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

On Thu, 21 Apr 2022 23:32:51 +0200, Luca Ceresoli wrote:
> The hardware (except for the ROCKCHIP_SPI_VER2_TYPE2 version) does not
> support active-high native chip selects. However if such a CS is configured
> the core does not error as it normally should, because the
> 'ctlr->use_gpio_descriptors = true' line in rockchip_spi_probe() makes the
> core set SPI_CS_HIGH in ctlr->mode_bits.
> 
> In such a case the spi-rockchip driver operates normally but produces an
> active-low chip select signal without notice.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip: fix missing error on unsupported SPI_CS_HIGH
      commit: d5d933f09ac326aebad85bfb787cc786ad477711

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
