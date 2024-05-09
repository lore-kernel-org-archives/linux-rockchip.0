Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D351C10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 12:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EzBCZ0j9qwCCQ0CCr/DbVpZh1/ps/1oTmM3gVl2bVY=; b=Nck/FLzpyM1/cI
	9r1YGFxp99ykSLFWKk76hVLyLEVxx2Skf3+f8LMfTCW1zFj5xXjLLG8hVsEgmixx2Ns2Z9y0fpxh3
	njVhqltceYozlNF0609jkbAC5AkCsIiFEb3a+7NLVqhA9VbI/+YigjIOc4K8CO3dDcx8sHbQAKYBT
	SiV4OfszkEuIcIxv0KGTMWw+RFUeVPg+0csx+B3bdlkoSFFHVWBTQa8fmdILzHigsjXIwwaQGziz1
	6oLxkFLOYEzhzylIT0Pvy1XUjvSumhJvn5oW7480KQdTuZzhZsT6uXkeGDPJIvxA2m1zhY4CB9Dod
	N+QE/RbfYGm2Ihwgqk8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52mm-00000001Prf-3pTz;
	Thu, 09 May 2024 12:22:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52mj-00000001Pox-3IZ9;
	Thu, 09 May 2024 12:22:07 +0000
Received: from i53875b5d.versanet.de ([83.135.91.93] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s52mU-0007xX-8U; Thu, 09 May 2024 14:21:50 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Alex Bee <knaerzche@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>, sebastian.reichel@collabora.com
Subject: Re: [PATCH v2 0/7] Add DSI support for RK3128
Date: Thu, 09 May 2024 14:21:47 +0200
Message-ID: <38423821.XM6RcZxFsP@diego>
In-Reply-To: <20240509120715.86694-1-knaerzche@gmail.com>
References: <20240509120715.86694-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_052205_835071_142306F7 
X-CRM114-Status: GOOD (  22.31  )
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

Hi Alex,

Am Donnerstag, 9. Mai 2024, 14:07:08 CEST schrieb Alex Bee:
> This series aims to add support for the DesignWare MIPI DSI controller and
> the Innoslicon D-PHY found in RK3128 SoCs. The code additions are rather
> tiny: It only need some code in the Rockchip dw-mipi-dsi glue layer for
> this SoC, add support for an additional clock and do some changes in the
> SoC's clock driver. Support for the phy was already added when the
> Innosilicon D-PHY driver was initially submitted. I tested it with a
> 800x1280 DSI panel where all 4 lanes that are supported are used.
> 
> changes in v2:
>   To improve power-efficiency when the DSI controller is not in use, I
>   dropped the patch which made hclk_vio_h2p a critical clock and instead
>   added support for an AHB clock to the DSI controller driver and updated
>   the bindings and the addition to the SoC DT accordingly.

The naming already suggests that hclk_vio_h2p is not a clock-part of
the actual dsi controller, but more an internal thing inside the clock
controller.

At least naming and perceived functionality would suggest a chain of
	hclk_vio -> hclk_vio_h2p -> pclk_mipi

In any case, I really don't see hclk_vio_h2p to be in the realm of the
actual DSI controller, but more a part of clock-controller / interconnect.
Similar to the NIU clocks for the interconnect.

rk3588 actually tries to implement this already and while the
gate-link clocks are described as "recent", I think this definitly the same
concept used a most/all older Rockchip SoCs, just nobody cared about that
till now ;-) [0] .

So TL;DR I'd really prefer to not leak CRU-details into the DSI controller.


Heiko

[0] Which reminds me that I should look at Sebastian's make GATE-LINK
actually-work-patch.





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
