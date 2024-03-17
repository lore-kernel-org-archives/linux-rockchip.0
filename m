Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69E37C54E60
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Mar 2024 14:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=po1GbuHBYa2tTlyDtvj0PGGUXHeeqlXZ8LUkf89U9HE=; b=FY8JwgBOl0uKiiP1X1k4IZOUO9
	PmOkgokX54LSLaVoVHl9bTgCguq0Sc6blzMe41GXrNeCtL5WiRKV0dzmODaYROgnmalCWnJFqNu0v
	0Yxrp3LhC4a7f2cYZHRnOwR2ms/VjU4Le3+l052PZAJq/qGYFYARMGx9rSz8dxGwktUUOVpIkE6/f
	GkoPsopRtvChqg/DGx8jZPEWv3mfJwRLvcHSUCoUqBmx3vffpuLR2NtWa3GUAuNpz2B/w+MEx7rah
	VmFnqhOM6lj2qd+vxcXIbnkXta/xJM2wO3C0+EB1SSgQ5o+OIvR1eoRoLIllLTQrQz6f8UEK59FnY
	M+bDuCZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlrl3-00000005RMN-3BlP;
	Sun, 17 Mar 2024 14:45:06 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlrky-00000005RKf-2Lfn;
	Sun, 17 Mar 2024 14:45:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 62B63CE0104;
	Sun, 17 Mar 2024 14:44:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E017EC433C7;
	Sun, 17 Mar 2024 14:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710686697;
	bh=040ClMnMOubXuR/GfXC2GDP6Mg4LDxBRovgnDWRi93o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m531+jw2JyDjNyV7Jhoj1LbSb9OTrwNHSA7NgGOMYZG4iO1QzxsBIygE4z4HHasVa
	 PRyNcJ4YVQqFXE9cDmN1pGNSicuOdg4EycAQK9zmTgLpTItyNzYpafXWqftlbFWcbj
	 7dlbIGrUAt97rjgcGMMzDHuBhs6/rCAEB51u/i/NnIoLmuP4su0fomoplcQEooqBY/
	 ELzp6bPJtDWd4PlImi1X54nTPIoB6vm7J5wh4WXJp5d/fQJhunId3uAqbEi+GmHjlS
	 eJ5RQWaDp2DScnEHPZ8RJxjQrv6wYTWuRi6bSjub54KlSZ0ANnlSYL0fU7PLSTc3kH
	 qKqmbhPbnoFAQ==
Date: Sun, 17 Mar 2024 14:44:52 +0000
From: Conor Dooley <conor@kernel.org>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	heiko@sntech.de, ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de, mchehab@kernel.org, sfr@canb.auug.org.au
Subject: Re: [PATCH v4 2/2] dt-bindings: media: rockchip-vpu: Add rk3588
 vdpu121 compatible string
Message-ID: <20240317-writing-retention-c8a57e758737@spud>
References: <20240316071100.2419369-1-liujianfeng1994@gmail.com>
 <20240316071100.2419369-3-liujianfeng1994@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240316071100.2419369-3-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240317_074500_928065_95050161 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============3191052909716679254=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3191052909716679254==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3/L/mig3SrrmSlrg"
Content-Disposition: inline


--3/L/mig3SrrmSlrg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 16, 2024 at 03:11:00PM +0800, Jianfeng Liu wrote:
> Add Hantro G1 VPU compatible string for RK3588.
> RK3588 has the same Hantro G1 ip as RK3568, which are both
> known as VDPU121 in TRM of RK3568 and RK3588.
>=20
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

--3/L/mig3SrrmSlrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZfcB5AAKCRB4tDGHoIJi
0lriAPwKRJpwfToOLfnybP9HSIVLYqpIOXUjdvkZuRIveQdYbAD+PUwBltLI0VFW
cH/YWdogBRxbQ5iNczKu1CNd8Lpdzgo=
=4u7o
-----END PGP SIGNATURE-----

--3/L/mig3SrrmSlrg--


--===============3191052909716679254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3191052909716679254==--

