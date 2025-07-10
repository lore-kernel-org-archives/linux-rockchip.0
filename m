Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76AA4C83F1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 11:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmCTYth/hNO+d0q3H5+CXKRgIsgQgMCxucrGfZiYtAs=; b=OZYIEvxd7hZ5GN
	IKf18iggvwuOpwpTdYd/uQzieFH7V+LPu25LPVq5wp2czZblljd/y8ebt7ph1Azk4mfwCxrJTYlGY
	D9FnA/OtwGe8I9ybARTwDjdJGICS+Hu0OGAFI+YlH/X3paTYwdLOvU+C2KGJq6fWlD6hil4cQ6EwZ
	ODP5nNXhCF5xWPHAVMiVpkYm8E2NQi5Fv525br5PFiqja7IOGe/FcMLhGrHQHSiBmnNFTC3Tt30EV
	irPj1booj+hZx5nLdk4YZEOZaaGMHiu+ad2pmENgtTXjEKB0bM3i8DZp602+OBMARWUQq7PyyBjJs
	BM3Ir73KmaDN2zTGCo8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpFf-0000000BbaJ-3ybS;
	Thu, 10 Jul 2025 11:15:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnYv-0000000BLDl-0i8Z;
	Thu, 10 Jul 2025 09:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=MroTOxMmgxwRAhtMlsJpCRSnugYklaOaOLCLE5+XIJ0=; b=eHA+B6I8H4ThyYpE9AGVQ0VVyS
	oBNaC/b7eWo69WNjLwIoWi3o83F9XieyNQb6GLcAC3RX9OXghV9TWUZrZCKn8Hpgv5hnatx4lHfZU
	K2jBfvGckT5Yf3JGZQDQBmStl8Mju2N5OFV6C8nF28v5qsX8QGiZRq2L3yxkh+DT9Gr3yj0/dlGtz
	voPJyo5eWhrgOsA8Zpx2+d7Rsyz8lvihXeKrlEAhfMMK1WtmoXhQifzqiFvgx0gPNMR/Aldp8SaeX
	Vgw8BRh6QYCAGcA9T7ZVaecx0Aexak9VDKw8OcEyKfOtslTjAp1Kr15ofXOxtxad8+CycyY2pAg8S
	GNcUv38w==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZnYn-0003fo-Rd; Thu, 10 Jul 2025 11:27:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Quentin Schulz <foss+kernel@0leil.net>
Subject: Re: (subset) [PATCH v4 0/5] rockchip: rk8xx: allow to customize PMIC reset mode on RK806
Date: Thu, 10 Jul 2025 11:27:14 +0200
Message-ID: <175213962005.1887379.11523516137151032329.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250627-rk8xx-rst-fun-v4-0-ce05d041b45f@cherry.de>
References: <20250627-rk8xx-rst-fun-v4-0-ce05d041b45f@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_022729_204532_8CD899D2 
X-CRM114-Status: GOOD (  13.36  )
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
Cc: Daniel Semkowicz <dse@thaumatec.com>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Quentin Schulz <quentin.schulz@cherry.de>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 27 Jun 2025 12:53:52 +0200, Quentin Schulz wrote:
> This allows to customize the PMIC reset method (also called RST_FUN) on
> RK806 PMIC from Rockchip, mainly found on RK3588 devices but also on
> RK3576.
> 
> Finally, this is required on the two RK3588 devices from Theobroma as
> U-Boot changes the silicon-default (which is suitable for us) to
> something that breaks our companion microcontroller's reboot detection
> which breaks a bunch of assumptions in the MCU FW code.
> 
> [...]

Applied, thanks!

[3/5] arm64: dts: rockchip: add header for RK8XX PMIC constants
      commit: 92056b3afde6599f0e125a89c9483bad6930ea85
[4/5] arm64: dts: rockchip: force PMIC reset behavior to restart PMU on RK3588 Jaguar
      commit: 03b77bbb428250d8359bc76ff5032534d33f8499
[5/5] arm64: dts: rockchip: force PMIC reset behavior to restart PMU on RK3588 Tiger
      commit: b5c69adb3e27a5d31b733fbfbc32e5f036e21bed

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
