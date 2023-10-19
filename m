Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5EAACDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 08:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QePhlDV04WA4Var0JqdL7cNdbw/DoMsDhdeWcWsJtAQ=; b=FcVRryufn+EJnA
	f3IJytEFsQtK988vZpzcfYc7SMx5Ty0ZX8a3rcmRXK2LodBl2vQ7FeGYIVhjqZw497/t1dfqcrkLI
	6o5xfLt0WCkkyw4csnoFg/QW5utujPKP700UF98p2cSnyPWxCUjLwJ5V7qH5FMaA7/sjhUMDkyCIo
	t6JgL9KZpaDrAzIR++Y3HI4AIcbfD13+JZKahhPeABb5JYqWUhEHZHCwx+U0B7OBCkOOejY+p14Up
	xoxgwJ7nSKdgnUiUsztRT8LBWsoRnvJT0BBxi+1YwAWZD9crDP5Sa6JYwFZN5rAA9qk5NNmxoLJw0
	KbONKe4s+XHj9J1kXe4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtOnd-00GmCb-2M;
	Thu, 19 Oct 2023 08:54:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtOnY-00GmB6-2Z
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Oct 2023 08:54:34 +0000
Received: from i5e861907.versanet.de ([94.134.25.7] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtOnR-0001vg-Dr; Thu, 19 Oct 2023 10:54:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	airlied@gmail.com,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	mturquette@baylibre.com,
	Chris Morgan <macromorgan@hotmail.com>,
	neil.armstrong@linaro.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	linux-clk@vger.kernel.org,
	sboyd@kernel.org,
	sam@ravnborg.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: (subset) [PATCH 0/5] rockchip: Add Powkiddy RK2023
Date: Thu, 19 Oct 2023 10:54:21 +0200
Message-Id: <169770556939.1297560.13095304413651630727.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018161848.346947-1-macroalpha82@gmail.com>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_015432_830024_F036232E 
X-CRM114-Status: GOOD (  10.70  )
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

On Wed, 18 Oct 2023 11:18:43 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RK2023, which is extremely similar to
> existing devices from Anbernic.
> 
> Chris Morgan (5):
>   dt-bindings: display: panel: Update NewVision NV3051D compatibles
>   drm/panel: nv3051d: Add Powkiddy RK2023 Panel Support
>   clk: rockchip: rk3568: Add PLL rate for 115.2MHz
>   dt-bindings: arm: rockchip: Add Powkiddy RK2023
>   arm64: dts: rockchip: add Powkiddy RK2023
> 
> [...]

Applied, thanks!

[3/5] clk: rockchip: rk3568: Add PLL rate for 115.2MHz
      commit: ccf59682a0287b81015dc1939203fac70b818c6b

I've gone forward and grabbed the PLL rate already, so it
can go together with the other rate addition from the fixes
series.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
