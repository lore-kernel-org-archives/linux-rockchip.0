Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C5CECA0FE7
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Aug 2025 11:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNZ5x8ukol4J/dBWngc0ZAdC6Erb9YjQyRYhn4gCAd8=; b=EMVyQJ0BDsn3mQ
	oVzXOOGCXQCcyAN98JeyQ0CUxchpGlfuNFKb4s6VRby84xsXelXLJuYswbJVA2IRom8576lBwYHDf
	/okTVB2UvbfCCCqyJdtaKwce0z/76tREcxmRP0y0v5w8qsEneqmImJLra1E/oXxyCmb+OnfOOWjei
	GUbfnobocOVyhly7dK7bD0R+cF8x+bUoRPGjQYOJcDkTle0rKoXBric4pTq455pw4YiNpxRjFKPfc
	Hj+ZRKq61BFIvjXJrUo1na3tlSNwPRUrLhthpQ85klC1Nr0Yfs8eKMa3PWazE5wjGgbGUvK2WXdD8
	ZRSec6DzIv9Vzxukumxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq8SN-0000000628s-1N4r;
	Sun, 24 Aug 2025 11:00:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq8N8-000000061YO-2Bu2;
	Sun, 24 Aug 2025 10:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vwyg9Z8kltpkwujmCcdDWk9z8Lamok2C0jIS+V5RVVg=; b=XJqZwGcy8Wl52H3OUT/jHm9gek
	41oZpndzhW1AS+dy8YwJH6Rjpomov/3xLy2wTPusBHm77v2OTqSbK1EitQYvd87DBqCgL9a7TnWnj
	hEvsUiS1e5rW4+s6n9XPmy4wYpJDO2XUWBCV1WMEf86EURYB63CveMl8Or+vwLfkPUZfbp65LG6n6
	MPIMVwRxNebMWF8ctbG/X1d47c8MNEwM7ZRoRng2H8tCkKa9dribwulr7QDXToqoqOYqp5tWZjZpq
	SI87eCS3ceCR9A/9hSsXMvu9ZTMIeR2nOQj2Jn6vbFsTdmabsfJscesPKD5CJ8rDAURiBrHB0Xsan
	VJ8Ny/uw==;
Received: from [62.245.128.201] (helo=phil.wifi.munich-airport.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uq8N7-0005H4-84; Sun, 24 Aug 2025 12:54:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: correct network description on Sige5
Date: Sun, 24 Aug 2025 12:54:44 +0200
Message-ID: <175603280226.3445205.17256679636461186320.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250818-sige5-network-phy-clock-v1-1-87a9122d41c2@kernel.org>
References: <20250818-sige5-network-phy-clock-v1-1-87a9122d41c2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_035450_558313_69CE5288 
X-CRM114-Status: GOOD (  10.03  )
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


On Mon, 18 Aug 2025 19:12:23 +0200, Sebastian Reichel wrote:
> Both network PHYs have dedicated crystals for the 25 MHz clock
> and do not source it from the RK3576.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: correct network description on Sige5
      commit: 09cce878427962a5c2a3a37d6cc52485a0134ac1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
