Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0994EC0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 14:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cP0Bxp2OVfRr+3+1AR/fAiPWLl6oC20Agmor1QM9q1U=; b=m8nuRS3mC+KXC4
	gfpNjGEnnwzhaY6cWDKPNAAxdGDCNdqwrgzCvC1wNfDoZKlOEGEFNEe8UARsYoHtUOYndpA+QMX+d
	wpcUFxLQcrWSUsp0aV2qZmCRoSbmXzCBEAdZPccMfLYlUa2kkdWu0ZPSpvdVJncDhKZns4Tf8KI8i
	IFhy17MKuiAW4YXettXJDy72jKlX8GpP9ytoGkkBExVOsFmcsvIliSNCMQuQks1499aHaWWXh9Pzj
	AqW2k5XiPcHM0mCGKfZlK0/Xe4D51SNcU0bM+zUG9h5Yx0F9drnluv2CEJCFGsLL9lOsYYZK9hMii
	5pI+M7yzZCJJzAJQaUEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEft-00FBF8-2R;
	Tue, 11 Jul 2023 14:49:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEfr-00FBCi-0w;
	Tue, 11 Jul 2023 14:49:08 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qJEfX-0000LD-7M; Tue, 11 Jul 2023 16:48:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Christopher Obbard <chris.obbard@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Tianling Shen <cnsztl@gmail.com>,
	kernel@collabora.com,
	FUKAUMI Naoki <naoki@radxa.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 0/3] Add support for Radxa ROCK 4SE
Date: Tue, 11 Jul 2023 16:48:41 +0200
Message-Id: <168908688810.1964886.2244740186424760492.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230710115025.507439-1-chris.obbard@collabora.com>
References: <20230710115025.507439-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_074907_328551_F2817365 
X-CRM114-Status: GOOD (  12.91  )
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

On Mon, 10 Jul 2023 12:50:22 +0100, Christopher Obbard wrote:
> Add support for the RK3399T-based Radxa ROCK 4SE board. This board offers
> similar peripherals and form-factor to the ROCK Pi 4B but uses the
> cost-optimised RK3399T processor (which has different a OPP table but
> otherwise minimal changes) and some other minor hardware changes between
> the Rock Pi 4B (described in the devicetree).
> 
> The first patch moves the RK3399 OPP table from the generic Radxa ROCK
> Pi 4 dtsi into board-specific devicetree files, in preparation for the
> ROCK 4SE devicetree file (in later patches).
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Move OPP table from ROCK Pi 4 dtsi
      commit: fd2762a626461ca4d9d829431a8a7f9f8e6c3395
[2/3] dt-bindings: arm: rockchip: Add Radxa ROCK 4SE
      commit: e7afb99e8f52f24514267f5482cd2f274220b360
[3/3] arm64: dts: rockchip: Add Radxa ROCK 4SE
      commit: 86a0e14a82ea723c7b7381799f060612dc65cdf3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
