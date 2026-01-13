Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A17D5D2D10A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 14:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IoW+1r4TMywZu9CUiZoVHjer9Fs8y7Ou1hb3p6L45A=; b=L233eBJsFNDLSH
	6j/ZVUIleTXwr2pT8OMjTG6rq744lmY+Adq1mTSEvM+0s/Zkj4HTw70wErr2tpK9w3ZyXkkkh5sph
	qXmqgySXpbNIG8rR4y6VIi264sgP3f0XRquFDFiz1jNf6vH5kf2kTjMUoascesDkfwHBi8txgtLXI
	GQt3TfYF8hKKtlizfK6VkpxL8cNJPfKdGwcdA/CpkYRWYr0ebyVnkTz9QUl2BpZW/9Com1HpSoaIK
	I0L5B1TdCL0i6EY8gX7g9Y63Yn2oHY/+ShRqsp/W0bIzsu+fFlyehFWDzeP/Re1f06/72m/oXCKeJ
	uz2He+MM1TWeZYnoCJoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vff0m-00000007CMi-3qww;
	Tue, 13 Jan 2026 14:04:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vff0i-00000007CJy-0wug
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 14:04:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=cR8l8e9c458ADB95Mzot7jCXQfu3qkYTp1SBrN12JVo=; b=TlhXl0MEvrsueUfprOrfp8TfLS
	wnTPVeQiSriwke4eyBdsW++hnOWNUZfItyemWxB/B/oJT2oIOvup88zq73jQMx2ZnfCOk20VdczMN
	phGEOOrmU9Ag/jc2RjHeBUN+W+Wwt6HID9Ts+hBONGS/APgSIpXv0cK7QVzZGjAEo2BBzHLfZ1maF
	Ixof02GEJyPCGGPL/pZScXyewT8FgO4++6VbAIylUa6PxZ55M81SjlB7bPnqyo064Vrgw4CQA4+MI
	y5fV5fKvxR5qwc1hSArHaIhUaERFqBnoF/M6oA7aBdO+s0F+VlP6LFkU6KTfR4KrRhZB8TcKj1zny
	VkFuC8VA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vff0P-0027FZ-Ny; Tue, 13 Jan 2026 15:04:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	jonas@kwiboo.se,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	michael.opdenacker@rootcommit.com,
	chaoyi.chen@rock-chips.com,
	quentin.schulz@cherry.de,
	dsimic@manjaro.org,
	andrew@lunn.ch,
	alchark@gmail.com,
	pbrobinson@gmail.com,
	ziyao@disroot.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Radxa CM3J on RPi CM4 IO Board
Date: Tue, 13 Jan 2026 15:04:18 +0100
Message-ID: <176831295377.3955755.17142179045229285128.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260108113341.14037-1-naoki@radxa.com>
References: <20260108113341.14037-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_060441_257778_4683280F 
X-CRM114-Status: UNSURE (   8.48  )
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


On Thu, 08 Jan 2026 11:33:39 +0000, FUKAUMI Naoki wrote:
> The Radxa CM3J is a feature rich industrial compute module developed
> by Radxa, based on the Rockchip RK3568 SoC. [1]
> 
> Add devicetree binding documentation for the Radxa CM3J on RPi CM4 IO
> Board.
> 
> [1] https://dl.radxa.com/cm3j/docs/hw/radxa_cm3j_product_brief_Revision_1.0.pdf
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Radxa CM3J on RPi CM4 IO Board
      commit: 90d88da849393c8353c98bee443410bb32838828
[2/3] arm64: dts: rockchip: Add Radxa CM3J
      commit: 9103e21ee45f8cdeaa86b2c356a3ad451c140c9f
[3/3] arm64: dts: rockchip: Add Radxa CM3J on RPi CM4 IO Board
      commit: d813ddc0b348febf32fc9d7737ba82d2955051ac

You forgot to remove arch/arm64/configs/linux.radxa.config from patch2.
I've dropped before applying.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
