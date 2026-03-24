Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93CFFFEC0FC
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 19:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U24heZ8/clEh0WAEOy+ExNRGf1eSSukKOEux4w9SGdk=; b=o/ZHsdm5GuuqPC
	WE6h65LE88fiwTHOGaxyY1N2g+WyTf2p/xfa7d6puiEvLYR2xLbhafoM4B2ZpQhPAkO8hSyrXA63Y
	BbMf9yFZNrZbE8B9Eyju2G0pcRE0CcDWe0/ChO++1A9JrQaqxd6O6L3uN4D5vvi+jTUxpSWLxg3HX
	guZnhclfRFMF+qICPMBU6nY6IXyvnwKzxQkHXRmHkHMbf+A4LM90PzCqua2Rbgc0ipV4CqTk0j0Se
	p5smXtpeiZoHO+48u86Hlu/nvPPk55DR2jdRC/urlq53HlLtwYWPfJWSK63klWqYwupPmOy6ikn1p
	sa6kL9NCZh6ucpFfgxPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57ps-00000002BPy-0U0x;
	Tue, 24 Mar 2026 19:54:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57pN-00000002B5y-0SQl;
	Tue, 24 Mar 2026 19:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=rSECv1OVuOQtvHFvE1M/Wc8ov8pydQb30vNJDMTEfro=; b=BKwGRvQts0E/BK+8liAolY6R5G
	GHzfgcyu6lstm9Ap5WLpMeaUwAc8IuZpDZ5LjEor/SMg9+KMG6fQ1+vHtGCFs0xfai57pHRQ6/wta
	dCs/qB/Muu5NjZ0LLZGN4f+Bh9xzJ8wCza9a8uzF2S1XrdLr4DL25LpL7lGn+jgynmBW0VieDWhub
	kez39/UMy0aQvmUmZELYBkAlN5hr9mW0bgQMFVN5S1cPER2iqfplypje2PDooWZGq1VkDv6vym2JM
	W9EFZneo6Qh3PqkH9Slh+0gwy77Ad2UfcXP2MQ312CvNq1I4j86B3lTjmoDdA0IQBO3DzE47E1GTt
	K8+bhNPA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anand Moon <linux.amoon@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588 on Rock 5b-5bp-5t series
Date: Tue, 24 Mar 2026 20:53:54 +0100
Message-ID: <177438200687.818857.194935185801364893.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260316073621.39027-1-linux.amoon@gmail.com>
References: <20260316073621.39027-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_125413_168217_4DC5A14F 
X-CRM114-Status: GOOD (  10.76  )
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


On Mon, 16 Mar 2026 13:03:55 +0530, Anand Moon wrote:
> Add supports-clkreq and the corresponding pinmux configurations for PCIe
> ASPM L1 substates on the Rock 5B, 5B+ and 5T.
> The supports-clkreq flag informs the PCIe controller that the hardware
> routing for the CLKREQ# sideband signal is present. This enables support
> for PCIe ASPM (Active State Power Management) L1 substates, allowing for
> better power efficiency.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588 on Rock 5b-5bp-5t series
      commit: 0f36806da4834cbdfe790de6b88347348cdad32a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
