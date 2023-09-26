Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7B0AE7D24D
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Sep 2023 08:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZet3onr6xeOupBbkK/yAsxC0DQpQ9A47xTbQnoxVjQ=; b=D3qWFYJLb9Gs64
	EjnOs1Rbi+Pj9ukTqYPqBq40yPNflOJXRBvCnkSTH24j+6Loxa9UJAzUrqlddXJoitqh3nkHI+iqi
	VYh7tu8+i4eSrc7KGKRXcUwzbqjfmHU01AK1ImnjruttugRBk6EXhkqBMXb6I/k2z9M/UorE2gfB4
	iAZ+bkF83SEl/TRmJqi3fBnchEyoeaRS/0bo7nmPNfGNC6iiH6GpJ1VLAlQIiplFvabI4ZAg4WLMp
	Vy1DS1hZRcAYXX2t45UjGwaK6/AexMGB+C7jqClfYjFNFyQIhZjreIW4qzXPEquUHzj6XT9sUP2wE
	sdPJZeYm9PbG+iIk8OpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ql37J-00Fqnj-35;
	Tue, 26 Sep 2023 08:08:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ql37G-00Fqmq-2r;
	Tue, 26 Sep 2023 08:08:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 581B261326;
	Tue, 26 Sep 2023 08:08:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F12C4C433C8;
	Tue, 26 Sep 2023 08:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695715702;
	bh=UjHcxElqJT2Xn40h70QVPAzMGgQiQRJNiS+9s0Gk/2Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Tbfzb396Id5RYpSZusFkKdTiL9aPVNcGgS0A0dsHmqnoeaLC1HtiE+jwMZNzXUs9H
	 uuRoqOoSaznBmPFFknL2+Obbdu3r2S8RdSLvjueky9tM0+prY6DIqOuHyWNXvEVpO1
	 CQZaVkCTpHqMv04Zgn6xY9NV7Ynab9biQhu5D0HL9Bh0bRX9bvuaQ5avK/6cc0Ovfx
	 AYLacydmC1YKFY3nr83v3IQDO1tvJPc/HkP656G6Tm+iwQDWPaMCm1NclDK6AaWwf4
	 Gkk2ejWhkF/NzRyL/ZxjpS8AO1pfdyLbtwFwDqIZiqP7CN7Yn2SjJyCCn1UVy5CYHS
	 c93sy0mgxUI7w==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, 
 Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
Subject: Re: (subset) [PATCH 00/31] Fix and improve Rockchip RK3128 support
Message-Id: <169571569769.2520438.14041840367987493896.b4-ty@kernel.org>
Date: Tue, 26 Sep 2023 10:08:17 +0200
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-099c9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_010822_986012_68D9CF89 
X-CRM114-Status: GOOD (  16.26  )
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

On Tue, 29 Aug 2023 19:16:16 +0200, Alex Bee wrote:
> this series fixes some issues I found when testing my "new" RK3128 board
> with the mainline kernel and adds some core functionality like SMP bringup,
> usb and networking.
> 
> The propably most distinctive change is the split up of the DTs for the
> different SoCs of this platform: RK3126 and RK3128. Even if I'm not adding
> a RK3126 board in this series: I think this change should be done as early
> as possible in order to avoid issues in future.
> Actually it should have been done like that in the first place.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[03/31] dt-bindings: ASoC: rockchip: Add compatible for RK3128 spdif
        commit: 5c8a033f5674ae62d5aa2ebbdb9980b89380c34f

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
