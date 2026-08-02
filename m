Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7144C55171
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 19:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSVqvJElY5fDozviKSrRqUcOFnsJfD5yTwGUtnAsCDs=; b=xAyToKmuY1+ozz
	DTHz49JLWz5wozUEWLwOczISccmg6S9HB0YOPrjnW5to2aawL9ZVMVKSOa2vAdzFjjPI+0I96+HFE
	2D1Tsi2lcuOPAMNy1LLDszcEn4NZdHGrwMjaLuyh3sH6D3n4WDXIp72LaN4I0ECZWtuynq7Q5OyQm
	lnG42B1btna6SIgi8m8O5oqBlv1iPMPUryfH1sxkVar2S+0hEK9HMxoRLgNYZ6wVpa4VG2GYxlWto
	zwySUmGRMDhiGaI+pm7/7LaDoFg+dyUfasV7M1kiAPKiX7NGAWjop1ZrGwsq47kRdkBnOyqv6t2NS
	yC4aokwmfc0C845eUJtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqbQi-0000000FxuA-18FF;
	Sun, 02 Aug 2026 19:01:00 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqbQg-0000000FxtD-214g;
	Sun, 02 Aug 2026 19:00:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=3ShKaSqVzpoKTOwv2WVILmoiM0sd7wX/pCkyn8buCZc=; b=fXRZGqyY1gL41dRfLIFcq8Dokz
	GcgcZXVeYXq1zbgcc5ZyBAmzbC0u5hqrStplnQZ+iEp3PSZv6NSCpp4rA/5VTitgS30L+YNtgrGUO
	x5bt2Yd5UN+G+vh9LuyONS2h6wd3zjmS5kL3nfrgY3k8KYHafnC4x7RR5ggbjSC9pUfk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wqbQM-00FbXo-49; Sun, 02 Aug 2026 21:00:38 +0200
Date: Sun, 2 Aug 2026 21:00:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
Message-ID: <ba5522ab-1e77-4236-89cd-9483ed1f2da0@lunn.ch>
References: <20260801142244.679437-2-coiaprant@gmail.com>
 <20260801142244.679437-9-coiaprant@gmail.com>
 <23d8e994-8552-466f-98e6-c47d5783525b@lunn.ch>
 <CALj3r0i5yVcJY8V75y0Hm5xjtZSBpH0DXSAWKsAUqguChVcxYA@mail.gmail.com>
 <302c67b0-6729-4930-a409-a2408dde33fc@lunn.ch>
 <58C6FD30-02CF-4DC8-BE7F-4E2AAC5985E4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58C6FD30-02CF-4DC8-BE7F-4E2AAC5985E4@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_120058_515347_367FB697 
X-CRM114-Status: GOOD (  11.90  )
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

> Hi Andrew,
> 
> You're right that the xpcs core uses C45 exclusively, and modern kernels
> no longer require C22 callbacks for mdiobus_register().
> 
> However, I'd prefer to keep them for two reasons:
> 1. Debugging tools (mdio-tools, ethtool, etc.) often use C22 reads to
>    inspect PHY/PCS registers. Having these callbacks makes debugging
>    much easier without having to patch the driver.
> 2. It keeps the driver consistent with pcs-xpcs-plat.c, which also
>    provides both C22 and C45 callbacks even though the xpcs core
>    only uses C45.
> 
> If you strongly prefer removing them to keep the code minimal, I can do
> that in v3. But I think the debug benefit justifies keeping them.

Keep them. I was thinking it side steps the issue of accidentally
mixing up C22 registers and C45 registers. But there are useful use
cases for C22.

      Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
