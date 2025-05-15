Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC117C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 May 2025 13:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqpLScr1HHjkaSTPJqC6YhX18OUPNbj6xSmVH/Eqfrg=; b=wZYEePLDrOUoie
	rFBpuDs7zr0enV8DeP12yKB08h4S3e3AEWFSUiHe1oLX2NYxmE/hBwpxSkxuNxBPa6dYOiGJQkz23
	WhUylHdiivQUx6hafTUh64E53k7XBejQheAU9iAuvfT9XBqVx2wzVSMkKFE55Ik6R7BjFxSfSUqys
	wvu2YChztl0ASSmmJjbG6zD0j6/YIHPFXlz8PyYeyYoNBCghgK8J2a6f0lNIV0qcPWTo4YzS3UPCR
	PT3Hdw0EZqBhB790vtVXv4vtkYgYv8DFtmkYM1BxLg7QF7xKTtS2atuO45xoSlzQZIB0Gru8X/4gi
	o8Pr0994au8V5XDoPdHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFYRV-00000000hHy-1FDr;
	Thu, 15 May 2025 13:16:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFYGf-00000000fkX-2l2t;
	Thu, 15 May 2025 13:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=0v9rGU/IjXsIwKAmPbAgcZ06mZDfCq6fUIVYFXp6dyA=; b=ujSmV3DnKfKbSdlpuqnVHKTIYj
	y9w7RqunMmk/kXfndhmzifAaDSy86IT8l9MTtYRWffuG1+qmuykO+LGfU+5IJrs86mOc56th/KKxB
	KuV3c0HhUwjy0gr2fDlBH5cCUFXG13tts51pmObzSJoYV0smxxpk9SBCj4+9f00iNk1tpxu2DJdD7
	BetMbAXR06iF3uwM1JuiIql99eHq5ljjlbXOdHl2u7RF4KhLxdNggfO83ET9bjgxOEiVq8JnGhcmR
	R73ExhYsquDjtwckI1ajFJYJ8mbUbAk2o5MRhPh7/0dS57FWup5HF8/NB7P1e8HLAkzyr2UbBabo8
	xKYQMz9Q==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uFYGV-000595-88; Thu, 15 May 2025 15:04:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Improve LED config for NanoPi R5S
Date: Thu, 15 May 2025 15:04:37 +0200
Message-ID: <174731427168.2526275.12891764403399603559.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250513170056.96259-1-didi.debian@cknow.org>
References: <20250513170056.96259-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_060457_693267_120EB7CD 
X-CRM114-Status: GOOD (  13.42  )
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


On Tue, 13 May 2025 18:57:27 +0200, Diederik de Haas wrote:
> The NanoPi R5S has 4 GPIO LEDs, a RED one for SYStem power and 3 green
> LEDs meant to indicate that a cable is connected to either of the
> 2.5GbE LAN ports or the 1GbE WAN port.
> 
> In the NanoPi R5S schematic (2204; page 19) as well as on the PCB and on
> the case, SYS is used and not POWER. So replace 'power' with 'sys'.
> But keep the 'power_led' label/phandle even though the kernel doesn't
> use it, but it may be used outside of it.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Improve LED config for NanoPi R5S
      commit: 1631cbdb808963354ef6b6454bc617cd15f90718

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
