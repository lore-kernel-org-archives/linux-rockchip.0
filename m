Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7189CE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 15:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wpDsiy9eLamiOZQYzpc0LLgsQLTSwx1l+YueuUZm3gU=; b=hwEDginlbDR4+XCg8UXbyt8Nmt
	r2cU7Ng6m35WnWWC/8dIoUPqk4B0ZdGN5UUtf6IjHTUeKrnud45BfCt6dejARquBsol0phJqYFHra
	I4ND+i3CsnLPuZON2n4lb0N85TxxpyleH4J8AZ3L51Gr5RKNgNfUSVCpMVNwgcB3w6WiOvmZ+17UA
	IwaV96DCtmGBLSND2dSl9uh85QR1iLbWC+zJuukpVzG/8uzCkKN29ZKr/9eYR2CSZcrhHs1yfkj//
	lDeYN23muqnx5DDdW6G/HVjTXkPnt/a/RS+OTrBS427+RJYaNpgGGZQEzWuq1kdXVYWaNUh1/LXp6
	ELN6apTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOexf-00000005K8x-1OzE;
	Fri, 20 Dec 2024 15:30:43 +0000
Received: from out-176.mta0.migadu.com ([2001:41d0:1004:224b::b0])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOexc-00000005K84-1YNL
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 15:30:42 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1734708635;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YRPmWTEiScHh3brPPlHvzwFa2XSYuJikoYnOc7EBH3o=;
	b=Fm9MrBtk+TxQUsaOMTfmUeu4ZuBTlJMLzg5v30zWaJCHM6bR2NzuSBZI8USYR9l7C1POz4
	n8h2pJTZ5IGF/ZxuxM6FlkKvxHJg10zS3P0vRh/1c2alrGol5Fhc24n5vJCcXeGf5LIvzF
	FFjh+I0gKB1JaENdgEj3yr4f/ZCnqCDzS+jjD4UqUJjJ23ZZOEcX1LNqDBMgTeRE7yvpLs
	xp//zfX72Ct3HQbG8wKYIAek7KQy97L8I5W2W2ABdrlnRiwziTEHev5znZceiu6SSm8cEu
	f/WAw8E4jxhyK5QQg8k27aQmYxoPRntrwTd9ZWkUhb7wSH3UJX193ZExlftFBQ==
Date: Fri, 20 Dec 2024 16:30:24 +0100
Message-Id: <D6GMVWF3ME00.39Z2MQY7ME97D@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 35/38] dt-bindings: arm: rockchip: Add rk3562 evb2 board
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Diederik de Haas" <didi.debian@cknow.org>, "Kever Yang"
 <kever.yang@rock-chips.com>, <heiko@sntech.de>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-26-kever.yang@rock-chips.com>
 <D6GMI4JWTEFM.35B3HZS6Y9WWE@cknow.org>
In-Reply-To: <D6GMI4JWTEFM.35B3HZS6Y9WWE@cknow.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_073040_848397_BB6F2368 
X-CRM114-Status: GOOD (  15.43  )
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
Content-Type: multipart/mixed; boundary="===============2389171626375804789=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2389171626375804789==
Content-Type: multipart/signed;
 boundary=45082ac5a8e1ad64d2c5b74bf9dea07638ca4a64d6a8781858967a703737;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--45082ac5a8e1ad64d2c5b74bf9dea07638ca4a64d6a8781858967a703737
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Fri Dec 20, 2024 at 4:12 PM CET, Diederik de Haas wrote:
> The To/Cc list seems a bit short?

I now noticed that comment applies to quite a bit of the patches.
For dt-bindings patches I would at least include these:
- Rob Herring <robh@kernel.org>
- Krzysztof Kozlowski <krzk+dt@kernel.org>
- Conor Dooley <conor+dt@kernel.org>
- devicetree@vger.kernel.org
- linux-arm-kernel@lists.infradead.org

Next to the ones you did include.
``scripts/get_maintainers.pl <file>`` is a great help for this.

Alternatively and IIUC, b4 should take care of that for you.

Cheers,
  Diederik

> On Fri Dec 20, 2024 at 12:05 PM CET, Kever Yang wrote:
> > Add device tree documentation for rk3562-evb2-v10.
> >
> > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > ---
> >
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docu=
mentation/devicetree/bindings/arm/rockchip.yaml
> > index b2681a45867b..e300a817226a 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -1011,6 +1011,11 @@ properties:
> >            - const: rockchip,rk3566-box-demo
> >            - const: rockchip,rk3566
> > =20
> > +      - description: Rockchip RK3562 Evaluation board 2
> > +        items:
> > +          - const: rockchip,rk3562-evb2-v10
> > +          - const: rockchip,rk3562
>
> I would expect RK3562 to come *before* RK3566.
> In your other/smaller patch set you corrected the sorting of Rockchip
> items; lets continue that 'tradition' ;-)
>
> Cheers,
>   Diederik
>
> > +
> >        - description: Rockchip RK3568 Evaluation board
> >          items:
> >            - const: rockchip,rk3568-evb1-v10


--45082ac5a8e1ad64d2c5b74bf9dea07638ca4a64d6a8781858967a703737
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ2WNkgAKCRDXblvOeH7b
bvcTAP9z2p5798cpq87ZsNQMoVGtfu1jtoMDUcqUm4nW+chwUwD+Ppwo5JrOtpyf
xu00WPiPH01+cTswC9hlvVkK7U6N9gg=
=Hr2E
-----END PGP SIGNATURE-----

--45082ac5a8e1ad64d2c5b74bf9dea07638ca4a64d6a8781858967a703737--


--===============2389171626375804789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2389171626375804789==--

