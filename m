Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E76B1CFB443
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 14:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M2/AM7OUNaxR1Q2eE5UYtdSJBepuhsX7ECpCfQtdxPc=; b=hXXNIIwGiSG/Kdnt/UZnlN4dPS
	Rq8Gswvzl4wKvcgRdMPiMkB+rE5Vw29aZnrZo8IK+Kbd/jFyjlQBjTC+7rjMlGnfH48pU0Az6iXMb
	rW9TnmbHlR/Yq7+CGl5j6Ahbpb2ALtyDMumImsRzKmXjHIurPIgFEyC2Njmb1re0dT+RvTqE2aQPs
	FftzHRv8UE0FBSbTqDGYTyYi7mtPvIWENahM8e783n0SNVELRCMQTlGas1ZFVjf8ddEMASS8erq2a
	WYXp3dnm5Eas7GpTDxH4pVxInBg0skQ7/OOQRlW2kdcVo/yyYXXFiMBoxkW3hX5b0TBF92aJDLqFP
	USyH4MJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxop9-00000002kdf-0QHX;
	Mon, 07 Oct 2024 14:34:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxogP-00000002iGJ-0pub;
	Mon, 07 Oct 2024 14:25:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 788A6A40E16;
	Mon,  7 Oct 2024 14:25:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E1EAC4CEC6;
	Mon,  7 Oct 2024 14:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728311155;
	bh=q+TPabjz1vfQ0pdnANMiA1HG/+NexC6E92sIdGx/rs4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mSTaUqw9rr1vY36MLnEA+L2LA5JfdcFTh6jAYD/QV0pbzyARlXQclMtrL5zzAPHJU
	 ZazwejzBCgO3I6SXFcUWIDLU1/FnaghI3qKu/oJgeMeIaEupcS2Ahux+OeYo/GzyLP
	 ByDmfCtIs/n5FXhr9CfVaR8TD/XazTvECWmuAI+g87i4GY0RNZx5REKqDuMZhxYAS6
	 lCpw5XQbvoIfqZHmaZWEBYrufeYnXlRmn/J4e//Huk+OanzmZYWSWJfaa0+ZZao3et
	 qHqeBEUu12N06jKnAGr6pnjXEaOnkRiq0XXNB5lE4+HJDxqdvkftyDDdEx9KEJ2HUf
	 obazxL5jhDKIg==
Date: Mon, 7 Oct 2024 15:25:52 +0100
From: Mark Brown <broonie@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	heiko@sntech.de, gregkh@linuxfoundation.org, rafael@kernel.org,
	oss@helene.moe, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] driver core: Add device probe log helper
 dev_warn_probe()
Message-ID: <ZwPvcFvK4l7JT1X9@finisterre.sirena.org.uk>
References: <cover.1727601608.git.dsimic@manjaro.org>
 <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
X-Cookie: Editing is a rewording activity.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_072557_326745_0433F7E7 
X-CRM114-Status: GOOD (  12.83  )
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
Content-Type: multipart/mixed; boundary="===============4558705154802632404=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4558705154802632404==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vXTeh0FEv5Mv84vz"
Content-Disposition: inline


--vXTeh0FEv5Mv84vz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 29, 2024 at 11:21:16AM +0200, Dragan Simic wrote:
> Some drivers can still provide their functionality to a certain extent ev=
en
> some of their resource acquisitions eventually fail.  In such cases, emit=
ting
> errors isn't the desired action, but warnings should be emitted instead.
>=20
> To solve this, introduce dev_warn_probe() as a new device probe log helpe=
r,
> which behaves identically as the already existing dev_err_probe(), while =
it
> produces warnings instead of errors.  The intended use is with the resour=
ces
> that are actually optional for a particular driver.
>=20
> While there, copyedit the kerneldoc for dev_err_probe() a bit, to simplify
> its wording a bit, and reuse it as the kerneldoc for dev_warn_probe(), wi=
th
> the necessary wording adjustments, of course.

Greg, this makes sense to me - are you OK with me applying it?

--vXTeh0FEv5Mv84vz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmcD728ACgkQJNaLcl1U
h9B9PAf+MtoEs7Y3AEe2kOLgcFOEnHIrD1FSwcTxPFgyC+9e0NoaGcnc69ZkoxNi
1reeTBW5HHOHFgvPl1wNAPtp6kOofBkknTMmVIgC2olKO8F+7m6Gck0ZeG2gHJBy
gy/1rMI0sXn94sPTRz/wad+Ju570hxiLCI/7nwu78pgHElMo+7qR8V+npeK5TK9A
ZTjI7zb/AvxYA5STrDgodAer0oh3+PYEoShZS9gUJnBboB5WK7NX03p2+NrDHBJG
+1yKycD0eCt0bQBItFijpxcl2+u8E5voN8DKiRc2u01wC6rJ3pehopuAFzW7O9nr
iEyAfBS/WzxVRPUZWtw4Uo6NZFvvDg==
=mUTd
-----END PGP SIGNATURE-----

--vXTeh0FEv5Mv84vz--


--===============4558705154802632404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4558705154802632404==--

