Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A61AC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Nov 2022 21:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+d1Nup6whBV3mysEUwwQ9EpDWvz9o4BoGrSCBof74g=; b=zLr/j/Gr8Q/GBB
	rpXB44/nrJe5LDlpPvxSHad794OzWUOAcE/giMD3unfpf/vmr7nOrA0Exn5sg1rj79XlWhluy1S5Z
	IwZhyBaH62QBEcylEON4rlJm7sZxvpqNHWyrf8tSU8mKr/35EOFzh+Cgc/IkCScGwet0Httm1ByTP
	BuArcshvsBl+qov8bsIhdBDLlahqvDfbfF0vO9BnUCQ2w7ueWe30/GgM7hELZBbfrkPyTxECbjFjV
	K6KrjY7cWvrbP0yNb00unBLmFHdWbVF52tBZlSnnEqpkavTBXTfKohia9ziYNT6tvwVFCGf7mmcHh
	3750yi8IjDS+98bVKccA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oygQi-002Hd2-Kc; Fri, 25 Nov 2022 21:40:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oygQX-002Ha4-Ok; Fri, 25 Nov 2022 21:40:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3107060ECF;
	Fri, 25 Nov 2022 21:40:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43494C433C1;
	Fri, 25 Nov 2022 21:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669412404;
	bh=60OYuwERXmeJ082oTHm4vNOnTl4qAPQKBRpMhBKDRrg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nGITamugCR2YRPeV8yeGPa7FCVN/G1LQAcnkE0xX1oDb80dSSVO4nvB4RaCNHXE/V
	 YTmyxm6GKwkWIX8Id7rvTSUFXJ9BsgyTZ7YZgPkB24z5m0YoW4tXACGf5StxLGE7Dy
	 cF5YYi5g9SQ1uPq2PzrNSnDhosH0UxSXRKhLQ36yFHb6Sp5SUmOHHmPw9j9yGNjUW6
	 V666PpdDk5lOvaAhcwSFq0i236E7+Nx375A7TimVo1GuK6dNS85OEONtV2yPyIWWJb
	 B6FxMooDqFCL3s3PtlP2jsBP1SMugXeN0WKK+4wnxJEhDiSal8PyFe8zLKpa3XG8xj
	 nDgWfrj8KVsxg==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Jaroslav Kysela <perex@perex.cz>
In-Reply-To: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
References: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH 0/4] RK3588 Audio Support
Message-Id: <166941240197.2098666.9516708665413168178.b4-ty@kernel.org>
Date: Fri, 25 Nov 2022 21:40:01 +0000
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-fc921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_134005_858262_995FC9CC 
X-CRM114-Status: GOOD (  17.45  )
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

On Tue, 25 Oct 2022 14:41:28 +0200, Nicolas Frattaroli wrote:
> This patchset refactors the Rockchip I2S/TDM driver in order to
> support the RK3588 SoC, and then adds the necessary compatible
> string to load the driver for it.
> 
> Patch 1 rectifies a problem with the bindings where we were too
> strict about requiring the rockchip,grf property. Most features
> of this audio device don't need access to the GRF to function.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/4] ASoC: dt-bindings: rockchip: i2s-tdm: Make grf property optional
      commit: 1024a5b29e90a18530588b3f161e81cf3fae7dcf
[2/4] ASoC: rockchip: i2s_tdm: Make the grf property optional
      commit: d980004e349049a3fcbffc6096d14896f6a122ed
[3/4] ASoC: dt-bindings: rockchip: i2s-tdm: Add RK3588 compatible
      commit: 0643fd3669f5c33bab5b05a813459a2d00a83465
[4/4] ASoC: rockchip: i2s_tdm: Add support for RK3588
      commit: c619bd4268ff9895760dab303b4eb15ed3d0f7e9

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
