Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C5F7CCA490
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 23:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHg5xRLX2tIPVfR74GDcKOvLuKaFuQDOCycoU23f1+0=; b=wiQfspmUCTHVVR
	HIh/t5sRuuHe4j54eSIwkKZ0UBgQJnG8Z1NVqHIKLgOz1+BNa3TuSV2Xsime1VGVTg7uHH7Z/wSnl
	4TOkp/2oaP6ZaKrsbL4p9bBU1p+z+OxP9161BAPRaR7XkCTPPxqEmNC7JNWZ1k0r1O+YTmcKqK5hV
	ZVzss4HBn7Uhw1DqeCqU1SY9mS7Bm2ygIz2yfLaXcQdYMvmeREsP/edxSlac5dYwdoXF58h1cfNJ/
	6H7hka/934n4C+yaQkRYpeRuQLCHxTq7Pr/ISEUGqALGzRMYsK+34bC8REW03m1hEPxMM/Re0FCfq
	MR0zVMM52Lf0eVcfPdSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrUA-00000004D76-2AD8;
	Fri, 16 Oct 2026 23:37:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrU7-00000004D6t-2ePd;
	Fri, 16 Oct 2026 23:37:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E7CE743262;
	Fri, 16 Oct 2026 23:37:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FF301F000C4;
	Fri, 16 Oct 2026 23:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792193830;
	bh=43dmYeJ/z+ZxlGAmge5piW4Cp5LEqx3lnTOjZcqfDnc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=nTmYIRN4QNxbA3F470LzUbUhvzUkwGOw2235mQrsCYOqOPtJc4PF9rRHdFO7lIKxp
	 eG+GwMr5zt32zIMJNboTIR+ysq9AXOC4c4Ice9fsdvr+8mZse44UWuY/Qh1+4W8DKE
	 WZoKr9B4NydAfnHF3eVC5HXgveDBJS7LBeO0qhnGZsiEYdx2C6ddkAPGukp5+dFLih
	 EbIdiDlqJBljTpnMjh78LQIEwrFRHrNRkJszxoChmXqK2T+898EiYUeNFx84F5yTYq
	 2ax24A07eEMvGbQFVjtwHykeLzcj9efN2SO0GDyiigog0ddHIlBformmepc2SfR5tI
	 iX78LGI+5JP1A==
Date: Fri, 16 Oct 2026 16:37:09 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: netdev@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>, "David S .
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Maxime Chevallier
 <maxime.chevallier@bootlin.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, David Wu <david.wu@rock-chips.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v11 3/6] net: pcs: xpcs: add Rockchip RK3568
 platform glue driver
Message-ID: <20261016163709.00cc7c12@kernel.org>
In-Reply-To: <20261008175225.3375274-4-coiaprant@gmail.com>
References: <20261008175225.3375274-1-coiaprant@gmail.com>
	<20261008175225.3375274-4-coiaprant@gmail.com>
MIME-Version: 1.0
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

On Fri,  9 Oct 2026 01:51:57 +0800 Coia Prant wrote:
> +config PCS_XPCS_PLATFORM
> +	tristate "Generic XPCS controller support"
> +	default PCS_XPCS

Why the default? Surely there are platforms with PCS_XPCS enabled
which work today == don't care about the new code?

Linus is known to hate _any_ new symbols defaulting to enabled
on olddefconfig.

> +	help
> +	  Generic DWXPCS driver for platforms that don't require any
> +	  platform specific code to function or is using platform
> +	  data for setup.
> +
> +	  If you have a controller with this interface, say Y or M here.
> +
> +config PCS_XPCS_ROCKCHIP
> +	tristate "Rockchip XPCS controller support"
> +	default ARCH_ROCKCHIP

Same here.

> +	depends on OF && (ARCH_ROCKCHIP || COMPILE_TEST)
> +	select GENERIC_PHY
> +	select PM_GENERIC_DOMAINS if PM
> +	help
> +	  Support for XPCS controller on Rockchip RK356x SoC.
> +
> +	  If you have a Rockchip SoC with this interface, say Y or M here.
-- 
pw-bot: cr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
