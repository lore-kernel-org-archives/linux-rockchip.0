Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8BF9CD98D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 22:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKsLz2lM8z65O8eWONSoVabrXon2IMfHpE1CoDf9dXg=; b=35+6bDh0/setKN
	37uXzTnJ0+t5w6lljuP0mwY9KrznkN0gh+EcEFPCo5f7X+ttywRuQiyaBOFkiEltnkymgxK4YDUgA
	6lJtSRYknksXfZYk2DtxpNOeDSGqMk84YQw/3MigxK9Tfo+PWNqZT/ljGd3CLtrU3M9kP9XUrk0Z2
	I8+Kk5TwMoenIFwH9WRN+JssF1fZ7/HoFJwg8Ekr4RlO3o0ROVk/mO9swmZGTlcXNgf1sWApAs8xD
	9wnbw949ejQYhcijIfRNrNIV4moqV/0/iEf3Bat5FzMAtqncdm29lti8fM5p1cJUMEy2Vr+fenH1F
	D5JY9TZcd0834RR/MFEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYACV-0000000BeQl-2uQE;
	Fri, 12 Jun 2026 22:18:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYACU-0000000BeQX-0Qow;
	Fri, 12 Jun 2026 22:18:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 65A6643975;
	Fri, 12 Jun 2026 22:18:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C06251F000E9;
	Fri, 12 Jun 2026 22:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781302685;
	bh=Z/61KFJYWXrOQyCZbASrU+Xps+NN44QMTC3+w7LhyNQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=E+kRQQ2Jz8K60h4THBnTGpf9+XCJ0p9sE4l8/jsuXsWbB/cti9C96Rljdw3a/6StE
	 wx3F1e1j0k0Ii1NZfyWPxlQRGpYZtu5zvGM0W2QZfhvnXhI4caNAiGjtviZkjcTDDD
	 IKquov6oXuYb1HKuiZmkbPX9M8xcY4sl60Yg87oENpd8p4qo9ZGH/vpRvLjmN8f/mO
	 /zUznIosI2mO2Gfc36Zqmlg/TNJiIWLYRwy7syEbHmqtkljMXP3RLGI9tC6Y4m33hx
	 NxrZP45XIozxNYtjoGpXiAF9w9QmoDj1wqEqSgTnOIjCV+/5VHRsUs9rwrZ7v8cv5N
	 3Kg3nE6qO6E3g==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, phucduc.bui@gmail.com
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 devicetree@vger.kernel.org, linux-sound@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260602101608.45137-1-phucduc.bui@gmail.com>
References: <20260602101608.45137-1-phucduc.bui@gmail.com>
Subject: Re: [PATCH v2 0/5] ASoC: rockchip: Reorder clock enable sequence
Message-Id: <178120738665.484538.15946340325623351219.b4-ty@b4>
Date: Thu, 11 Jun 2026 20:49:46 +0100
MIME-Version: 1.0
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1918; i=broonie@kernel.org;
 h=from:subject:message-id; bh=0NZoUi4yTjyjN8hDy2uu0v8x/mi/5bxtA6qsUXoWtT8=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqLIWYYKm9dcS3DYn50RUL4v7kjRB1zbjoRQy7j
 WrL5egJEiqJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCaiyFmAAKCRAk1otyXVSH
 0DD6B/9NXGfMDpD3AQKfvqaQ35X+zUWCxNdfvPuFh97+ZGUgxMYKtYMKfbdLBs2wtkbMgB92mdv
 JEXpPBbAdaXnt3Z6WB1YNAtWJZHVxX1b5fBNULp6LHyAhRoXPtDhpGbZ0FgW6Jef6vI0UwB4QVC
 nxPszabzUQ7gc1z1xi9JVuevsYZ6d0BBG49WguRPQ8EerlSHyMs3UpEkkAHmfBwGwg5H4J5BKxM
 zGjQceKZVYs4ReVGMP1as4k3EBQ/qjS60QoewXqws9nprfRiJPtzEIpX7X1kZo9EkB9msMYIbWm
 DvQlJvJVuilSFcr65g8dYawk6T66ujxDPVlIpsgdRtD9aNkc
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
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

On Tue, 02 Jun 2026 17:16:03 +0700, phucduc.bui@gmail.com wrote:
> ASoC: rockchip: Reorder clock enable sequence
> 
> From: bui duc phuc <phucduc.bui@gmail.com>
> 
> Hi all,
> 
> This series reorders the runtime resume clock enable sequence in the
> Rockchip SPDIF and PDM drivers to enable the bus clock before the
> functional controller clock.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.2

Thanks!

[1/5] ASoC: dt-bindings: rockchip-spdif: Correct SPDIF clock descriptions
      https://git.kernel.org/broonie/sound/c/d057cbc218ac
[2/5] ASoC: rockchip: spdif: Reorder clock enable sequence
      https://git.kernel.org/broonie/sound/c/74d3f01a90ca
[3/5] ASoC: rockchip: rockchip_pdm: Reorder clock enable sequence
      https://git.kernel.org/broonie/sound/c/3168721d6ec3
[4/5] ASoC: rockchip: spdif: Restore regcache cache-only mode on sync failure
      https://git.kernel.org/broonie/sound/c/3546e9aa691a
[5/5] ASoC: rockchip: rockchip_pdm: Handle runtime PM resume failures in set_fmt
      https://git.kernel.org/broonie/sound/c/ee7b5f7b3933

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
