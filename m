Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E192CCEB2CB
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 23:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C85qIvUfZbuye5Nbx/OWta/dYdnE4nql7y7uZWVivH8=; b=YJeADoplXOUzGl
	/Dm/E4w001O7OocRE3Z277gL8u3X8zflYF83cYooNs10Z04OmDj+WUSZyeltrEkMEi8VLhrakc9a6
	vCbA00OmfTxTFheE3+a9ddWpLkU3hhUngtWi8GNdeG9Tn9Mnam0mkSKsjtRBoH2T5R6JEUs8Tqglz
	EI+61EKPqxIdTFvzX5TENV2fG0xLlcvySjNJoKQWdkk/GNAS75ibiExpdaUxEd3gAUZHP5tbBrUjS
	S6ZqQZfrwYkkbbaeghsPh9DNjdXkjdGECiToC5yyn1/pVqc91KC7PPKx/b4LpTGXeeHzP2CzK5ea3
	dm1iaQiLVrBuP0AtVdIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svQC2-00000001ARB-0fQi;
	Mon, 30 Sep 2024 23:52:42 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svQAo-00000001AJ9-2kXf;
	Mon, 30 Sep 2024 23:51:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A39A5A41B14;
	Mon, 30 Sep 2024 23:51:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71CB7C4CED0;
	Mon, 30 Sep 2024 23:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727740285;
	bh=emCc3vhDE46ByrVx4QaFgAH7/jlJe0viJuSoIgQuEZA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IlIFyWjQDNj3hP0mSxeGZ17Hq0qJ1ABXPPKdxiLii6NUvbqLlGxL9lsdXRzb7PB3G
	 YMaJMQ5EpO4AjRunm+WhmblqY9DJylbFDXPwNKqoE8jUg26gJhDp28gNtOkUnIqTo2
	 h8Rcb6N5Yy+j3ZGWe2r4N+ww5rlKES2YMrgg5hY5HS86YhLhxm1e7tczQ0Kxq5dBIe
	 a6qCof7cPxT7PWmZO8jGoXKsoHWfOy+ui7L98gIUVsR6bkRcQXSXnTMOtic3FBQcZu
	 B1be5fdMPA4Agoq4Q4llJUDeCKWbaDrLbh5ZHPBxFcUNJ3XEjnNg/Lmo0jskUREcqz
	 hvxo2q6Ndx9PA==
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, oss@helene.moe, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <cover.1727337732.git.dsimic@manjaro.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
Subject: Re: (subset) [PATCH 0/5] Improve error handling in Rockchip SPI
 drivers
Message-Id: <172774028424.2264837.4595727034314147956.b4-ty@kernel.org>
Date: Tue, 01 Oct 2024 00:51:24 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-99b12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_165126_794599_60316A9D 
X-CRM114-Status: GOOD (  13.95  )
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

On Thu, 26 Sep 2024 10:38:11 +0200, Dragan Simic wrote:
> This is a small series that improves error handling in the probe path
> of the Rockchip SPI drivers, by using dev_err_probe() properly in multiple
> places.  It also removes one unnecessary check of a function return value,
> and performs a bunch of small, rather trivial code cleanups, to make the
> code neater and a bit easier to read.
> 
> Dragan Simic (5):
>   spi: rockchip: Perform trivial code cleanups
>   spi: rockchip-sfc: Perform trivial code cleanups
>   spi: rockchip: Don't check for failed get_fifo_len()
>   spi: rockchip: Use dev_err_probe() in the probe path
>   spi: rockchip-sfc: Use dev_err_probe() in the probe path
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/5] spi: rockchip: Perform trivial code cleanups
      commit: d87ec94e48dd2da27fbe948f2dc6c8fedc98fff4
[2/5] spi: rockchip-sfc: Perform trivial code cleanups
      commit: 6c510eac1528d8939bad8b6df72c7b23ffec8c25
[5/5] spi: rockchip-sfc: Use dev_err_probe() in the probe path
      commit: 1482c40b440fa58f956bc3e1ef3426e0cdbc09e0

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
