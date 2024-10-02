Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A66FCF31AE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GpSKkdIEkKCo4IjjjjjwrKCKxld4ttRipGwLELtUMI=; b=BXfGFljwMRjvxN
	eUiz38tekCY7Hp82TdY0D60Xvp2mm2hmG8HiSg6jnnTestl4O1moSKHHmb7Osj1DRfAI774AbyClP
	0y80K20wIxdS+YUGNa9k+YwYpB4zVOsVBEYuHStSCtRZUasC5zJzF3nge6nkxCwsj2d+w2bAEqrHO
	og3gvslzdrXu/yL/ASiouRSZaShlY65e2UDTnhN1+m2F2gDVrPB1JWPtEuv6oMxnN9SESXHfKjoAd
	C4KGzd9bT85kwbfmIFXObgFUW6rVX5HjaIDeyv70M9YceEp+Z+xseM2eMhrd7QvaTQ4VGnrw6E1i/
	Ar1dxsfjtWmcf1Gf7kAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwJ3-00000005RsO-3FiW;
	Wed, 02 Oct 2024 10:10:05 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwHm-00000005Rer-1yLX;
	Wed, 02 Oct 2024 10:08:47 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 1354A23CC7;
	Wed,  2 Oct 2024 12:08:45 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FrrN-HP1gQTM; Wed,  2 Oct 2024 12:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727863724; bh=xq5qb9kkulN99Q7U1ADjv0fIaGu8fXT6nM4OPnQEMNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=k08CTneI4AItkWuzjLybxLenme2gBwIs85Ei4+GWmwungB65VZfEcqVVePxA0zQn8
	 MltM5BlWd7ND6zsi9H8SJZJpYPVotoPeTB8KmTD+Z+2b4FG0TlVGPBDk48PWz/l7v2
	 LN07NTXjAWXmpiSrloB9q4ThtSrfL8PPOpPhgneOEynNMthh2JbEmnteSOr9UlIC5O
	 SH0ZA/I6WiJ0kjK0NUvK5HN49IXx8ny0YPyKjHBPordPdpWiXwfJ3rIRT4EIRo9anf
	 XTeaCY0FUg1u7gHMuf3bmOKi7gz2KwCg4s1J71Q7MUL8PD5SdBRMMRHrkTpW+o1c1k
	 /rP5fnuiUrdLQ==
Date: Wed, 2 Oct 2024 10:08:20 +0000
From: Yao Zi <ziyao@disroot.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 4/8] clk: rockchip: Add PLL flag ROCKCHIP_PLL_FIXED_MODE
Message-ID: <Zv0blIPaF0Y2Pmn1@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-6-ziyao@disroot.org>
 <8495918.NyiUUSuA9g@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8495918.NyiUUSuA9g@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_030846_666658_8055E9C8 
X-CRM114-Status: GOOD (  12.76  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Oct 02, 2024 at 10:16:49AM +0200, Heiko St=FCbner wrote:
> Hi,
> =

> Am Dienstag, 1. Oktober 2024, 06:23:58 CEST schrieb Yao Zi:
> > RK3528 comes with a new PLL type, flagged by ROCKCHIP_PLL_FIXED_MODE,
> > which should operate in normal mode only. Add corresponding definition
> > and handle it in code.
> > =

> =

> More commit message would be nice ;-) .

Good idea.

> It's the PPLL for the pcie controller that is specified in the manual to
> only work in normal mode. This is helpful for people reading along :-) .
> =

> Heiko

btw, for the documentation, is there any technical reference manual
of RK3528 available publicly? Please let me know if it's true, it will
be quite helpful to understand clock tree better :)

Thanks,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
