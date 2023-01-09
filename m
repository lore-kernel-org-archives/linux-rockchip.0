Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9DBBC54EBD
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 14:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2HZcrh8AcGxpzWh1qBaD8ReoWz/oDxK3dGFLHSv1dw=; b=Ua1sIPlx8UbZ81
	1CcNEEOPncGW3UsVs2CAo73E2NXHxY6Ok0qBIpG7ZUSg7QLYWempVp1V/U1WCSz6gIALUypLtzaEV
	FEjncbxGDNIqOKltb6tbYECeCjtv/32RioSS4uJMnLYT7AiQdVJBx+vIeIKX+sy+c5xNlKzdgmche
	6hjCL3ARDBvvsiujf58+Nrplkmo35ziOPDzUKg2Z1RtI0qATRycommQHQvRP3IpL0K7AOR52JD/92
	mZ7CHpxRtE4kUXSZhLPyIWzAGrImpczo6DwoLiJR8DCzPIACs2ifJnJImjMYyurzuwxzIbpt/+C7u
	0coKJ7aFzDR2w63pMOVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEt7d-001xkF-A6; Mon, 09 Jan 2023 14:27:33 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEt7Z-001xfE-HZ
	for linux-rockchip@lists.infradead.org; Mon, 09 Jan 2023 14:27:31 +0000
Received: from [IPv6:2a00:23c7:6883:e501:e3dd:1a86:446f:7abf] (unknown [IPv6:2a00:23c7:6883:e501:e3dd:1a86:446f:7abf])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 99A346602D66;
	Mon,  9 Jan 2023 14:27:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673274443;
	bh=tLNThKqZUB1DNyTWYvgWqdVsU5kyJKEgZq9b9ugHPaA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=RPNXhDRfX1c2Bi9mrDKcZzUiviQA60XpYEFXb9IzNye4DXIZ0CjUeDsbC+DC5sjrL
	 yWtC/7SdtOd9g9XFvthticMcdfIUncQwRotmkckYf401pvUWp3gJzsPQ1vabgDj0OQ
	 7v2GrID0HB/EQjrZh2ACUjmdfAaGBY8+eIliQsq8gHBWtm2yDh6ML2m3Kr0gaRNEaq
	 pnQ87S1B3xnrIAHl5MvNTfEzrAQ/baWVJZer49Y3XwqZkK4Dz6bpQgZTDH90Ed4B8a
	 5jkzhyazihqVdwh8AYB49ch8TpbMIdratY3AO29zsWyYATaqr/FBNw1UeN7I5h8aB3
	 xbFvePIT9gJZQ==
Message-ID: <0a3c520c75dcfe6ff86e96aa18fc5b52ce1e3f30.camel@collabora.com>
Subject: Re: [PATCHv6 4/7] dt-bindings: arm: rockchip: add initial rk3588
 boards
From: Christopher Obbard <chris.obbard@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier
 <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Benjamin
 Gaignard <benjamin.gaignard@collabora.com>, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Date: Mon, 09 Jan 2023 14:27:21 +0000
In-Reply-To: <20230107002854.2kok76qdvl4a3hzw@mercury.elektranox.org>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
	 <20221214182247.79824-5-sebastian.reichel@collabora.com>
	 <d12fc3f83ace9285f7e1153003b14bc351ce95de.camel@collabora.com>
	 <20230107002854.2kok76qdvl4a3hzw@mercury.elektranox.org>
User-Agent: Evolution 3.46.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_062729_792156_02EB35D0 
X-CRM114-Status: GOOD (  14.09  )
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

> 
> 
Hi Sebastian,

> > To better match other boards from this vendor (e.g. RADXA ROCK 4)
> > 
> > would it be best to capitalise this (and obviously the model field
> > in
> > the respective DTS patches) the same?
> > 
> > So it would become "Radxa ROCK 5A" and "Radxa ROCK 5B".
> > 
> > It's also capitalised this way on the documentation website [1].
> > 
> > (I think the vendor has specifically dropped the Pi reference from
> > these boards, but I don't know why)
> > 
> > Thanks!
> > Chris
> > 
> > [1]: https://wiki.radxa.com/Rock5/5B
> 
> The current format has been requested by Radxa:
> 
> https://lore.kernel.org/all/892CB3E963AEF095+eaed7498-2324-9476-6a24-f940d62adb74@radxa.com/
> 

The comment there suggests to use "Radxa ROCK 5 Model A" and "Radxa
ROCK 5 Model B", so can we make the following changes before the next
revision, to align on the model names?

PS. I think "board" is a terrible suffix, it's almost like when people
say "PCB Board". But maybe I am missing some historical context here ?


- Patch 4: "description: Radxa Rock 5 Model A" > "description: Radxa
ROCK 5 Model A"
- Patch 4: "description: Radxa Rock 5 Model B" > "description: Radxa
ROCK 5 Model B"
- Patch 6: "Radxa Rock 5A Board" > "Radxa ROCK 5 Model A"
- Patch 7: "Radxa Rock 5B Board" > "Radxa ROCK 5 Model B"


Thanks!
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
