Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94143FEFB6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 17:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yI3ybTbbWaHMTYoScXjn3lnsZCkNsEgShqhj4WePGdY=; b=aw4hZYCfPwQdZRsNVZjmWf7iZs
	ek6LtlyLygvBlSxI4Lcg2QfFl2kVc+Lc+Elz3pwlrn7jmBbNbZ1rItRVyBR8IgAhGp1TfmcOL9Fua
	PNHi6YrkxE2o+KFFEAefxLbpJgNSNQuKuywVqHtxSBdEcEQ7wDdFG3+WIbkNNIb4uMk7KvbyeOdnX
	+hdwHWsv7Jo58LAjGwv6eLmkDxr5Fop6QoK+5MvMrInj8e4OoYjUZ9xF3ytDF6zarsRIYDjo5SIIj
	JdVrPWYW+ae2VharUToEHl6viTyQAJv+KR3e+VckSZSD8aUPpjBuSAjJ/D6wyuq0A/yVs1NaN4cxF
	rD7X6d9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1To-00000008mog-2RkE;
	Fri, 27 Feb 2026 17:18:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1Tm-00000008mln-0ENH;
	Fri, 27 Feb 2026 17:18:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6AF0D42B9E;
	Fri, 27 Feb 2026 17:18:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27F53C116C6;
	Fri, 27 Feb 2026 17:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772212697;
	bh=3mbceozugLiHmArMcxTVzkMFCimRUS9Tx3RUhhcr7RY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jBdhI7K7JLku13dodPnOKu6IfC3mAD5SCrenwHX6d4Wh0WD5tViOVjnQNFBB8kdX5
	 5eSKQNJS0rug5WYOY0XlY2VY5holHW6rCfLhDpEMETbcNV44Mke5rpaqATYd7gFHqW
	 BNq+Kv/p55WVxoFbjkUonlEaFXzdn/lAQIVT97IJDIzyZLRqUnm0sFyByGF/kDYEyu
	 d0llaJbk7xrrsJCPQ7bg9xdM6y/WxBWBG3MGCTDFVU7XviGHHyVghRL9myUjkEeY52
	 TPJ7xGySsRnPgfWLy/3ITaRBFAnOFEM2egTjZ3X/uB3tae1iJsWo7K+A4M9dro1fVV
	 sk4Jqxw7jzIyQ==
Date: Fri, 27 Feb 2026 17:18:11 +0000
From: Conor Dooley <conor@kernel.org>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH v4 1/3] media: dt-bindings: rockchip,vdec: Add
 alternative reg-names order for RK35{76,88}
Message-ID: <20260227-atonable-glamorous-920cfd832bc1@spud>
References: <20260226-vdec-reg-order-rk3576-v4-0-b8d72dc75250@collabora.com>
 <20260226-vdec-reg-order-rk3576-v4-1-b8d72dc75250@collabora.com>
 <20260226-salute-threaten-a3eabb232396@spud>
 <429f3c7aa22eccffedbf8db6aa91bee3dd13814a.camel@collabora.com>
 <20260226-snide-foil-a05e1aa156a8@spud>
 <3d28c699e47f606bad46bb6447785badace37793.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <3d28c699e47f606bad46bb6447785badace37793.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_091818_144458_6B82712F 
X-CRM114-Status: GOOD (  29.55  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Conor Dooley <conor.dooley@microchip.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Hans Verkuil <hverkuil@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6708217765317672473=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6708217765317672473==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vYHIxUdYf3Z5HD0e"
Content-Disposition: inline


--vYHIxUdYf3Z5HD0e
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 26, 2026 at 04:56:30PM -0500, Nicolas Dufresne wrote:
> Le jeudi 26 f=E9vrier 2026 =E0 20:59 +0000, Conor Dooley a =E9crit=A0:
> > On Thu, Feb 26, 2026 at 02:45:11PM -0500, Nicolas Dufresne wrote:
> > > Le jeudi 26 f=E9vrier 2026 =E0 18:43 +0000, Conor Dooley a =E9crit=A0:

> > > > Deprecating the order also makes little sense to me, given that som=
e of
> > > > these devices only have one reg entry, which as far as I can tell f=
rom
> > > > looking at the driver *is* the "function" region, so it can never be
> > > > entirely deprecated.
> > >=20
> > > What I'd like to see, is a binding expression that behave like a set,=
 not a
> > > list, and leave the ordering open. As people keep repeating, there is=
 nothing in
> > > a binding that assist to define the right ordering (its not address o=
r base
> > > addres aware). That basically means, we can't as reviewer see that or=
dering is
> > > going to imposing using a base address in the unit name (which is a c=
onvenience,
> > > not a rule I suppose) that differ from the vendor documented base add=
ress.
> > >=20
> > > By explicitly removing the ordering in the binding, we create a stric=
t rule that
> > > driver should retrieve this by name, and never assume the ordering, w=
hich I
> > > personally like.
> > >=20
> > > thoughts ?
> >=20
> > Yeah, you can do this, but to avoid potential breaks you have to do it
> > from the start, not after the fact. Probably there's bindings that get
> > acked every day that do do this. Even the retcon is okay to do when
> > reg-names is mandated by the binding and the users use reg-names in my
> > opinion.
>=20
> I think from the above analyses, since the usage only starts in rc1, we h=
ave
> room for improving it knowing we aren't creating problem for anyone. Note=
 that I
> have no idea what the syntax is to "do this", and I doubt either Detlev or
> Cristian have a clue.

I think this is the only bit that really still needs a reply, this can
be solved by adding reg-names as "required" to the existing conditional
portion of the binding. There's probably hundreds of examples if one
does a search for "then:\n.*required:" to use a basis for the change
here. Probably should be an independent change, since it is needed even
without the re-order given the bug I brought up.

--vYHIxUdYf3Z5HD0e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaHR0wAKCRB4tDGHoIJi
0r6WAP9VK7+6OaP5sOcidYjpySG5XxQ5RJ952PgFal1Lp3jyHgEAuWV27vyRLAcU
T2nCuQzy1OAWqV7CIe2IDkNISVDIuAM=
=MFt2
-----END PGP SIGNATURE-----

--vYHIxUdYf3Z5HD0e--


--===============6708217765317672473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6708217765317672473==--

