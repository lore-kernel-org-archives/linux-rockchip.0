Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C048CD3448
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 17:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9//IGFBULNFi50FKKnHbKp3/pi8Y2BYJqKUS2DRAcOk=; b=be06eZFAw/aznK
	1U962jVH3nVhr1jlwTGHZfU0bgrWeL1gul1U2O0tKwWm8WztgS3HX60xqmZdt+8zelSURE2GCnh9/
	oNmPIL3PdSAhAwppBotfE7df4HQqCTgTA1JqWXIR549HVAiL0sLSrIMAmpIgFnjZJNO/A9hQP5HUu
	Wtjk5xl1yTaA2lcTZRWMBjyitgaNFQdR3/OQ8wdb7/O8aOB8/eNe+JhK2bJYXLCK2vWCXYlpf4N24
	/dDArg6Muh6jBdict/iJNuCSmiEuJkDn+8rL7TzTnpP/RFjLB2ehFFaLEJxlJmQdrNjuLvOO47Fu7
	U3l/gLq0l+D2xxFY/ymg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWtp-00000001E49-3vvi;
	Tue, 03 Sep 2024 17:01:02 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWtn-00000001E3L-37p8
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 17:01:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B4E5FA429C2;
	Tue,  3 Sep 2024 17:00:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 860F4C4CEC4;
	Tue,  3 Sep 2024 17:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725382858;
	bh=PIJu41yn4Sd5U8mu8S6DzRgQCPut4PokxRbuG1jFcJY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GBLrcyHorxNdqHFAO8G+tf4khZFqCwawwdWD8cDZt6r8BFe9I0nur/q5ILnAA2Opg
	 DthTa1uUqDIYa/yAlomYUjORTpkhBQBcwEnzQX1K+NwotrkjSU1zvHaD63sLNooz0N
	 cXtQykk2fja9XhpfjI+NNyieoeccJRXWioALXnU7xyKw0dORDGBtMVUMhB36M7Rcx2
	 EOnhT3aythFdv8ZRGzVefZKJ54WQ3doPfwcyqlwNdJOpSwNPtGXEqZKRld88HAkR6f
	 DhWUngeADfk8Jw20D4WDNn7PK1aHtdXYPfGqODZg3YpzeOZTjDsizwOGGvC009lsLX
	 5KHIGkw2PKquA==
From: Mark Brown <broonie@kernel.org>
To: Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org
In-Reply-To: <54bbb9d8a8db7e52d13e266f2d4a9bcd8b42a98a.1725366625.git.geert+renesas@glider.be>
References: <54bbb9d8a8db7e52d13e266f2d4a9bcd8b42a98a.1725366625.git.geert+renesas@glider.be>
Subject: Re: [PATCH] spi: spidev: Add missing spi_device_id for jg10309-01
Message-Id: <172538285727.89477.10527490026627155111.b4-ty@kernel.org>
Date: Tue, 03 Sep 2024 18:00:57 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-37811
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_100059_885368_E074F776 
X-CRM114-Status: GOOD (  12.50  )
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

On Tue, 03 Sep 2024 14:32:27 +0200, Geert Uytterhoeven wrote:
> When the of_device_id entry for "elgin,jg10309-01" was added, the
> corresponding spi_device_id was forgotten, causing a warning message
> during boot-up:
> 
>     SPI driver spidev has no spi_device_id for elgin,jg10309-01
> 
> Fix module autoloading and shut up the warning by adding the missing
> entry.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: spidev: Add missing spi_device_id for jg10309-01
      commit: 5478a4f7b94414def7b56d2f18bc2ed9b0f3f1f2

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
