Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F30B2C7115C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 20:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3cHYpkXcCRYT/BczKvreD9VCKwEF71AKZtwa+i+o1w=; b=UQCv1olKHNOY0+
	pvrgpX2z4Eo9b68iFoGVjbXn8kyO4L5g+F3tFlNN6REDboPQAHnCvFdhKpcn6tCiUMi/huHRGBgK/
	yrmD58uOOSFbFWVv30Xiek46FUCSB1I3jCmclVZNQKy/s/5UvCax7Sh5WdGvVNBKN0Rng9qlBwInQ
	8IUBKsK1C4MXHtyrKGyEmz5b9MLq9XpJLdkdT3faLQVOR4XzR5izpfe1WyD7Qywe5tDAWnHZlW6Rb
	chpfHkUQ5TFPmacHVJsAKyy/YUXetFj7PrHdpq4r2mhGtLsfMA9vMU02Ts1xiKD5OAeOL7pEMUq1y
	LkdSX9l8Glj6MJrBXXsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSi9u-0000000GVkb-2S6i;
	Fri, 20 Jun 2025 20:16:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSi9t-0000000GVjT-0eL7;
	Fri, 20 Jun 2025 20:16:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=5EjkAl0VuyPH4a8Z41Kx9iUxgGicQn2P0RYuSrndNqY=; b=g6WcKPakc4icPaibZXUctAKGHK
	UFU4loy9WCp3Nf11u3JwYAavj9yy3VomzxiNRqP6TnZTXmRlhThjwzHju8/9VwX7pDyd1DGICc/Zb
	XcOkCOcY43r+gLa6plk1fa8u8bo4sq7yJ8MqD4o5qMNUp+21GzUwQzWQdY7KweRWwXY7GuiA+G3Na
	gBKsEQ320EnLz3dZdp8UsuU5gYxPHLVDLxuOXvtPXHv2+/hhVRk4iE7RQaWOclu52zi4M+efuYP6C
	MGGCwQJlnjfqnrcrBgxiSsRW4hbJT6HWnIHs4SYDAlNEFIvaNNHI0Jp4ufcMjJ7lamjsWwbSVrVEm
	6+D4fbZw==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSi9a-0005Nk-BA; Fri, 20 Jun 2025 22:16:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 0/3] rockchip: Add GPU support for RK3528
Date: Fri, 20 Jun 2025 22:15:53 +0200
Message-ID: <175045054807.1572438.8910024255365917623.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250518225418.682182-1-jonas@kwiboo.se>
References: <20250518225418.682182-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_131621_208693_C1E2D4F0 
X-CRM114-Status: GOOD (  12.97  )
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


On Sun, 18 May 2025 22:54:10 +0000, Jonas Karlman wrote:
> This series adds support for the Mali-450 MP2 GPU in the RK3528 SoC.
> 
> The clock used for the GPU can use normal PLL to support a rate of 100,
> 300 or 500 MHz. Or it can use PVTPLL to reach rates up to 800 MHz.
> 
> The TF-A SCMI_CLK_GPU is used to switch use between normal PLL and
> PVTPLL. When a rate of up to 300 MHz is requested TF-A switch to use
> normal PLL, and for rates above 300 MHz the PVTPLL is used.
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: rockchip: Add GPU node for RK3528
      commit: 6b88b8a640fa5d2169e0ce47b88dc30727fc1105
[3/3] arm64: dts: rockchip: Enable GPU on Radxa E20C
      commit: 669080eb7f7c4720aa4e640a49f7490cd928cfcc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
