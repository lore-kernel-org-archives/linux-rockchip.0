Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBD67E77188
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 22:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMMlbj0d3UGrOXBQHktU0szFxkMoKz3OPjVVTJapOrk=; b=GBPCog3QFWKS2I
	pN0h+L46hfDGLn+ASGfexFUugzeRCnht7/1RUSEJwpMUSqAu2Qd5BkP5+4ucjBfUN8qNvTiuByG7c
	CWGG25S0Vied+5C3MNcKNKSmPfnUENgY/f86uW1XW2Mn3V5Tfe2tt06prNrKMDr1F+DQqgY4C4u+L
	fYFmGdMBpsxRMpk8D6xMGs7GDLpY6c1onDDeHlZNuAE9IQ0pDuL6Yt4/xVT/z4Kf64jhPjnElCKXG
	nk0QCT6qXmEtAQerqBP/x5fMk4PRbJapD+dSLhFCHwjnyzYGWH/d2TK3JlERb42lZ4BjK1vLOMsih
	xONCKHJaI9LWJSG35bOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVe88-00000009xx2-1PCO;
	Wed, 08 Jan 2025 22:02:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVe6t-00000009xpZ-1emk;
	Wed, 08 Jan 2025 22:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oyLRZMtr/tn1TO1iJcvNHZxC52/nmyO7VYgGHrOfQoU=; b=M03c8RdoER1QAdssr/pLl+Yiat
	9s64n3CvH5aUO7YK7dBANJwaecT1ngqv+zqDH7cCcmbDieUUYfgdCKyUucwktNo8RsiTKU9A/C+VR
	rQmoP/C1aB/UvG/Oy0iyF32Is6eSuQFbRlOO2XsipzygzgmbxB+eAMA4KzRSYzi7Bk6zeCAkWT+Wb
	/wHr7lqvdBIuYGe8Dnvw7y8h3qKRq1Xhy9VnlNYFQi7vnJFymBE4f74JtVHn1oAG0s9zt+xTl7dxV
	ku+u7HAOOCO/X+Qj+todeshX9m34j0JsIMhpuqGm1GuDpI29DHmBw5lr3pvsbH+X7jfJxOT4yS22K
	ABh2o4YQ==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVe6j-000415-Me; Wed, 08 Jan 2025 23:00:57 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH v7 1/4] arm64: dts: rockchip: refactor common
 rk3588-orangepi-5.dtsi
Date: Wed, 08 Jan 2025 23:00:56 +0100
Message-ID: <2727495.q0ZmV6gNhb@diego>
In-Reply-To: <20250105222614.2359-2-honyuenkwun@gmail.com>
References: <20250105222614.2359-1-honyuenkwun@gmail.com>
 <20250105222614.2359-2-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_140107_473186_70D8D5BD 
X-CRM114-Status: GOOD (  12.16  )
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

Hi Jimmy,

Am Sonntag, 5. Januar 2025, 23:26:10 CET schrieb Jimmy Hon:
> Orange Pi now has multiple SBCs using the RK3588.
> 
> Refactor the common parts of the Orange Pi 5 Plus DTS so it can be
> shared with the 5 Max and the 5 Ultra.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>

I'm sorry for having to ask you that, but I did apply Chen-Yu's
patch enabling usb3 on the orange-pi-5-plus [0] which in turn
causes your series to not apply anymore.

So could you rebase once more?

Thanks a lot
Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v6.14-armsoc/dts64&id=a15d12f36eb78692d5c3ebd8a5db7fddf3ea160c



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
