Return-Path: <SRS0=t2gw=O3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F1C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 21:38:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D8B160EBD
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 21:38:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3D8B160EBD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nS+inJ5NpLW4VG4NEH1d59MFd6pc+8IuhpoqTHYcUfY=; b=GHveBeGmYD2iNH
	24b6YrWxrmOLSnOt+saLwIPJ52otwBNgf44AL7/cvUSUtvqw6v1LslfDssBtCInRmso10UjeDE/QL
	BIBR22Mw9rvZTcBZHu7QPnvcYEsVWd19swyLKVTcz/sZksHtKkB3weUKyGB+Ha6AoHgfjcMOx+CjY
	fsHwFoS4WrzE+jRik7FqPyRMPy+DtN/2vwpFePLgErHJJ/Cx+xP57yTBx5fazpd/u8PfOozPMlinK
	SzcM5tRZHSsFe6KuoO8iykleK/FV7E0DYtNMCGco24zAVppJyOVdc42wf2EKCkPjty8tZ61hq9UTo
	8YdCCOixxNpK3Twrh9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYb66-000pEo-Dd; Thu, 07 Oct 2021 21:38:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYb5Y-000p9k-5R; Thu, 07 Oct 2021 21:38:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9CF81610C8;
 Thu,  7 Oct 2021 21:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633642683;
 bh=m4HJANNOPPFV57mqo5iLQB7fhTk2U2/wpkQ5dIfb3Ww=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eB+mq8je9u+SYMX7yuDyZRztJ1+TEQHdhGPN+qrZWD+uCtA4BBZw1ndVfDo5reiGw
 ihje9A2hvtw0CFRlF+uuNO/yr9Kw7FPthacZASuLW/5ZFPtD7YrUZ0eXT99XBLojie
 GZ6XjCHzrPc9ovJPMeb9bNkSCO13fZIoYxFH9m1VyCRcBw8BIi+mW+4OxYce997O75
 R76c7ED/WcP02i3fm8rzNjbFWDsMWT+DYYO1KGLtgZ7cx2KBP0weNWmksNUGFhkWET
 AoYsQQSEWd4RaIoCvSdwQZmFHyz+DGOErTFq2zIohPvr01w0t9q7NiQJuMuT6BzQel
 ifWG83F3NhB9A==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: (subset) [PATCH v5 0/4] Rockchip I2S/TDM controller
Date: Thu,  7 Oct 2021 22:37:31 +0100
Message-Id: <163364264608.649699.437992626098307061.b4-ty@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211001171531.178775-1-frattaroli.nicolas@gmail.com>
References: <20211001171531.178775-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_143804_250727_FA80CDD4 
X-CRM114-Status: GOOD (  18.72  )
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

On Fri, 1 Oct 2021 19:15:27 +0200, Nicolas Frattaroli wrote:
> this is version 5 of the I2S/TDM driver patchset. A big thanks
> to everyone who has provided their valuable feedback so far.
> 
> Changes in v5:
>  driver:
>  - change comment style of the first comment to C++ style
>  - make refcount non-atomic, as it's only ever used inside
>    a spinlock
>  - use newer SND_SOC_DAIFMT_CB* defines
>  - change ternary statements to if/else conditions
>  - make _clk_compensation_put return 1 if clock changed
>  - implement set_bclk_ratio callback
>  - always set half frame sync mode in TDM mode
>  - automatically enable mclk-calibrate mode when the clocks for
>    it are specified in the device tree
>  bindings:
>  - add Reviewed-by: Rob Herring
>  - drop rockchip,frame-width property (done by set_bclk_ratio)
>  - drop rockchip,fsync-half-frame property
>  - drop rockchip,mclk-calibrate property
>  dts:
>  - drop empty codec block from Quartz64 device tree
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/4] ASoC: rockchip: add support for i2s-tdm controller
      commit: 081068fd641403994f0505e6b91e021d3925f348
[2/4] ASoC: dt-bindings: rockchip: add i2s-tdm bindings
      commit: 510f1c133aedcf69847786c14681e7f7bf4db778

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
