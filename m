Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8181C25B76
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Jun 2024 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tkJHlGs+L4X9zR/ZtWfQ8kOr/61LZ+2QUIP7vgQoE8=; b=1y85CN1dYP9dzo
	v8nH+X/kCWqQVVdzuLKu8RdzMx/UWOIbczoAXq06sko1lEmk0+ll4bw/PKrVugBCxKOI1c8+5oSTe
	LFLDcnrujMA6l/qRDVC0YmFODZtLBGR9JB8YQTbQLSiI3RT9K6lBPXViL4Hi67fmpnoJtNz7xYPx5
	1bHEmI1PanPYCZQzcGH2utZ+kALlKzrbiejF3hoYThWxPHp/OA8+0SO/OouI7+dAUMbGzhu4pFLtl
	LPfGP3EKIht8mqGRcMGUv+0Ij/2Kw0zdWL2qQliHGH1o7v+Znho28exJE0bI7Yd1Mo5oSrLF28JYN
	Z9nYdMWoN5mrDwThGUOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFxot-000000009cD-3n2P;
	Sat, 08 Jun 2024 15:17:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFxoo-000000009aO-2emC;
	Sat, 08 Jun 2024 15:17:23 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFxon-0000Ur-0s; Sat, 08 Jun 2024 17:17:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	quentin.schulz@cherry.de,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] arm64: dts: rockchip: set correct pwm0 pinctrl on rk3588-tiger
Date: Sat,  8 Jun 2024 17:17:17 +0200
Message-Id: <171785983006.2839639.17654165355376874310.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240603192254.2441025-1-heiko@sntech.de>
References: <20240603192254.2441025-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240608_081722_753346_90FCDCA1 
X-CRM114-Status: GOOD (  11.46  )
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

On Mon, 3 Jun 2024 21:22:54 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> PWM0 on rk3588-tiger is connected to the BLT_CTRL pin of the Q7 connector
> meant as the name implies to control a backlight device.
> 
> Therefore set the correct M1 pinctrl variant for it. The M0 variant
> cannot ever be used because that pin is routed to a connector pin on the
> Q7 connector that is reserved for CAN use and the pin reachable by the M2
> variant is reserved for the embedded MCU on the SoM.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: set correct pwm0 pinctrl on rk3588-tiger
      commit: a21d2cc2f9039023105bf9f9bf1acf324d5ebf9d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
