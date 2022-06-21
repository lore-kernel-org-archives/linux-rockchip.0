Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A00C6C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jun 2022 17:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDtMacsVZYIeZz8HS1jms1p8EFzfv748PbUabMVDanA=; b=eYiU5xfEgVriIn
	9qVI69WMv3XFjCVgc/8DtBO18LxIHiZpsw2NqUqPez5S94bKXXDasmwD74uKYhO8w4ybX0v2VGSmR
	xBEwVHH790X5b7Sst1/W5QfuSCJUampeX4neOzJmTKYvxDI8yYCJVSrTA/Q6nPxn//z51Y7eIs4J1
	3vGBKH/qlVhuYi5pyqBo8D+0ENLvpYezsUzH3Vj8nn+by8gaQ8pM6JvWo0aDhOdx3s23690dnPTS0
	0pRaEl+A8Y5ujEjueSR2nV6n3P5g1YHDmdjH02tP3K08RE8DbQEk5gMYYSp92486+MYOH4A2Wo54P
	Ruf7LBLY5jJ8WvRs0yOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3i9a-006egK-LW; Tue, 21 Jun 2022 17:59:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3i9O-006ecN-Qs; Tue, 21 Jun 2022 17:58:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1D660615C3;
	Tue, 21 Jun 2022 17:58:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EA2FC341C6;
	Tue, 21 Jun 2022 17:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655834332;
	bh=ie0fsV1NYE5zKGkG5gMpaBWr3MLQDZYRSPzwKnAxneM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=JHCfdE6dN3MO0DXOhdUQXJcHo0AsiOF5Q+ukREbQ6KO0Rt0D4FGy1r/5xrZrFdmRb
	 WgYbTT0PlxGBjQS+5p6AxW2GLu9HkLUPuT3C3YWw50lr0MzN7eYSmjIcgwwG21ImIY
	 nbGNa91GpE6Fw/R2R42DlSoPNA8D65I3tzab9pI3ggqgXXppeRGo0bPkG7U7UN2zO9
	 Jfgeoh1QVgIsXIBM0hFK4r93cw+s+6YwPwDQSLRKiNz1ZfIMYlmoM+gl98ogqUW3Mc
	 3wIvgYu8kaV0jEJsk0GnLLqwA1HhmeuEjK35/YDW20+DIdX2QMl5iwOSOfy8JefIyN
	 rf6PRqS1lI1ow==
Received: by mail-vs1-f45.google.com with SMTP id r4so14640956vsf.10;
        Tue, 21 Jun 2022 10:58:52 -0700 (PDT)
X-Gm-Message-State: AJIora9N4JvGA3xx1lubBugja/jcgnIQwALHnoGxWXFi45mr6c03/7Dw
	Eg+Xxm7lhmW6n2P9rgfA8e3wtw3wKhFa+eiJBCA=
X-Google-Smtp-Source: AGRyM1svAWcHbrEfGfm5k/hfuTdXisxqG0fTMNVOlWCOHViV1GoqBV/BhrgxrOMrH1bW8b9DhhQj/KWLQU4ZXR87G2A=
X-Received: by 2002:a05:6102:38cd:b0:354:3f24:56bf with SMTP id
 k13-20020a05610238cd00b003543f2456bfmr3870027vst.49.1655834331405; Tue, 21
 Jun 2022 10:58:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220619095324.492678-1-judyhsiao@chromium.org> <165583076931.271995.9857794745310978104.b4-ty@kernel.org>
In-Reply-To: <165583076931.271995.9857794745310978104.b4-ty@kernel.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 22 Jun 2022 01:58:40 +0800
X-Gmail-Original-Message-ID: <CAGb2v66+ZjKFvCfq-H3F_ZdyxiKHY6=7juhSCmHPK3o8kgw+Og@mail.gmail.com>
Message-ID: <CAGb2v66+ZjKFvCfq-H3F_ZdyxiKHY6=7juhSCmHPK3o8kgw+Og@mail.gmail.com>
Subject: Re: (subset) [PATCH v4 0/3] ASoC: rockchip: i2s: switch BCLK to GPIO
To: Mark Brown <broonie@kernel.org>
Cc: judyhsiao@chromium.org, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Jaroslav Kysela <perex@perex.cz>, linux-kernel <linux-kernel@vger.kernel.org>, wenst@chromium.org, 
	Liam Girdwood <lgirdwood@gmail.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, briannorris@chromium.org, 
	Rob Herring <robh+dt@kernel.org>, Linux-ALSA <alsa-devel@alsa-project.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_105854_984233_51F3F743 
X-CRM114-Status: GOOD (  28.98  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Mark,

On Wed, Jun 22, 2022 at 1:00 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Sun, 19 Jun 2022 09:53:21 +0000, Judy Hsiao wrote:
> > The patches series is to fix the unexpected large DC output
> > voltage of Max98357a that burns the speakers on the rockchip
> > platform when BCLK and SD_MODE are ON but LRCLK is OFF.
> >
> > Changes Since V4:
> >     -- Fix indentation in the driver. (Align parameters with the parenthesis
> >        placement.)
> >     -- Fix incorrect return type of rockchip_snd_rxctrl.
> > Changes Since V3:
> >     -- Fix indentation in the documentation.
> >     -- Put pinctrl-1 right after pinctrl-0 in dtsi.
> >     -- Fix indentation in the driver.
> >     -- Remove unnecessary dev_dbg() in the driver.
> > Changes Since V2:
> >     -- Add documents of i2s pinctrl-names.
> >     -- Fix dtsi syntax error.
> >     -- Include the dtsi change and the driver change in the same series.
> >     -- Ensure that driver gets both bclk_on and bclk_off states before using them.
> >
> > [...]
>
> Applied to
>
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
>
> Thanks!
>
> [1/3] ASoC: rockchip: i2s: switch BCLK to GPIO
>       commit: 44f362c2cc6dd0c5e3cb499c4fb4ed45b63a6196

Seems you applied v1 instead of v4?

Either way, this causes the driver to crash for any I2S node that doesn't
have pinctrl properties set. Notably, the I2S controller that sends audio
to the HDMI controller will never have pinctrl properties, since the
connection is internal.


ChenYu


> [3/3] ASoC: dt-bindings: rockchip: Document pinctrl-names for i2s
>       (no commit info)
>
> All being well this means that it will be integrated into the linux-next
> tree (usually sometime in the next 24 hours) and sent to Linus during
> the next merge window (or sooner if it is a bug fix), however if
> problems are discovered then the patch may be dropped or reverted.
>
> You may get further e-mails resulting from automated or manual testing
> and review of the tree, please engage with people reporting problems and
> send followup patches addressing any issues that are reported if needed.
>
> If any updates are required or you are submitting further changes they
> should be sent as incremental updates against current git, existing
> patches will not be replaced.
>
> Please add any relevant lists and maintainers to the CCs when replying
> to this mail.
>
> Thanks,
> Mark
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
