Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA0CC19F32
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 13:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nml8Xz5EH0YRjDsJrT79w1qEkaNLUrkCNruFdxkfKt0=; b=UAQb+9hVpGyftV
	zvg2uV8tRht0dtSiPvxaJoyKX9sOgowKQFzhUIn91QNWeHx4FZQk581bRa6lSHzH05C1ylnhnkbpa
	CIkp+aWSvgqHrnKEPCtB8FUQZDWmQCERsvOxBg5CYo57REGy2Vs4z8wBzMASoS4UudmuxVQvMDVVS
	3Jke4qxxNvaHroTnSibt2EAga1tGDEY4FNeuBX1r+nImyCI5EVHghxFtYso6nWBBWcEgI1q7w10cS
	4UJtqY7c281qulMmRHJE12hCf3XtUXTMzHNWgK9wECFz3yBqfl5dGwsPq0hyisPo21+mq6GgEcb1C
	0lKFI4x99RGGonRsdMJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tneOk-00000007cUf-3X4l;
	Thu, 27 Feb 2025 13:57:58 +0000
Received: from tor.source.kernel.org ([2600:3c04::f03c:95ff:fe5e:7468])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tneFU-00000007b0l-1TAj;
	Thu, 27 Feb 2025 13:48:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 42E7761F30;
	Thu, 27 Feb 2025 13:48:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E80BC4CEDD;
	Thu, 27 Feb 2025 13:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740664103;
	bh=+0o56Rl9c9XlxO66ciG8cF7751qtwRokbDOXu3oKKI4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=u7PEQG2j83U1EUgccAsv7ZZeyzoXGP5E3eyEnhw4NoElI1P1PQduAFpk3Aw26XQga
	 MU1FsSM2xWeVk3888IvozG2rU0czOy6ksHQKL+ms88vEKd69Oz3Wn/JfI5RXTFTwNk
	 wfGNc/kEM3DNOFtXZ34ZRYeTDGKQ9rq2QA/8JJ070MZrbICKSyOueWiZTR8CewZk/4
	 YNa2OgN5lkcQjeMyprtE571tUFUuQFiRLywSCD55mJu1bl6w3MNEN7o1f2vw9759LK
	 TWM2LHQPLAcDuMVzwA6GP/6GMrZpDf8H3uZGfG3Gq2L3gj60l5E8fYaRb6MO8wqJWV
	 z16TlfgV2NvRQ==
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de, Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <20250227111913.2344207-1-kever.yang@rock-chips.com>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
Subject: Re: (subset) [PATCH v3 00/15] rockchip: Add rk3562 SoC and evb
 support
Message-Id: <174066409262.43847.18143301735398340521.b4-ty@kernel.org>
Date: Thu, 27 Feb 2025 13:48:12 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-1b0d6
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
Cc: =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, ulf.hansson@linaro.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, dri-devel@lists.freedesktop.org, Finley Xiao <finley.xiao@rock-chips.com>, linux-i2c@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Shresth Prasad <shresthprasad7@gmail.com>, Jamie Iles <jamie@jamieiles.com>, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, linux-watchdog@vger.kernel.org, Simona Vetter <simona@ffwll.ch>, Detlev Casanova <detlev.casanova@collabora.com>, =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, Simon Xue <xxm@rock-chips.com>, Jiri Slaby <jirislaby@kernel.org>, Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org, linux-serial@vger.kernel.org, Rob Herring <robh@kernel.org>, Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Frank Wang <frank.wang@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, linux-arm-kernel@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Riesch <michael.riesch@wolfvision.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 27 Feb 2025 19:18:58 +0800, Kever Yang wrote:
> This patch set adds rk3562 SoC and its evb support.
> 
> I have split out patches need driver change for different subsystem.
> And all the modules with dt-binding document update in this patch set
> do not need any driver change. I put them together to make it clear we
> have a new SoC and board to use the new compatible. Please pick up the
> patch for your subsystem, or please let me know if the patch has to
> send separate.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[07/15] dt-bindings: spi: Add rk3562 support
        commit: 825687c1662c53ecda991adf0ecfd8dd3d864043

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
