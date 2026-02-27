Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D174FEFB6D
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 17:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RE5Qe9dh+j72K4TuOqAahLMfI/leWwvnT+ZMBpTf5tU=; b=oVuVmlf/OFLodY2OZqKY95xeCy
	RZq+8KrtN9gzCrglq5DRYAOrjnClcHA9DVFacFi1yrn/LjK8OkW8gad5tBcEvEgxBu8Iu3mfN9FPs
	J9E+xr46Ul8sX4wzTdlJhOMuPk5pJ143JWngbJx5zts1YYVzo5g406yJiKZ+GvnIIMKb+d6PRyv+M
	BXiIwZIiGl4jSA5RHy7rsj4LfHP/zXYQBJlNJFUfBaFsXJrDAe2J8kzYK9/nXsfUA4frXAfewnuva
	fUP6Ydg/5/Y3Wml3xOlKWx2QJ9vURrB0AJjuI9DfMjB4dvSvYZvcUy46ZPjZCMxR1idA5wjuAvNYM
	B6fXO+Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1Pj-00000008mT3-1aJp;
	Fri, 27 Feb 2026 17:14:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1Ph-00000008mSp-0tUZ;
	Fri, 27 Feb 2026 17:14:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 48B6860008;
	Fri, 27 Feb 2026 17:14:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A603EC116C6;
	Fri, 27 Feb 2026 17:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772212444;
	bh=bs6uKlJfn6XI1cj0Kv+3o21KatAk/mhEO4hzxEnlJq8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YNIKcC4nu1duXqR52SQEghCQ0IOnX/CkD88r+a2DTdV/AkPXHApEdd/vE/TOFDsCY
	 eVCbM4stmW+O612jwVpWV2kHCKbyR1KnOVBq0KBJT3HYUZfxNKY3he5t5m9zSycbkf
	 ikRE9LswSgL689f5CAjkbKgHP9X1ckb6xXAga8qggeFITJSHbCB3gQy7Y9fW9vfl8L
	 rqWdjlFS0Qgmd+pqVPyAW5PumZAj9iicix19/lzYlzx/wrrJN+6Sqi5LoyBYEMKuKn
	 WBqxeInBzL87EbigWYndYnUDZADmL/MpDFPtiq22ShbBKDlvbzi1cVFVl1dvlGRQ2z
	 3xOeczFYPjx8g==
Date: Fri, 27 Feb 2026 17:13:58 +0000
From: Conor Dooley <conor@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil@kernel.org>, kernel@collabora.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v4 1/3] media: dt-bindings: rockchip,vdec: Add
 alternative reg-names order for RK35{76,88}
Message-ID: <20260227-omission-stoic-417d7109ad4d@spud>
References: <20260226-vdec-reg-order-rk3576-v4-0-b8d72dc75250@collabora.com>
 <20260226-vdec-reg-order-rk3576-v4-1-b8d72dc75250@collabora.com>
 <20260227-observant-roaring-ara-ef7eb0@quoll>
 <adbbdbb1-b126-4807-821c-c9850befd695@collabora.com>
MIME-Version: 1.0
In-Reply-To: <adbbdbb1-b126-4807-821c-c9850befd695@collabora.com>
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
Content-Type: multipart/mixed; boundary="===============1448304827196874602=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1448304827196874602==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bShyYlHPkrpIht96"
Content-Disposition: inline


--bShyYlHPkrpIht96
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 27, 2026 at 01:37:17PM +0200, Cristian Ciocaltea wrote:
> Hi Krzysztof, Conor,
>=20
> On 2/27/26 9:46 AM, Krzysztof Kozlowski wrote:
> > On Thu, Feb 26, 2026 at 12:46:53PM +0200, Cristian Ciocaltea wrote:
> >> With the introduction of the RK3588 SoC, and RK3576 afterwards, two mo=
re
> >> register blocks have been provided for the video decoder unit.
> >>
> >> However, the binding does not properly describe the new hardware layou=
t,
> >=20
> > As you shown me last time with excerpt of address spaces from
> > datasheet/manual, the binding correctly describes the hardware and above
> > sentence is not true.
> >=20
> >> as it breaks the convention expecting the unit address to indicate the
> >> start of the first register range, i.e. 'function' block is listed
> >=20
> > Imprecise wording. "start of the main or primary register range"
> >=20
> > (if you have 0x1000 with one reg and 0x20000000 with everything, the
> > unit address will be 0x20000000).
> >=20
> >> before 'link' instead of the opposite.
> >>
> >> Since the binding changes have been already released and a fix would
> >> bring up an ABI break, mark the current 'reg-names' ordering as
> >> deprecated and introduce an alternative 'link,function,cache' listing
> >> which follows the address-based ordering according to the TRM.
> >>
> >> Additionally, drop the 'reg' description items as the order is not fix=
ed
> >> anymore, while the information they offer is not very relevant anyway.
> >=20
> > This is fine for me.
>=20
> Thanks for the additional feedback!
>=20
> If I'm not mistaken (please correct me), the only remaining (hard)
> blocker for the series would be to improve this commit message.

No, you also need to fix the problem I pointed out about reg-names being
optional on the devices you're relying on reg-names for. The new commit
message I am happy with, provided you also add the information Nicolas
provided about the impact on users.

>=20
> How about the following:
>=20
>     With the introduction of the RK3588 SoC, and RK3576 afterwards, three
>     register blocks have been provided for the video decoder unit instead=
 of
>     just one, which are further referenced in the datasheet by 'link tabl=
e',
>     'function' and 'cache'.  The former is present at the top of the
>     listing, starting at video decoder unit base address.
>=20
>     However, while documenting RK3588, the binding broke the convention
>     expecting the unit address to indicate the start of the primary regis=
ter
>     range, i.e. the 'function' block got listed before the 'link' one.
>=20
>     Since the binding changes have been already released and a fix would
>     bring up an ABI break, mark the current 'reg-names' ordering as
>     deprecated and introduce an alternative 'link,function,cache' listing
>     which follows the address-based ordering according to the TRM.
>=20
>     Additionally, drop the 'reg' description items as the order is not fi=
xed
>     anymore, while the information they offer is not very relevant anyway.
>=20
> Regards,
> Cristian

--bShyYlHPkrpIht96
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaHQ1gAKCRB4tDGHoIJi
0vvlAP9kvdRU6UlsQZ5Wsfi4QGT5f4KCBum2htINzh1r/oPhrAEA8b+7Mek6yDP8
qKcKPbQm6I62YBafezuLQlaHjqzSxwE=
=HhTd
-----END PGP SIGNATURE-----

--bShyYlHPkrpIht96--


--===============1448304827196874602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1448304827196874602==--

