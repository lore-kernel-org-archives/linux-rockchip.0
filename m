Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8397C3ABD2
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 21:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVVnleOjmbXaIHB4m17UVlwTkzvYRJ2exaXM9FLibl4=; b=uO4UcU4JFb9F8r
	k4QSVfZnJBpaehSOud93x0jUTMIPVpGwQ/419XRiJCYoMrS0DLjPnEPNvOC3PoPr94sOFW+cEM9u5
	4jyseElRD6VpLj3CB06cogE0Ylr3sim1WCmOx48YIHvUTgj7JXMC5tWETOzR7TcfKB2PTTSNQNWnG
	g5td+Igp3jJRMzTkgXbmKlEZVEGGLGnaRN6vbKQxSL6jb/uqtmrD+xtbgGg6BWyItEjcdHmeClA2w
	Yn/G/lWdbE/QUe/48a/S6mOMCmxe8nYPVoVy4+MkJQq7uAE37bbkizcKX8OQf9eDfOTa38zeyqBkU
	pzvAM6CPFNveb2uBDMHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDUxp-00000004uiI-0gBV;
	Fri, 09 May 2025 21:09:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDTtt-00000004i9O-1OaL;
	Fri, 09 May 2025 20:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=9Tr4avpC+MzvgrSxOKKwZnty7WT+VJA3Ia5CbcZG9eE=; b=upIHKf688KyjcXYyPtW85pwgAt
	C3OPu7vGZALzoW+7SD/d5roc59G9tisVuiDh5oUDHm7g0SVCfNADoOYVeSZlffaBDy5H5B4A5U/6u
	7ky80Mb8PyHLhepkFO1a+b/o8r2W6Wl4SS98QIacNpO/T+JREjHIibuCqqcw4UzHkm0S+C+l2ehTP
	lWjy6VEoP/0xSK8vfIObJ55cdhNIFkNezFMFrEdBCMtcn5eJACSd9CU5bteWUxPLrzYcrSHDPCOHE
	09ul8USQrhUCLJg5jv3RdAzLO+yQ/mSOj4Pc5kLdsKby7uup2BspuBZgwcvsWszYBW1HS8dUYKKSz
	ElCunnmQ==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDTtZ-0004Jo-R4; Fri, 09 May 2025 22:00:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chaoyi Chen <kernel@airkyi.com>
Subject: Re: [PATCH v3 0/2] Add support for rk3399 industry evaluation board
Date: Fri,  9 May 2025 22:00:20 +0200
Message-ID: <174682074869.2029046.5714989650782845441.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250506034347.57-1-kernel@airkyi.com>
References: <20250506034347.57-1-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_130053_378171_E3B39357 
X-CRM114-Status: GOOD (  11.60  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Jimmy Hon <honyuenkwun@gmail.com>, linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Quentin Schulz <quentin.schulz@cherry.de>, Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Tue, 06 May 2025 11:43:45 +0800, Chaoyi Chen wrote:
> General feature for rk3399 industry evaluation board:
> - Rockchip RK3399
> - 4GB LPDDR4
> - emmc5.1
> - SDIO3.0 compatible TF card
> - 1x HDMI2.0a TX
> - 1x HDMI1.4b RX with TC358749XBG HDMI to MIPI CSI2 bridge chip
> - 1x type-c DisplayPort
> - 3x USB3.0 Host
> - 1x USB2.0 Host
> - 1x Ethernet / USB3.0 to Ethernet
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add rk3399 industry evaluation board
      commit: ff7c417e54a8cca74db147ba0417ecdfcb99f89c
[2/2] arm64: dts: rockchip: Add rk3399-evb-ind board
      commit: 2435fca0580ca9b58a8c5a71e5bd61b9707bc313

Dropped the regulator-compatible and reordered some minor things.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
