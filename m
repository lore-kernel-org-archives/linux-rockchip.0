Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDAD5D12D50
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Nov 2024 20:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3kZuFdAU+xXonRz9xptLNco467mx/bk902IVnINkvM=; b=sRCKPH4rlcolWh
	qCVspXyaNX/tvVv6caCyJazeP3919K1CyioNqjk0f46YkqzpWvl6bgy02Rj+s2MegyPYPdv5XztCN
	TCKQ2ZA8Ys+z6kdh+Kqm9tNpvQm2mGb5UyI571PldLAQtNEeo45mRnvTym2d09wZ+/VWD2BzrAbNN
	Vf5Vjo0h20Ha5XplnUq2WdxPpeRGbb+vCTNHKUUxO6RVDyFz+M++L8uGRavhi6b8akfSu6+Ba/agB
	qLu1Ta46McKp+H07mlGFo4RNDDdeOjW0dzneAJBbBZyu2HpBiIPW9M/TkUSNi4r3/W6Glv7KK1UpE
	8qFDunGwtihEQYswRq8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAELW-0000000FWme-3PEw;
	Sun, 10 Nov 2024 20:15:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAEK7-0000000FWfx-22aE
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Nov 2024 20:14:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DKLfZL7Lw//8nae5fm6x5bXe/N6woQGIMim2E2GSipA=; b=Y8RfFiE+0jxpI5NUTojx4Ss1m9
	D7ZnPy+dIRiawnLd1U3juJqU5ux3hrTS8NBnSCYPIWaXC04evu/wRpglkbfe6cAzUd9sVAsQnZZuw
	upBOn7xZmfd2PWtthgQYRxOE6Ohl6ldxyQ4/eLprSjd7knsHLtQ4dP0dj+ndTiPxGxBv2dqA8m0Cy
	knr1xVJpYRRcExxfmEIpxHMMjEjHWLC1Vag7nClTN0BweRfXesh/YF0uh2T1SZnemGCnaV85QuE4w
	C9VVdG/0o0mMtYdZF6F6cZ+sOwEBWaPG3uynsXiCOgFJypSWIlv1FRHbYAhap/CCJGOIJLVg2FXRb
	8IPMDz5w==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tAEJh-0006eU-5w; Sun, 10 Nov 2024 21:13:49 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	jagan@edgeble.ai,
	conor+dt@kernel.org,
	jing@jing.rocks,
	macromorgan@hotmail.com,
	michael.riesch@wolfvision.net,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	jonas@kwiboo.se,
	andyshrk@163.com,
	cfsworks@gmail.com,
	tim@feathertop.org,
	kever.yang@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	dsimic@manjaro.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH v2 RESEND 1/3] dt-bindings: arm: rockchip: add Radxa ROCK 5C
Date: Sun, 10 Nov 2024 21:13:42 +0100
Message-ID: <173126942620.136493.15655197689835452655.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021090548.1052-1-naoki@radxa.com>
References: <20241021090548.1052-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241110_121415_547360_8C543D31 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
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

On Mon, 21 Oct 2024 09:05:46 +0000, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa ROCK 5C.
> 
> Radxa ROCK 5C is a 8K computer for everything[1] using the Rockchip
> RK3588S2 chip.
> 
> [1] https://radxa.com/products/rock5/5c
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: add Radxa ROCK 5C
      commit: 3920c37ea8ddc43e8f54083ed227f123acfa6ed2
[2/3] arm64: dts: rockchip: add Radxa ROCK 5C
      commit: 0173113ea6d7646fa0d7fd4d09b272d38a9ab9af
[3/3] arm64: dts: rockchip: Enable HDMI0 on rock-5c
      --> I've folded this patch into patch2, as the hdmi
          controller on rk3588 was added earlier.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
