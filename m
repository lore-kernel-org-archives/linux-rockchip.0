Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C7F7CA0FFD
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 21:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDMYqytR2dBbMMd/657Fufg9WyjsuDWOBFlqHqkkjkg=; b=WRklwjeB5uXqKH
	rBiFpvRbC77KUJOrhYv+1bE0hpnTrmTYctOcZ0iNDNUYPBAUB1h3oEIL+iKdgy1OK9aLRr/rYBQrd
	VTRJvXyVrJ+jKPAg73kBVx9DUAe2OsIL36a+TYSd0IV1RGOIVCsyuZBQtRVwVGD08IBsBWUAbb3n/
	QnShT0mFhmQndXnDScSCCrT/Gks8RhwZjuFaiIWqRMAAyO+Ot+0Ccpldn8QLJ1gfRTSj6GgSE+bOm
	z4P4VALaLDcYWJc9eUxBaI5fsMzylJr4EI8hqxtocXUndU4BVbSWznSfqL6OqHNZw9qpGUwDJgoob
	9lYqMUMaYH+aZpHlRrsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usTGw-00000008STK-1r8u;
	Sat, 30 Aug 2025 21:38:06 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usT9k-00000008S9C-1cwo;
	Sat, 30 Aug 2025 21:30:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=1Baiur+XsL6xJjFj12NhEXn8Az4xq+GU7LaN0fj/cCo=; b=1GcTLIcVFiP+2ZlfyKuDE8pWvD
	Qv4pCZ+hjFDmzYM25qbASxwFYJcbBJYNEo2K/+RaAsTk2+YdFcWnQV0rvm6zdHTP/aHY4f+HYMcvj
	GDVVki5uYt5WAlcfVVUMIpud8vffMJIyYJ+GgxSAOhaTtBmFIgZt+T401xNxrJfPlnVM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1usT9g-006c6E-5c; Sat, 30 Aug 2025 23:30:36 +0200
Date: Sat, 30 Aug 2025 23:30:36 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Erik Beck <xunil@tahomasoft.com>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HINLINK H68K
Message-ID: <021c2e76-cbde-4a2e-a165-a61223cdff93@lunn.ch>
References: <20250818100009.170202-1-amadeus@jmu.edu.cn>
 <20250818100009.170202-4-amadeus@jmu.edu.cn>
 <20250830171409.592c1f63.xunil@tahomasoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250830171409.592c1f63.xunil@tahomasoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_143040_442145_EF2884A0 
X-CRM114-Status: UNSURE (   7.18  )
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

> > +&gmac0 {
> > +	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> > +	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
> > +	assigned-clock-rates = <0>, <125000000>;
> > +	clock_in_out = "output";
> > +	phy-handle = <&rgmii_phy0>;
> > +	phy-mode = "rgmii-id";
> 
> Please change phy-mode here to "rgmii". This change will yield an ethernet
> speed throughput change of a factor of 100+. 

Rockchip by default do bad things with RGMII delays.

  tx_delay:
    description: Delay value for TXD timing.
    $ref: /schemas/types.yaml#/definitions/uint32
    minimum: 0
    maximum: 0x7F
    default: 0x30

  rx_delay:
    description: Delay value for RXD timing.
    $ref: /schemas/types.yaml#/definitions/uint32
    minimum: 0
    maximum: 0x7F
    default: 0x10

Try setting both of these to 0. And then use 'rgmii-id'.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
