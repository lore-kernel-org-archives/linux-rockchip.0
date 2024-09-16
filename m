Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AADB0C3ABB2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 17:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2N1+GR15JBuoPUZV7CEVvLgL14QwrowS9x5TgwTFOs=; b=1EGUYOgVbQN+rc
	MvcIEQip+YiCLn7gg3HLHXEkCHvAzqoyzZ77AWrnYfsLaZ9bx807csQn6MDM6hXOYWXXcg8uKtJxZ
	0BMo/HxR4T31IZ6xwMAby/idByW2V9sWZTdOhV/zJPspojqsVuEBGXHHZvhmtxv6a+xk/N31fp4m3
	lVuCZ4Hc69CdImTnCe2ulCy9ubza7EoT+Dz42Ou5ytIqHMRqGZuJIeDS+1NaY6QnY11oLn3VnKiDG
	OmwvUsV6Hpe7APnE+tcc4E7Pp5Mn/0YXs0cFGtuky+a5Kx/bbtDCWtwma4F21GZhqdiw/uuIm0JzK
	yxOeXMJNXY5Rj1QID5SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqFiI-00000004cDd-4BR3;
	Mon, 16 Sep 2024 17:40:39 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqFhB-00000004c4y-2s94;
	Mon, 16 Sep 2024 17:39:31 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8B2A923D79;
	Mon, 16 Sep 2024 19:39:26 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yp1IwWCoYNUG; Mon, 16 Sep 2024 19:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1726508365; bh=4uA3yvxhGcyJm/hRudJ642pDYzrgInwohFwQ2QiPijI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KbPSoLkPaT3Iyig84kQNoT1JHhpRH+vTj6BvS7EgQY1vQK7XqFz1xeb1apY3hjexY
	 OdpKeTOVNNk09a5Q62gq4sqks4/HFDhsBxmShdzpl8jGDhPXTFYI+qDIcS21zl969O
	 5owirBiEt9Aq/T8CYBSgsGJIYachaUBOsQXUlbmVgko51YTTzkMApXxEBxxLz4etBp
	 pkMSwuh6f31vVPoW1u8QCG3m5XsjEUk4KZjjXh8pAFTHhlVkLO8EtNyKdFezL3z/Pj
	 TMsRu4rEdG5H/XFiotaGsiVsLxVFz504S7mthCkyh6UTI73fjJf4aYBOR61pW5m719
	 c2pKS//7sgVsw==
Date: Mon, 16 Sep 2024 17:38:56 +0000
From: Yao Zi <ziyao@disroot.org>
To: Conor Dooley <conor@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: Possible misleading information in rockchip,rk3588-cru.yaml
Message-ID: <ZuhtMHgx8XlZaayp@pineapple>
References: <ZuIJgiN2xp6oPrHD@pineapple>
 <20240916-neuron-surfer-32db6440e1ad@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240916-neuron-surfer-32db6440e1ad@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_103930_152629_37F3CA58 
X-CRM114-Status: GOOD (  19.81  )
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

On Mon, Sep 16, 2024 at 05:33:49PM +0100, Conor Dooley wrote:
> On Wed, Sep 11, 2024 at 09:20:02PM +0000, Yao Zi wrote:
> > Hi,
> > 
> > rockchip,rk3588-cru.yaml, dt-binding for RK3588 clock and reset module,
> > contains description of customized property "rockchip,grf",
> > 
> >   rockchip,grf:
> >     $ref: /schemas/types.yaml#/definitions/phandle
> >     description: >
> >       phandle to the syscon managing the "general register files". It is
> >       used for GRF muxes, if missing any muxes present in the GRF will
> >       not be available.
> > 
> > But after doing some searching, I found that clk-rk3588.c actually
> > defines no clock hardware with MUXGRF type. This is also true in in the
> > vendor code[1], it seems there is actually no GRF mux on RK3588
> > platform.
> 
> Have you been able to check the datasheet/register map for this piece of
> hardware? Does it have a grf register region?
> Wouldn't be surprised if it didn't, and the cause of it being in the
> binding was nothing more than copy-paste.

Have checked a public datasheet[1], RK3588 does have corresponding grf
region and there are only clock related bits in PHP_GRF_CLK_CON1[2].

But these gmac clocks bits are used in dwmac-rk GMAC driver[3]
internally, out of the common clock driver, rk3588-cru. So I don't think
the CRU needs access to the grf by design.

Best regards,
Yao Zi

[1]: https://github.com/FanX-Tek/rk3588-TRM-and-Datasheet/blob/master/Rockchip%20RK3588%20TRM%20V1.0-Part1-20220309.pdf
[2]: Page 836 in [1]
[3]: net/ethernet/stmicro/stmmac/dwmac-rk.c:1132

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
