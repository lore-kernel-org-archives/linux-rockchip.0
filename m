Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3647CC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 21:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7KQbUjyj8WhCXoXtl7Bjh3MbbEL1BfX/nfb3yh3orA=; b=DBjmxQKRIDlYdB
	KDP+6il1Nv2T8+kHzFJegYD0h0zw9qwM73MPL7EZQAv6WOu5jFDeXOuuln2VWW1OMJb0XZZYZS3ml
	xb8D1wOTQdW5/Kc7Mt4RcLz49IucwWcI0CXfeaX3gofpmsGYjw0v8eRoIkc5SO0ktJpx7Kyrlc7On
	1DBEKa86LbjYB1CZe33o9uCHAnKHYf52eGY2hMPCg6OpOSXvv75GOBZpNIdmGuCR3pTw9HN8cQKPq
	rbhHKsEhPNtadUyn4pudHluzmupbeFIvfMm4CCg5i9zuIaxcgZrmI7mQnPGpx/1A6fjv80vLbiTy2
	SaLuj55iYBzhOZ/7oJsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7jbw-003Xyg-1V;
	Mon, 27 Nov 2023 21:57:49 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7jbq-003Xxc-2D;
	Mon, 27 Nov 2023 21:57:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id CBFD5B8292A;
	Mon, 27 Nov 2023 21:57:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 010A3C433C8;
	Mon, 27 Nov 2023 21:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701122257;
	bh=QXQkJS6YNg1DGqHzWpDvNBBwbklJYKJXSUCjijBVtSQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hXjes13UVbZDddAPPj4XZ69gRVkvRvJWZvTx8B+LYPj/lg9v9fzn6pZ9AYgOI9Yyw
	 Ucoa8IHxW4zE/IeuB7AEa6CiVa/apJYtrn7x18W0/xKWESgW6UassuTBe9AFazSmGx
	 NwoEkyusfIMPf8hWzvHNQixzJO/QkWLHNlEfS2k4mFF6Ut4HSlU3sR8JCS4Tpg/efc
	 xZfNpb46rgUQuQ2EKWNgF2riWaazXqK0GbATCiivu31A/4ZaTPasXRLFio+tvP+8Ce
	 s2Kr1ejfE8rqr2FOw4SX9O8ZXFRa43r4YfIzGUVQIlL2AFHVahUpUFUqino3k3PzBA
	 YZPUlhj/0Vl3Q==
Date: Mon, 27 Nov 2023 22:57:32 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v2 3/9] i2c: rk3x: Adjust offset for i2c2 on rv1126
Message-ID: <20231127215732.l7ib24u3lgdy5cfr@zenone.zhora.eu>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-4-tim@feathertop.org>
 <20231126194311.jxkvz3kqgsbzfgek@zenone.zhora.eu>
 <4717511.tIAgqjz4sF@diego>
 <69e4609d-689d-4f03-b5f7-d3563ace185b@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69e4609d-689d-4f03-b5f7-d3563ace185b@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_135743_266038_836CB5A7 
X-CRM114-Status: GOOD (  37.77  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko and Tim,

On Mon, Nov 27, 2023 at 09:11:57PM +1100, Tim Lunn wrote:
> On 11/27/23 11:26, Heiko St=FCbner wrote:
> > Am Sonntag, 26. November 2023, 20:43:11 CET schrieb Andi Shyti:
> > > On Wed, Nov 22, 2023 at 11:22:26PM +1100, Tim Lunn wrote:
> > > > Rockchip RV1126 has special case mask bits for i2c2.
> > > > =

> > > > i2c2 wasnt previously enabled in rv1126.dtsi, adding DT node alone
> > > > is not sufficient to enable i2c2. This patch fixes the i2c2 bus.
> > > If I don't have sufficient information about the hardware this
> > > description is completely meaningless to me.
> > > =

> > > > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > > > ---
> > > > =

> > > > Changes in v2:
> > > > - i2c: clarify commit message
> > > > =

> > > >   drivers/i2c/busses/i2c-rk3x.c | 7 +++++--
> > > >   1 file changed, 5 insertions(+), 2 deletions(-)
> > > > =

> > > > diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c=
-rk3x.c
> > > > index a044ca0c35a1..151927466d1d 100644
> > > > --- a/drivers/i2c/busses/i2c-rk3x.c
> > > > +++ b/drivers/i2c/busses/i2c-rk3x.c
> > > > @@ -1288,8 +1288,11 @@ static int rk3x_i2c_probe(struct platform_de=
vice *pdev)
> > > >   			return -EINVAL;
> > > >   		}
> > > > -		/* 27+i: write mask, 11+i: value */
> > > > -		value =3D BIT(27 + bus_nr) | BIT(11 + bus_nr);
> > > > +		if (i2c->soc_data =3D=3D &rv1126_soc_data && bus_nr =3D=3D 2)
> > > > +			value =3D BIT(20) | BIT(4);
> > > Any chance to put a comment here as it is in the other
> > > assignment?
> > > =

> > > Are the two assignment mutually exclusive?
> Yes they are mutually exclusive, and its only i2c2 that is non-sequential
> (as per Heikos description below).
> > > =

> > > Heiko, any chance to take a look here?
> > So the background is, that on some SoCs Rockchip implemented to
> > different variants for the i2c controller. One new-style controller
> > that they started using in rk3066 and are using even today.
> > =

> > For these old socs they kept the "old" controller block as a sort
> > of fallback if the new thing didn't work out, and the bit above is
> > switching between the
> > =

> > Hence that is limited to rk3066, rk3188 and seemingly the rv1126.
> > And while the bits controlling the i2c controllers on the original socs
> > are order sequentially in the grf register, the rv1126 seems to have
> > those bits in non-consequtive places.
> > =

> > =

> > So TL;DR the change itself is likely good, and hopefully there won't
> > be any more of those, as all the new socs don't need this anymore.
> rv1108 is also similar but different bits again (only going off the BSP
> sources).
> I dont have hardware or the TRM to validate this on rv1108.
> > =

> > I do agree with the request for a comment describing the issue
> > in the code, but otherwise
> =

> I will fix this.
> =

> > Acked-by: Heiko Stuebner <heiko@sntech.de>

Thanks for your ack and answer. Will wait, then for Tim's v2.

Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
