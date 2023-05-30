Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13D87C77B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 May 2023 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kez1zu4e0ZB33Rovvg5fOY4WGWlWCyPT9ubrzZJt4Mk=; b=ifw2fun2Ua0lMl
	2Z8445+FoIj8FoVQbiap270SKs0uee5Yp7/3rdZADJNVCsEH6aiR00a58Bqqng5wkBTt+EQs3eKDk
	z7FrFyo0VrpaYRgtLwtXMAt+7jNLpJCSsZTBPuL9FbsoXSPy1BzHMJT88xWxa9A1/p8i2bzopCM++
	Ic9aL3uapVG7p9m7GfV6+MT2aCYsueLWGOr7f4j19cZUsfo6DKD8DejA2xbacF8yeG8OtwPJ2oY5L
	fOIBr1fQ8YQfYefPyNl11CuV7ipQVE8gmAg/ewBrwg4YD6on/FqadaTLp8Cl/2fmowtC1r0lkP6k1
	lF5XcjyvQDsH+ImxCC4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q45EZ-00F0L4-15;
	Tue, 30 May 2023 19:42:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q45EV-00F0KG-2I;
	Tue, 30 May 2023 19:42:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 81BD6630D5;
	Tue, 30 May 2023 19:42:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2055C433EF;
	Tue, 30 May 2023 19:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685475733;
	bh=C/ZCDt9dxkFqBdenxsotP/gQkEWd0TJC2yhywFPrxlU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=K93thLG6dvDqETIhFEajld3t2N4JSaO+9Xro4KcquZXq1aN8xBW+sXicFMELWgaLN
	 pH7eC573JWpTDi9D957EgYNr4EObZ099H9tylABVhlNPWiginmSVtQalMUMe7LzTSg
	 B+My6btPtnLo87e2Akm6IJ4pUY5VJ7eWcfWTemfBXPUkOKZUb+uzyjw5+5yZdIgVrq
	 x9X35u5rfa/oLL3HeFZY9F3/sj2eOg3MarOTrLMKtgJFhyW3oSNdhqpR80NrGqe2Md
	 0Olhr1iNLouKS4XBHXt74Mw4/0YZWyVOU/f7YG+9R5Zo8OoYcVIdLUP997A/59oh4H
	 54LZ17CBqO6AQ==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Zhu Ning <zhuning0077@gmail.com>, 
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, 
 Charles Keepax <ckeepax@opensource.cirrus.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 David Yang <yangxiaohua@everest-semi.com>, 
 Daniel Drake <drake@endlessm.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 alsa-devel@alsa-project.org, kernel@collabora.com
In-Reply-To: <20230530181140.483936-1-cristian.ciocaltea@collabora.com>
References: <20230530181140.483936-1-cristian.ciocaltea@collabora.com>
Subject: Re: (subset) [PATCH v2 0/3] ES8316 audio codec fixes on Rock5B
Message-Id: <168547572955.1446927.6113726229906083649.b4-ty@kernel.org>
Date: Tue, 30 May 2023 20:42:09 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-bfdf5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_124215_797689_3427B2D3 
X-CRM114-Status: GOOD (  16.37  )
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

On Tue, 30 May 2023 21:11:37 +0300, Cristian Ciocaltea wrote:
> This patch series handles a few issues related to the ES8316 audio
> codec, discovered while doing some testing on the Rock 5B board.
> 
> Changes in v2:
>  - Preserved original dB gain range in PATCH 1
>  - Rewrote PATCH 2 conditional statement, per Mark's review
>  - Rebased series onto next-20230530
>  - v1: https://lore.kernel.org/all/20230524074156.147387-1-cristian.ciocaltea@collabora.com/
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: es8316: Increment max value for ALC Capture Target Volume control
      commit: 6f073429037cd79d7311cd8236311c53f5ea8f01
[2/3] ASoC: es8316: Do not set rate constraints for unsupported MCLKs
      commit: 60413129ee2b38a80347489270af7f6e1c1de4d0

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
