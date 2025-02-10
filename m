Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A3C1C02198
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 18:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMwNPufjal5+6CcU5VGyjCf+UAfs7XgZmsE+c9jN1c4=; b=uSEMKydex2JRuA
	bCvh8DiNefMjAQB8LqRj2wxF4h0fn9xEudfxxdCH1ySv/IMFQ//VtA9ThXSw4HQPslGSRSjJT2OJO
	oMyQuhXAms2g3Ry9I3FxOhVDJiiGcu7uhmV2/SQL2B3+HYJIOriXNlmvDIbHn1B0s3NRrG50E4UT3
	eINq58ZqMa6iYhVkBV78fXEkdEwv7pAYFQKwnMikeETbNKWmG3u184vaRnwe+oxRbD4RikuuYj0aF
	3fW0H0ndq5SX4IV9qg75onYp0H48caEVyyVVSNphvXqySME0Jv1HFCmKlG5V5YbSdJovdo/fZYAcK
	IcvPDTScln0SODYvV0sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thYDw-00000000rNc-2tZE;
	Mon, 10 Feb 2025 18:09:36 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thYBM-00000000qwy-1UzG;
	Mon, 10 Feb 2025 18:06:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0C672A41DE4;
	Mon, 10 Feb 2025 18:05:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 318ECC4CEE8;
	Mon, 10 Feb 2025 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739210815;
	bh=9exn/4ZsF5vuvnX6J4sI+LMbw0QAxfbaUGw2qKxET7s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bMzbYXU7pAqM8vaN+LfTd+RHouNCUWylspD71+355yoGwmaqVxbZL12NJ5ABmgfny
	 OjA5s/GjFxGA2nmlceA4IoJBJANqaHtJkqZGpzT9JumSEi5699kTFaOQM/bHzKd7fG
	 0lNRB1TTWq4JqCJZoxtwQUUIF1+CqUln35kgfB8cVaOHyPfcbugv+0zfCJ0tEZqNoM
	 8IHIhgwex9NPAyOyINexrKA+vVE63tPIgVS+ihcUB9tv1dMPnnZYtyac/SVZUhVFnh
	 lHTZA6D7saT8qrqcKn/7fBQUsj71e9i4HFlwQZdMtySeYXTLZZqFbD7ugEq1pw5+MB
	 c6+tMrgm5ydcQ==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Alexey Charkov <alchark@gmail.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250120-rk3588-spdif-v1-0-1415f5871dc7@gmail.com>
References: <20250120-rk3588-spdif-v1-0-1415f5871dc7@gmail.com>
Subject: Re: (subset) [PATCH 0/3] arm64: dts: rockchip: Add SPDIF on RK3588
Message-Id: <173921081291.95415.12801821205911755480.b4-ty@kernel.org>
Date: Mon, 10 Feb 2025 18:06:52 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-1b0d6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_100656_469569_6985DB11 
X-CRM114-Status: GOOD (  15.61  )
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

On Mon, 20 Jan 2025 13:01:26 +0400, Alexey Charkov wrote:
> RK3588(s) uses a several SPDIF transmitters which are software
> compatible with those found in RK3568. This series adds the required
> device tree nodes in SoC .dtsi and enables the dedicated optical
> SPDIF output on the H96 Max V58.
> 
> Note that only SPDIF 0/1 are meant as externally connected outputs,
> while SPDIF 2/3/4/5 are internally routed to the various display
> encoders inside the SoC. Thus, using SPDIF 0/1 only requires their
> device tree nodes to be enabled (provided that the signal is routed
> somewhere usable on the board itself), while the rest rely on driver
> support on the display connector side and are therefore not touched
> here.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] dt-bindings: ASoC: rockchip: Add compatible for RK3588 SPDIF
      commit: 330cbb40bb3664a18a19760bd6dc6003d6624041

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
