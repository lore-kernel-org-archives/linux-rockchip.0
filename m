Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C87CE77199
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 13:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSNiGl7ahCud19gAH6+bS3pmtaJmWD1MNSZ6XUOsIYg=; b=hT9LiaqOwqPyW4
	dXB1YDF0maHNbhyU3ZVg9X+ugLRHqITLFCYv6z8LoQDf7TR6cQF4aj3MZ8LwY/OAcXURk+vh/7OyX
	ljsMTWYbacQwOwknCQLhorVVwu19bn4f0wbYLDRVqwlYTntuuLWhMrDbjzKq1JrcbQQL5NIbVKEn3
	CnEwUYAzZ5OAoAdxfOsA/eMgY+tAZtfAfNENoJJTHwvgVXddzGi/FBqbz78onjfe6yzELUBodfwEq
	veFG/3jW46NGOzRc02o+VpGKyKEvySjpRJSgLc407ltLjR0FCNzKmU8FWNR+0y1gsuw3z0RKVcCxr
	dClLO7tg6flKClQD6r7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVVoT-00000008YMw-0hoG;
	Wed, 08 Jan 2025 13:09:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVV7v-00000008PwF-1gX1
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Jan 2025 12:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kP5bPRE03a7OHhytkMkuiuXa3V4p1pNS1BP+pdJ4fOo=; b=G32UEa2XqQXGDi8Ml98v1BtsyA
	ugwLE3aSPG7MsHLb4cJkSXmaEVdQenlTFVjxuNDzg8TDSV1hhJP6HR7Mbm3eKLvMUfgVxAnuckzDw
	XbgxN0fLlXQPlExcSDGpB66DLoMtHzzIZ57tz/m/ozREnsGAT5RNNLDOCturAY//xZ1ZjY5ZR+ryj
	WQ+P/ASqu3zxs7UAjnSpmJ20r96LpVPOqOCUBdFaE7jpp72wp/IXlfJK5BOmK5+v5i08FxpxCG9Iw
	vXdZmKcHS4JyMhxhiGdJctf9bwrFzDWhmmeas0XtKBRcR5hM6YKAEyNO+YVC/U3wVBxf2hnaSuMbC
	zMkGdXcw==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVV7o-0005gn-Mp; Wed, 08 Jan 2025 13:25:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Mitchell Ma <machuang@radxa.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix PCIe3 handling for Edgeble-6TOPS Modules
Date: Wed,  8 Jan 2025 13:25:15 +0100
Message-ID: <173633908210.2779821.595813917133588520.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241221151758.345257-1-jagan@edgeble.ai>
References: <20241221151758.345257-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_042535_435594_B9AE0BB2 
X-CRM114-Status: UNSURE (   9.71  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Sat, 21 Dec 2024 20:47:58 +0530, Jagan Teki wrote:
> The Edgeble 6TOPS modules has configured the PCIe3.0 with
> - 2 lanes on Port1 of pcie3x2 controller for M.2 M-Key
> - 2 lanes on Port0 of pcie3x4 controller for B and E-Key
> 
> The, current DT uses opposite controller nodes that indeed uses
> incorrect reset, regulator nodes.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix PCIe3 handling for Edgeble-6TOPS Modules
      commit: e2ee8a440869281620fbcacdca6e13cbeebcc1be

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
