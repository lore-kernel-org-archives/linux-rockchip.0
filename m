Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A5DFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 10:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlWet+dfjkWCwhj7SlmnbBvUmCFzANP6tMI5fEzlONw=; b=d6VjVfbkmxmJ3B
	9xBICSIhEGpywwBFcRaE1cnHwABtq/ckBMEhIIFnv+bXd5zHkn0RN9wv5wzP7cJdJ21QyLCw8OC+b
	kukqsQIJPe6sdnNUawgT8NHczYncbLytxu/P03aOQb7kRu3/Ee5XXdM97PJXmuYBnlBstGoLG1WAF
	ZsxxrHm4RQyWaflKChrUmCf6ztVmEIDpmxg0x2zX4iVtX+Do5MSOe4eKF/Lqrka5SROROn/SNbGuT
	c3TAVur91y/WGNL7XkdR6+ODpSv66au1YGGR+rNAIkljqXhDRWlaljH/E1wAMG1QBDH02Gmrl9wGd
	1oaKSwJ8u011ZuJ/lHyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCIx4-007Pcr-Vn; Tue, 25 Jan 2022 10:21:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCIwh-007PWh-TW; Tue, 25 Jan 2022 10:21:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 92F12B81751;
 Tue, 25 Jan 2022 10:21:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE2B5C340E0;
 Tue, 25 Jan 2022 10:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643106061;
 bh=wE0+LyL9OO9k4KStNlbPC+R0zekIivlZyn3e+XbniJU=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=lK5HG6+yprEw9b2YOjKBzCBcDXIoaDO/yWMfpv8Jkc4fKqSAaGiDjF5fR/qTHCD2I
 du3z+Gol99X72jgDf9eNOx9VQoM7P8Nqje0R3fvTt8txicv4dvNOp1DMtAJTPFolBj
 H16xI3+7Ov9jONGntXhKgcYEgq0uBk4eJajd0Vp7z/1Di/ZXmcwhfQqyIaZowWc0Wl
 rvAdAGyOqnrPyh+rRzG7KPsukmmyJTGF1uz34fJKPG7/IZtyfWO4HkXmjaItRS9OcA
 WoA09mWuCWZjgISGkqFSfZXAzTuwPTtD2Q0YKCnJE8ojkEWGtxFe5Urmw5MRp15YdE
 iHiHZqvfCG4gA==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
References: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH 0/3] RK356x/Quartz64 Model A SPI
Message-Id: <164310605968.75043.351730606633700396.b4-ty@kernel.org>
Date: Tue, 25 Jan 2022 10:20:59 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_022104_141230_5BA47DFE 
X-CRM114-Status: GOOD (  16.22  )
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
      commit: bdac3bbd0dc63873a9c606b8e4f814e6d61d288d
[2/3] arm64: dts: rockchip: Add spi nodes on rk356x
      (no commit info)
[3/3] arm64: dts: rockchip: Add spi1 pins on Quartz64 A
      (no commit info)

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
