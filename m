Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70055C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 15:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Yd5VF7ydMctDoz3G33eX3KGGwZ83DQLrwz1Z6P/sKw=; b=R9ysbWbad3IAS9u4V7XyGo8KLG
	01JWUFirq20AYz/k089eeIgo85Y0eRDDkzclwYcMYLMtLx4WYUfnOL4vcVFkHzbhsmEnoYEODekKl
	4o+iI4urT8tPYXrpHhOtX4faSS+PACLZ59jZfAU9GBGZ5nyIpNP/Ca5vwhK+tpKk/FIL9SuHoqdtu
	l4c2MQuCN/ksiNaBmdXgjHcsgcq1gRzeu5tXLGkCsPDA0sB+AlcbLI0eaN9i+QgZnRgz6idWUIkVl
	vdoZagpHCXHCM/rKa0ImG06Zw7cG819Ga7piMdfbbgXuVHIAj4LBzQMXtyXcgnprwFeB+b2HSZR70
	NkvOcOjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx6p5-0000000GU6M-0UbK;
	Wed, 17 Apr 2024 15:03:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx6ox-0000000GU40-0Pvd;
	Wed, 17 Apr 2024 15:03:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6B970614FC;
	Wed, 17 Apr 2024 15:03:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF288C072AA;
	Wed, 17 Apr 2024 15:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713366213;
	bh=V2N7AMDuz9jYWqc6c9z+U9bVhSANzB8iVmzvJstXz54=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oDUVvfqDXkPFZHs5kX/STB9snvKkCQHuYgtX9Rq67q1sPgoY+IwTmpP3Aw7mYM63F
	 wucJybP+iLeqZZ46M1z4wB+WE/HMrsLAcmipEY9QQfGq3IYX4rQP8BRLMXjsiiHbm6
	 As/WgUi+j4LNNHu2tRyS3/XXuK7E6lLwmc7YSKScgof6ArrM8Ek3E3+saxUSygp9PA
	 AEyGWNy42dXB7jaLhn0wb3Qtt2ipz0uGEQAHT4Dqf8IaZri3bx1ByWDD2IeNfeObdp
	 moTWjTBvcfvTTIWjHN3wVTrjWL7xHMmynPdnOfPiXBKQvt/G9wQUTDJGov8f3ydGke
	 7uz+ttz8/U07g==
Date: Wed, 17 Apr 2024 16:03:28 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>, conor+dt@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com
Subject: Re: [PATCH v4 1/3] dt-bindings: vendor-prefixes: add ArmSoM
Message-ID: <20240417-carefully-unknowing-418254f3e951@spud>
References: <20240416034626.317823-1-liujianfeng1994@gmail.com>
 <20240416034626.317823-2-liujianfeng1994@gmail.com>
 <13494460.uLZWGnKmhe@diego>
MIME-Version: 1.0
In-Reply-To: <13494460.uLZWGnKmhe@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_080335_204910_98B1028B 
X-CRM114-Status: GOOD (  11.12  )
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
Content-Type: multipart/mixed; boundary="===============8053079516859501353=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8053079516859501353==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="g9rem694lJ5oQ4tu"
Content-Disposition: inline


--g9rem694lJ5oQ4tu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 17, 2024 at 10:21:17AM +0200, Heiko St=FCbner wrote:
> Am Dienstag, 16. April 2024, 05:46:24 CEST schrieb Jianfeng Liu:
> > Add vendor prefix for ArmSoM (https://www.armsom.org)
> >=20
> > Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
>=20
> [PATCH v3 1/3] dt-bindings: vendor-prefixes: add ArmSoM
> yesterday got a
>=20
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>=20
> in
> https://lore.kernel.org/r/20240416-choosing-boney-33cf206d0f38@spud

Too many versions in a short space of time, guess I picked not the most
recent to respond to as it arrived in the <24h period that it usually
takes me to clear a patch from my queue.

--g9rem694lJ5oQ4tu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZh/kwAAKCRB4tDGHoIJi
0uHBAQCilZ3Gz5HIzFcim0yBLi4A8H51cTC9y0FJsztZxMzcFAD+NnNntnnK2Pny
VoYLwSxda8vNGpxqNVEhSU2O0ISRlQk=
=fxib
-----END PGP SIGNATURE-----

--g9rem694lJ5oQ4tu--


--===============8053079516859501353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8053079516859501353==--

