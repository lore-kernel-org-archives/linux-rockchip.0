Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21029C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jun 2022 16:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AT/LTmXobGvY0U3SLopxqERcTGatuR+zrqGzR16CMQ=; b=VPIshnI7yFe0ut
	HPBgq0M1bPo7wqQ5k47FmKiwGA2Imoyb64B5f7PrV+cuvt5UerRlUnRN7ouNFT3BfyPZvwsvNvbDW
	2cGHi8bAlQbR4fL90x46NiXUHEQXy7jt/Bsa6yy1ScF9FIhDPYA36IC1d0eb44YC1FV+ibP6Wqdm7
	Po2JtozsiS320eM6ZflLH8pnnewQFgOb0XlTHKt6GVqIseQxkO9XYbCAmtbG50bq2uMbqMgF4s85k
	C3zvXYmWyyGUiIROEbsznroHctQ5G3ujJZx+1QwPp4gCXfJ9U01n/Oz6OQzD0Pj5owT79OX84ZMSS
	xucLHvzmYjQLvUXgMc8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3hE8-006SzP-V6; Tue, 21 Jun 2022 16:59:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3hDx-006SwT-Ic; Tue, 21 Jun 2022 16:59:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 51F2861569;
	Tue, 21 Jun 2022 16:59:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9054DC3411C;
	Tue, 21 Jun 2022 16:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655830771;
	bh=lmiWAcqBGF009l5Gs571NJGOJ8UGNGQUNmtknNwqWDs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uLuwfksU+hlYfMlUGekAGUfxxB6eErGQomsklnOQF2lMY9JMDlr9QnhZ5FdSKwRVQ
	 +TVielA9x07BfwCcx+1rHL5v8ifn7eidBhCvimyWoBSXR7qn8DpHW+APIWB5i6t5K7
	 f6Fi2Cd4BphilV6F86Ws8tw4vWWk7jxC3zgu73IXjRjfAcpNXdbLG30jn/fs5A1sE5
	 WDyH7b9dF4/9PiQSvhG84rYFji4hbHTV2CrFEDa31RZbs/TfcSDT8URZpEq8BuJvy4
	 apKjwdnqv/hYIPkn2ebIxPFO4m7GYT7JzyUdaj18UivmCGa1S03bTWY0DHPNT01tXb
	 v2lR/rcJJbxpA==
From: Mark Brown <broonie@kernel.org>
To: judyhsiao@chromium.org, heiko@sntech.de
Cc: perex@perex.cz, linux-kernel@vger.kernel.org, wenst@chromium.org, Liam Girdwood <lgirdwood@gmail.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, briannorris@chromium.org, robh+dt@kernel.org, alsa-devel@alsa-project.org
In-Reply-To: <20220619095324.492678-1-judyhsiao@chromium.org>
References: <20220619095324.492678-1-judyhsiao@chromium.org>
Subject: Re: (subset) [PATCH v4 0/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Message-Id: <165583076931.271995.9857794745310978104.b4-ty@kernel.org>
Date: Tue, 21 Jun 2022 17:59:29 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_095933_690109_B28A2038 
X-CRM114-Status: GOOD (  18.11  )
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

On Sun, 19 Jun 2022 09:53:21 +0000, Judy Hsiao wrote:
> The patches series is to fix the unexpected large DC output
> voltage of Max98357a that burns the speakers on the rockchip
> platform when BCLK and SD_MODE are ON but LRCLK is OFF.
> 
> Changes Since V4:
>     -- Fix indentation in the driver. (Align parameters with the parenthesis
>        placement.)
>     -- Fix incorrect return type of rockchip_snd_rxctrl.
> Changes Since V3:
>     -- Fix indentation in the documentation.
>     -- Put pinctrl-1 right after pinctrl-0 in dtsi.
>     -- Fix indentation in the driver.
>     -- Remove unnecessary dev_dbg() in the driver.
> Changes Since V2:
>     -- Add documents of i2s pinctrl-names.
>     -- Fix dtsi syntax error.
>     -- Include the dtsi change and the driver change in the same series.
>     -- Ensure that driver gets both bclk_on and bclk_off states before using them.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: rockchip: i2s: switch BCLK to GPIO
      commit: 44f362c2cc6dd0c5e3cb499c4fb4ed45b63a6196
[3/3] ASoC: dt-bindings: rockchip: Document pinctrl-names for i2s
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
