Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27117C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 22:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/YiXLObZgH2HiKQwnwDormC0O11MHA8VujacMkxaN0=; b=Lr7dp6ayyWjecS
	QDWrIZnRQ/Bct5Ye/0hjOwtplR2NXaLCyLgtobExVvb07cM4nu5OhCjR2V+sAZp5LTywS6hyOR8Ig
	dlakD1DhnCqG5b+Wcy8dmGUb1eHqoo1hmrb/srUJ5G3LV7EySEHUcHzbHTjETzPL4TW9NzCj2PS5b
	C1DLZUd2uEQmdCDGYrvsXqySCPh1mDjBmPD1GiQ+z5p0a8w7yrI9BmaUTWQyxuMMTMaodYovQqZVA
	dG4l3unsk3uEai/lQB6GeWfO0o10zHv9bgjvEZSC9UtrRkzQ8KEdoZj4logY+a6xP9Zprla1Em5se
	lZjbfwcUL40rYIoCk+jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqK29-0000000CPXU-0g9c;
	Thu, 06 Mar 2025 22:49:41 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqK26-0000000CPX0-3KSv;
	Thu, 06 Mar 2025 22:49:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=OlJwXZDre2Kk+1vsO1dzJECs6/pSAhWywGn7XDuB3qI=; b=MFV5wupbvsv2saMwMnL+TF0RaJ
	3zPOwkn3qrNh4ewM/HT73s+A3JR+37/OHu1gYcvKzRbq9dFWH/prFLhoE9fTkl39O/1CIgFBXg6J7
	cDtI49/YakBfG6xH8kaqe1HD5+rfnJhTyJzWSoPmsCVikZYOI/gF0XPPo6hsnzmWXIS8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tqK1z-002wWm-DS; Thu, 06 Mar 2025 23:49:31 +0100
Date: Thu, 6 Mar 2025 23:49:31 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Enable Ethernet controller on
 Radxa E20C
Message-ID: <e0e8fa5e-07a2-4f4f-80b9-ddb2332c27ea@lunn.ch>
References: <20250306221402.1704196-1-jonas@kwiboo.se>
 <20250306221402.1704196-5-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250306221402.1704196-5-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_144938_831864_A05127AB 
X-CRM114-Status: UNSURE (   6.08  )
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

> +&mdio1 {
> +	rgmii_phy: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";

The compatible is not needed. That is the default.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
