Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E91C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 11:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlTc0JL3kAFPgoiIcA7/VO3f08Dwryi40poCcWNysw0=; b=naxSzYtjBh+a2L
	zda/FUcK9mw5BrqJJH0lVdt7tCPtUB8fZwZoG+3rKlP7Wc25uQQf1hTHIOGlMnBI3bhnfesF9gieP
	QkGGf1WxBJZPVBcUvBaywM8haofZFbG9JcplEHEonbMeZ1jBlENsbPCna3cgPC3bZkMAy9IXcfhAL
	bNEJQxRESSEeEj2VmERYKQrkvTdIYa/ENCzwNQ1iZLPGX+KG6Xs2+cUO6NPBcz6r3chA7WyAyuT60
	g3ERrU1z/AuCNJBzw8ScwP9qZQ2ZSWCUQxzyQC3LbKG3fvHGFnjifu4b3fxSuRQXJGg9eODDs8wXZ
	TwJnrd/536gO+DsCj3cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outrm-00AORS-LW; Tue, 15 Nov 2022 11:12:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outpo-00AMwQ-4Y; Tue, 15 Nov 2022 11:10:33 +0000
Received: from wf0498.dip.tu-dresden.de ([141.76.181.242] helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1outpe-0007ai-DD; Tue, 15 Nov 2022 12:10:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>,
	devicetree@vger.kernel.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/6] Misc SOQuartz Enablement
Date: Tue, 15 Nov 2022 12:10:16 +0100
Message-Id: <166851058434.863884.2776372315894555670.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
References: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_031032_251240_0B9A3F02 
X-CRM114-Status: GOOD (  10.87  )
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

On Sat, 12 Nov 2022 17:03:57 +0100, Nicolas Frattaroli wrote:
> This series enables the following functionality on the SOQuartz CM4
> module:
> 
>  * GPU (patch 1)
>  * Video output (patch 2)
>  * HDMI (also patch 2)
>  * HDMI audio (patch 3)
>  * PCIe2 (patch 4), CM4IO board
>  * SOQuartz Blade bindings (patch 5)
>  * SOQuartz Blade device tree (patch 6)
> 
> [...]

Applied, thanks!

[1/6] arm64: dts: rockchip: Enable GPU on SOQuartz CM4
      commit: e48824e8a03e5bc3666e9f5461f68d440d9acba0
[2/6] arm64: dts: rockchip: Enable video output and HDMI on SOQuartz
      commit: 36d7a605706d9648526a0574b8e7b0e02fa70c2a
[3/6] arm64: dts: rockchip: Enable HDMI sound on SOQuartz
      commit: 70b620c4ba919a87c607b8d98b08478b213877bd
[4/6] arm64: dts: rockchip: Enable PCIe 2 on SOQuartz CM4IO
      commit: 3736aa7ecc4cd9b4abce30052bad00aba4f0362f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
