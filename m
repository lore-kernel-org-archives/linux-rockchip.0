Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E970C48BC1
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 18:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VD1BDQAnGHMvEo5pkjcVFEUFLWNrSHOTRhvZqT7sepo=; b=YTGlYn5pmlj00QSmxQ7pEAon/m
	NpcsYRPPpKNmcIWZB5O+CRILWFqoHDgdeVAPX7wagPFnhJyM9V2XJIUldg272A+5ZksyXOoEBwcIs
	uq49Snt/YgfxnLXRNxuZYeo2p6jBC4v2roC8FRAHyLqbDJc3+zKOJLIasICj0RojykOr7ObrPWJch
	3/uWrIwJHrVj/dHs82oU+94t/VnBcrKKYV4BTzDarfY0/PyeyHHZ8o4yOBcq93oW6qV/Na/jX9JwZ
	Du5t0f2Bkv1N2/3O46Ol3yh4V5gqOg7za7KqIRlc5WrPNE5JfYqMMMdduQ3cn11c6SeQQPlMr5NAc
	/7c9MCBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raJkE-0000000DtDu-32t2;
	Wed, 14 Feb 2024 18:12:30 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raJkB-0000000DtDB-1V9q;
	Wed, 14 Feb 2024 18:12:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AA0C4CE1A35;
	Wed, 14 Feb 2024 18:12:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87DA1C433C7;
	Wed, 14 Feb 2024 18:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707934344;
	bh=CDlqvcoUaaFjZ++J28H0zcJUMfv3V3DXrfQN3Lt2XuM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FhmO2/GBR4pf1wnPFAUrJMYYOsp1eWlMvm9qhAcjmfPzxb0H7Nd8STbTB38vJc8BW
	 /jPYSgEYnYxBmeAtTgMQHh/EJVBMmJryXTm/DbLiOBzTqPuXupLG6sWjwkE4Gb41m8
	 zEvigiSmLlhOLmOl3uYM8r3m5Stb0rMs1hR+kDEAGkHVKtXklHpObmo7526vO4AfnA
	 Y6GsRdd/T7IiO6BkyVSi/f7RBBwjyAKqKmb6vMxniPQXMHoxsOC2AwP8JFp1q89NXX
	 XiPsT42i1Oy3jmB0xfSz0An6xDCKX6YGPaSSU+cjBMfdbZxFVjlTfjEAUgvNbSMPcq
	 X6ARDw/uAme0w==
Date: Wed, 14 Feb 2024 18:12:19 +0000
From: Conor Dooley <conor@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	David Heidelberg <david@ixit.cz>, Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>,
	Tianling Shen <cnsztl@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] Fix vendor strings on Rockchip boards
Message-ID: <20240214-moocher-womanless-21201b67b76d@spud>
References: <20240214040731.3069111-1-tim@feathertop.org>
 <c03220db663279c9e83bab81f3d829e7@manjaro.org>
 <e952d127-b12d-4b5a-838b-807a876db707@feathertop.org>
MIME-Version: 1.0
In-Reply-To: <e952d127-b12d-4b5a-838b-807a876db707@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_101227_591439_0CAB1E55 
X-CRM114-Status: GOOD (  17.45  )
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
Content-Type: multipart/mixed; boundary="===============5514118381394276653=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5514118381394276653==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xM0QSn4CMXaJ9cxt"
Content-Disposition: inline


--xM0QSn4CMXaJ9cxt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 14, 2024 at 03:27:08PM +1100, Tim Lunn wrote:
> Hi Dragan,
>=20
> On 2/14/24 15:14, Dragan Simic wrote:
> > Hello Tim,
> >=20
> > On 2024-02-14 05:07, Tim Lunn wrote:
> > > A couple of rockchip boards incorrectly list their vendor as Rockchip
> > > when they are in fact not manufactured by Rockchip.
> > >=20
> > > Fix the vendor strings to correctly list the manufacturer
> >=20
> > Just checking, have you verified that the old, incorrect "compatible"
> > strings from the board dts files aren't used anywhere in the kernel cod=
e,
> > such as in some drivers?
> >=20
> Yes I checked that, there are no remaining references to the old/incorrect
> compatible strings in kernel code

What about other code? Like a BSD or a bootloader? If nothing is using
them
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Fixes tags I think wouldn't go amiss, but I'm not expecting a resend
with them.

Cheers,
Conor.

--xM0QSn4CMXaJ9cxt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZc0CgwAKCRB4tDGHoIJi
0rnIAP4266uBVs8L2WyYwA8DkZLeNbpLCOsYZojqX3g8t5zn2QEAmlVsc/c21nrD
IOXryV8IFMuPO4v9U4rwGrS6mo9QQQ4=
=kr05
-----END PGP SIGNATURE-----

--xM0QSn4CMXaJ9cxt--


--===============5514118381394276653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5514118381394276653==--

