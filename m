Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BD4DC531DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 06:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMmOOYRqWoIuMFlZ22AHf2/HdThOHZm9VOfesQ3mbKk=; b=LMv/sRE6Ao8JdG
	Zdmz6eFUGHnmZQf7cFZV+ZpVztr6z/4sVFk4aJa8ezeuJcsLWvA9CCdXXRbrd4ytKk5NjFtgWJyNu
	A0IJBmVQo8QP81QOslyEiOcAw1xncbJk+qIAg6U4c0uLGXK9y1nhYE0UK1MVDsOufoOBZskgZeW3g
	JRN8duXTMxifKVs21WdLk0qFLwccdDcfGND5rmV0RYTqnaTgmluGF6XRJCXB9cxVhE8dxkLiTezBD
	qHIKFu07RtxOy6kB18OZ2PMJbYB/EaOTf2i9QbTrwFs9MZpW20inx5ZRaMQUuCawpGDuQFaEiFmv2
	HYb5hvUMaj2LIr5V9CJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seqje-0000000ByUO-2k6A;
	Fri, 16 Aug 2024 06:46:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seqj0-0000000ByNS-1Z6R;
	Fri, 16 Aug 2024 06:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=To4DwKZdAd1zrbvpD+Ji8ozx8eGEkCykPZqh6w3t1TM=; b=cK+AVozhS2b0KOClwOoGUpumHo
	mMnwTsLmwvQ6KswCL88xMi32RjDFQi632p0h8Rq88UG20IPm24SPs29cgn/II3OLzUUv+X5VL1XOT
	2bfxW6oKfkh9Cn5xSjNOOaDrh4NI3b3miJJKfDbRKNJSOQKR+7NohcOtsxOuhqe+wykMr4ilWLKAq
	UN7ITgsR+iFNbOkGOpRMSPQunkkR7cbKYKws2rhodnxNJCGIRRJ9bl1JyW032Uu8yckgvVgKnTKU+
	8uzasY3WO7ODR4N8ogw0gtpREabJav8/aKjf1F1dFLqcK/WstA2kF870ydhTl5fgjxjfA+9VPCxc6
	uIDz/+Bg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seqig-0006nr-A2; Fri, 16 Aug 2024 08:45:54 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>, Yao Zi <ziyao@disroot.org>
Cc: Celeste Liu <CoelacanthusHex@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH v3 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Date: Fri, 16 Aug 2024 08:45:53 +0200
Message-ID: <22683755.GTVRSBfYgM@diego>
In-Reply-To: <Zr7z-SOFIgcuplq-@ziyaolaptop.my.domain>
References: <20240814155014.18097-1-ziyao@disroot.org> <10324095.IZOipudI63@diego>
 <Zr7z-SOFIgcuplq-@ziyaolaptop.my.domain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_234614_454995_0DD74286 
X-CRM114-Status: GOOD (  23.41  )
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

Am Freitag, 16. August 2024, 08:39:38 CEST schrieb Yao Zi:
> On Thu, Aug 15, 2024 at 06:43:20PM +0200, Heiko St=FCbner wrote:
> > Hi,
> > =

> > Am Mittwoch, 14. August 2024, 17:50:13 CEST schrieb Yao Zi:
> > > This initial device tree describes CPU, interrupts and UART on the ch=
ip
> > > and is able to boot into basic kernel with only UART. Cache informati=
on
> > > is omitted for now as there is no precise documentation. Support for
> > > other features will be added later.
> > > =

> > > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > =

> > not sure if you have seen Krzysztof's comment yesterday, that he found
> > the soc node getting documented in 2019 [0].
> =

> Oops, I don't read that before sending the series.

no worries, I think both mails (the linked on and your v3) happened at =

nearly the same time on wednesday.


> > I guess that counts as a strong suggestion. Not sure how you're feeling
> > about that, but I guess we could move to that scheme for new socs.
> > =

> > So would you be willing to move the mmio-devices to a soc node?
> > (stuff with mmio addresses in the node name)
> =

> I'm willing to, there will be patch v4.

thanks a lot :-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
