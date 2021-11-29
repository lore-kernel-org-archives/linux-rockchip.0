Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9075C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Nov 2021 16:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xl7GVxw37cOw+d3vC7XHT8mVe05HrJ3zMm9gC+1YzM=; b=uO2X/li0q2tSaZ
	PHHgO8MgIKcc7oWW9jP2piTMI0XkJm+UUetcGqBOFGAyV/nRkuCHnR77SU+kMTJ2BjutqMtJ0Mj4K
	w0+KZNQpScmn9nchKVPSCei2JdxlrOBtLWAhRF2q8l4BzX1TEPk3BfaAN7F4N1BjoD3faibAWGuH6
	/XyX6keJuFDrRUi71lSXad6WvzueukgKyuk6epN6KZtdj25nprIdciNfOMBBc2VdqggeonMCeteRH
	RSy1T57Jd6DJqffIflldEjS4haEXPpkF+B+2YW7Yq1OC0m4f5ZP9ataFDyuWISerIoWrNpPS5W4BA
	WqVNLZ9d8YsH7NO1WgpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrjnH-001TD8-Ch; Mon, 29 Nov 2021 16:46:19 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrjmx-001T4V-5X; Mon, 29 Nov 2021 16:46:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 9CB1AB81215;
 Mon, 29 Nov 2021 16:45:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E56DCC53FC7;
 Mon, 29 Nov 2021 16:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638204356;
 bh=BDOCaXVF64qmbKixmffTWgJrkuezOZ8u43wxCYDH+Gg=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=G2PyIpIEtaa89eQ6Q/AfTZ1/UXMT2PvKvhUAdSFEAeeQ9clvKKjiTOcUH56XK/uUJ
 CVQEgs2tDHv8Amsavg1urOKwXyAauV5mN0daMZmo2O4C742eTw+2fwllbDUOqsD8i6
 5VoaM7h1I55M3sEJbhinEOE3eQlluFxNBZylFhWtTE7jmz9uU4rOl+Ru88utYiNVWt
 4eMf8iVp+JJcAuH78KVCHqooBwyDY90Ub7/AYDFeVu6taJmDI3w5JxLxpUDhqlCQxO
 eb/4zL4ywXY/pUsqCvQXj5KKzetnFyem94/FU01DMgpFz+HcVj/QUztPw065K8TAns
 eCcnE4sfMGXfA==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
References: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
Subject: Re: (subset) [PATCH 0/3] RK356x/Quartz64 Model A SPI
Message-Id: <163820435465.1716901.11036840063339929110.b4-ty@kernel.org>
Date: Mon, 29 Nov 2021 16:45:54 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_084559_375624_C376A259 
X-CRM114-Status: GOOD (  14.85  )
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

On Fri, 26 Nov 2021 16:43:41 +0100, Nicolas Frattaroli wrote:
> The first patch of this series adds a compatible for rk3568-spi
> to the DT bindings.
> 
> The second adds the SPI nodes for RK3566 and RK3568 SoCs. The nodes
> were lifted from the downstream vendor kernel's devicetree, and were
> double-checked for correctness.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-linus

Thanks!

[1/3] dt-bindings: spi: spi-rockchip: Add rk3568-spi compatible
      commit: 07fb78a78de4e67b5d6d5407aeee1250a327a698

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
