Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DBF8C282CD
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Mar 2025 15:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=my2CTajrqTvHSTIv6CRGWodITA14Kf2AA3WBNXIv6u4=; b=sjWSpVMoH1TuBM
	AxOimBtbXML5so2REYC7O+vDhQYgrzbRX+lVB/cuYvupURkhRT41TGfrd1zPv0GPMgbXZZQio0M7u
	ZKE9dIuqON50b6OOAB6yPrwJSfwrJ30rwoBT2/ly+UpvETj4g1ticXt6JzypDfxMdves75NK4i/Pv
	EBgE6IGvU7agECNwZ9ZiP8mi2H5syjemBNd/QiSukx5rouKpvsHYsq66r4y5u2+1Rfi1a8ukdE0GA
	mt+IWC/yTaqaBae7tR0AhIUkwJxb5lKFZu3mLOm/9acyZoqNfirc1L7HUdTRVHd1I+jXFq5lUCe7b
	avdPjlSo3Rgw/22B9MRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp7TO-00000001F3j-1B0u;
	Mon, 03 Mar 2025 15:12:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp7Ol-00000001E8d-15RE;
	Mon, 03 Mar 2025 15:08:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D11155C56C4;
	Mon,  3 Mar 2025 15:05:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AFCBC4CED6;
	Mon,  3 Mar 2025 15:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741014482;
	bh=QXXXpM12v1Agg2tcKYnCNN9Fi/ZUI0fcZtVr+dib87M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J8vu8jKVtVkaax/3iuOuOfKU/3HnSsCmaKySsoT6PALcEPxBy+y8yK+W8lfyE8Uw7
	 dmqxSwIboEJ/vwRPjoK+kAT+o5/hb/CTxkm2K2JUweU+ePZXinE/wGTlY3Kl+s+9aH
	 q0fO2g84QhR08VPuN2bX7ukj7W5tYBfHpNSUF5b/RTX981lvHIFyZz6xxn7pR127WR
	 uudEWCBY+G5PZnMUbCotLlKuAzm3XBFTMcSe6M6vvQPHuCPkc4DDNDKQPEmG8L96CO
	 pkUkjLGW5ui6nYgp0MBSZfha7tD2iJEM1kLqyYCu50uK5A03yq354BTyPxtwxiqC3V
	 t8LtqpjF3UzuA==
Date: Mon, 3 Mar 2025 09:08:00 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 2/8] dt-bindings: soc: rockchip: Add RK3528 VPU GRF syscon
Message-ID: <174101448016.1859733.11356021795380428935.robh@kernel.org>
References: <20250301104250.36295-1-ziyao@disroot.org>
 <20250301104250.36295-3-ziyao@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250301104250.36295-3-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_070803_358454_D5AF7508 
X-CRM114-Status: UNSURE (   8.29  )
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
Cc: Detlev Casanova <detlev.casanova@collabora.com>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-mmc@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>, Shresth Prasad <shresthprasad7@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Sat, 01 Mar 2025 10:42:44 +0000, Yao Zi wrote:
> Add compatible string for VPU GRF found on RK3528 SoC.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
