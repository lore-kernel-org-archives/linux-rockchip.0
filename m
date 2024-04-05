Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CF27CD11C2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 16:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7sYHTzwurct+FgHF54zpSNNwKP3dT7kgu5aYSNXEYM=; b=22BVMZEl5gE2kZ
	fL4FyclE2jA9HhWBJWbvVPNqWnVyPKpNPQGxCsiwIiPXalmU0h3sU78IGxjZlzm8g6PpTI4H9aMUV
	5pwtB7EoQia2uUKDdzmUS3NGrrE6CdIJjKDg4NT0T4BeFvULcnNQdM6hcdRYtW1C+CxFkDre9+cA6
	VOa/ASRAschCgEQoXa1K23N7c1k8HBt7wQs2YAD6saBlMaVl3AROHuXWXWTJIAhX2OpcpHJCyBxWr
	2KkJZWw5EbT2nkcyrTkI8c5clE06Cnhx/tfNITOL+zrnlD/oJiONE6nRaiDiC0d2En5INK9wxqNRe
	4JaompekR/3qGyzAu9GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmBn-00000007wfV-2mY7;
	Fri, 05 Apr 2024 16:13:15 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmBk-00000007wac-2paY;
	Fri, 05 Apr 2024 16:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ociFhFa0cP7BJBgogyzRy65MXmUjnTulpYz1ZIcD8Qk=; b=0CNFw485XFrXYeKEmy3hSstO6K
	AHEV+xcniM7r9J5PAkHzeCOQH2WD6Pk46Yo6kriGExUqaVr2nxJG8YZOVj62SAEeDLAkKxpvLAOGJ
	OX7dKSZsbKPDXB2cEzBweCRemhHP5yRj4gFEHFlkpUzhyEvm7iVABd1NFVV+BtQRg8yo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rsmBX-00CJs8-BP; Fri, 05 Apr 2024 18:12:59 +0200
Date: Fri, 5 Apr 2024 18:12:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: add Protonic MECSBC
 device-tree
Message-ID: <a94e76b0-a1dc-4800-b0bb-c621b1364b0b@lunn.ch>
References: <20240405-protonic-mecsbc-v2-0-0a6fedc78b9f@pengutronix.de>
 <20240405-protonic-mecsbc-v2-2-0a6fedc78b9f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240405-protonic-mecsbc-v2-2-0a6fedc78b9f@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_091312_781546_D87B89A4 
X-CRM114-Status: UNSURE (   6.73  )
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

> +&gmac1 {
> +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
> +	phy-handle = <&rgmii_phy1>;
> +	phy-mode = "rgmii-id";
> +	clock_in_out = "output";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1m1_miim
> +		     &gmac1m1_tx_bus2
> +		     &gmac1m1_rx_bus2
> +		     &gmac1m1_rgmii_clk
> +		     &gmac1m1_clkinout
> +		     &gmac1m1_rgmii_bus>;
> +	status = "okay";
> +};

Thank for changing it.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
