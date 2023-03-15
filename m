Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AADE3C61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 07:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SoEuMOxgY9lT8puI/XXKkIcBp2tJxR3kVRABm1a6wc=; b=c+JXpxcIcaEaxs
	CJ5WQvcQWTnslG7ZRhP5qHcaMojQWYLBjRSnK6Gj8sJJdmsyFx+6bZ0653cWeyG0dGOqMrt5dEMQK
	l8+mnsrhgNnJBu2cnSoNxcIgLfndvKoX23crJDt82Nsh+K0h6Q48wHLqbula9Wzj/PNbRcAgsMIL+
	w1O8hNTvVUbpMYsY/Tdc6OuMSKsTEpaQtahutg5EcdzftjlYhOD2KeQGzhShe4XSI55kVEeA+N/rn
	4XOlxgTakcuNwJ8Vp66IOy4hOj9Rs6Ndnr0DqWBaNXTPq0OGMexz1pmts0QlCM+XSKyTANGO1KVfj
	yt083H3bncnOLiWh1KqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcLyD-00ChYQ-1u;
	Wed, 15 Mar 2023 07:54:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcLyA-00ChXh-30;
	Wed, 15 Mar 2023 07:54:48 +0000
Received: from [46.183.103.17] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pcLy1-00079f-1K; Wed, 15 Mar 2023 08:54:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Yixun Lan <dlan@gentoo.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	Nick Xie <nick@khadas.com>,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: rockchip: Add Khadas edge2 board
Date: Wed, 15 Mar 2023 08:54:23 +0100
Message-Id: <167886685398.704797.419468948077719416.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230315033441.32719-1-dlan@gentoo.org>
References: <20230315033441.32719-1-dlan@gentoo.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_005446_981719_74A5C6D4 
X-CRM114-Status: GOOD (  11.99  )
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

On Wed, 15 Mar 2023 11:34:39 +0800, Yixun Lan wrote:
> In this patch series, we will try to add basic support for
> Khadas Edge2 board, currently only UART and eMMC are enabled.
> The ethernet connect to Pads expansion board via USB which will need extra
> effort, so no ethernet for now.
> 
> The first patch introduce a dt-bindings for Edge2 board,
> the second patch will add basic device tree.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Khadas Edge2 board
      commit: 5a6d76761225bfa31d114f434b990fa2ed9b04c5
[2/2] arm64: dts: rockchip: Add Khadas edge2 board
      commit: 04d5529935229a709d6facb8a80168cc0976c89a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
