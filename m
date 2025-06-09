Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB0C8C5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 11:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfT8cwbgImitXoohiDgrvH8U20z+mRMdo0OpE5aXxLk=; b=hFvxRpiyMNaHxD
	fTZnBgCQ+0VX5xNPD1eMiAQvKB9h7GBZhI6zM3f1mnZ4RUxQh6PDDUMCV6GGrGs6vPrJ/q5g17Ii3
	yGYjp74aANjQdcI7MGROe9oePzrgOZrZv/TMXBPPrRqxQjQy4ghj8+e7DzTvcR1LA9TdNwjAL3o8p
	a78Sv0VPahl/i587v6bex5NEqIH1Loj0i0gayDNnKxORNIKiVsu0QbOPqtphwiEKA8y804W8nMU9b
	EIzkQP/QiQDU3YMtvKNCxEycRp6JLBk3gwPHvr6d6cTXatkb50dNIbYR3w05GoyB39HSxGL2qBPP2
	0+X2HW0NoUsM14hsRMIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOai2-000000041co-2avd;
	Mon, 09 Jun 2025 11:30:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOaPK-00000003zSm-1jMg;
	Mon, 09 Jun 2025 11:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Jkdk2cmI+tf4XuI/p/OZj8CiZ22SFvFvvlSth/i8zEM=; b=LsanE9Q4OYhoH+jUUcTCuVKoUH
	ei9Y2ysD6pK2AjAMQP51Nd6bF2U+JZkxErJGAtmAoJYmoJ1Xyg4r3DoDazi3jPm283q5UNXI+c01K
	tb4Y7Yq8Z8LkfG7H7AXBJijXAQaF9copDxDokSHEw3Ins6QebA8Te32DdZheI5SuZ5eu0/hLqLnNo
	NX5TBHuoVEW7cbKTu28ZVohSFsyqRD6m0/MzzEin4jx9cRLENVd+YjEFwrTrAH4wsLiQMMawr9ieR
	5NbOqkdeNuArjkAJeRX0bkfgI8lv6CK7uQpcQeMB3BjMfsrBw+GawVPlD4r0efFpWv1YBXgnIYXaJ
	/Wh+VWVQ==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOaPD-0006VT-FW; Mon, 09 Jun 2025 13:11:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	John Clark <inindev@gmail.com>
Subject: Re: [PATCH v5 0/3] [PATCH v5 0/3] Add device tree support for Luckfox Omni3576 and Core3576
Date: Mon,  9 Jun 2025 13:11:03 +0200
Message-ID: <174946744890.771907.15442191334944143359.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250516002713.145026-1-inindev@gmail.com>
References: <20250516002713.145026-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_041114_449264_1EE4B55D 
X-CRM114-Status: GOOD (  11.76  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Thu, 15 May 2025 20:27:10 -0400, John Clark wrote:
> This series adds device tree support for the Luckfox Omni3576 Carrier
> Board with the Core3576 Module, powered by the Rockchip RK3576 SoC
> (four Cortex-A72 cores, four Cortex-A53 cores, Mali-G52 MC3 GPU). It
> enables essential functionality for booting Linux and basic connectivity,
> with plans for future support of peripherals like WiFi, MIPI-DSI, HDMI,
> and Ethernet.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: Add luckfox prefix
      commit: a6fed060c79971d528285e3e2fa5fbaf30abf30d
[2/3] dt-bindings: arm: rockchip: Add Luckfox Omni3576 and Core3576 bindings
      commit: cae568ff88fd8f25d51e120c2de30b094fd5ad02
[3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board support
      commit: f244d596ebb34b819a5414f8f7d37180ab833233

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
