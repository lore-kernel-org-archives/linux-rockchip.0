Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3915AC61D85
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Nov 2023 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tAzjIayu7lmrwcbZbls+vKd51WZwd7vGMpoMQKbZh4M=; b=Flgu5m4BomFbbDSNLBoaVSf9YP
	Wmr/PJ+UI476KRz4/XC9jkQmG6kifmeSA7A8ZAYUH0stcmNAN06DXVAJLWMXDxNacw4pgOdZv6Lap
	KG16gLNHlptnLRyRqXhh9bAO7IplBUBi8V/sl/8Sy2R0asAsQLb5tJV6e+anYbwjWEPqs0s7vHgZ2
	rhHCBH7udckR6yoseJD378igA85hB5CX/IF2iiUhAPNPSpZYVdFNSJw1vEYRvooeCIiqVoTZzaNxv
	QRFgb3/+IlB1B/Yss4aIzsL9QsL33fmLl49bvaLBbc66j9vgVJYd/1YvT4Rav5IKIMcKWJ8WOZ+9F
	79Y170mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6HKY-005juH-0a;
	Thu, 23 Nov 2023 21:33:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6HKT-005jtf-2f;
	Thu, 23 Nov 2023 21:33:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A2BB36172F;
	Thu, 23 Nov 2023 21:33:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BADBCC433C7;
	Thu, 23 Nov 2023 21:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700775224;
	bh=nmgRXoCC/6bVdvvn+DsQpOtnPLlwkOcJBQD/gcvPILU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QX5gnL6JXj8vwBd2hjrgTWmiQNvpaIU3ub8DZJit9Gh0ljsPaGJPx49AWqTyKl4EA
	 MxLsTmaI0J08GfBbNmZjOMk5kO/qqeDp4cbPt3UIxlPrCxNX9Ybbo8D/5zN6YIT/c5
	 Hnj6bfqt1z0klQSfKgjf1u2TKv2FBCx5URjphkB83BntI5fFoPmHmoZCLyARPTWK6O
	 tphuxc8VElCdY2DqFnyhtojL941RLPd+x7YqE3ObFsb0vpG92ljXG0z8CMOuNRgrow
	 rasw3VtSw505b5SaknZkPzLjb2F1Etfd4VuPA9L3fLwdIadEeib6E5YIE9YSMXlWfX
	 3WbVK/7XEz8bA==
Date: Thu, 23 Nov 2023 22:33:41 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, linux-i2c@vger.kernel.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	linux-fbdev@vger.kernel.org, amd-gfx@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jocelyn Falempe <jfalempe@redhat.com>, linux-sunxi@lists.linux.dev,
	linux-mediatek@lists.infradead.org, Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
	Xinwei Kong <kong.kongxinwei@hisilicon.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Yongqin Liu <yongqin.liu@linaro.org>,
	John Stultz <jstultz@google.com>
Subject: Re: [PATCH v5 00/20] remove I2C_CLASS_DDC support
Message-ID: <ZV/FNWfw0jdXSglr@ninjato>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	intel-gfx@lists.freedesktop.org, linux-i2c@vger.kernel.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	linux-fbdev@vger.kernel.org, amd-gfx@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jocelyn Falempe <jfalempe@redhat.com>, linux-sunxi@lists.linux.dev,
	linux-mediatek@lists.infradead.org, Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
	Xinwei Kong <kong.kongxinwei@hisilicon.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Yongqin Liu <yongqin.liu@linaro.org>,
	John Stultz <jstultz@google.com>
References: <20231123094040.592-1-hkallweit1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231123094040.592-1-hkallweit1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_133345_958978_169C2D62 
X-CRM114-Status: GOOD (  14.36  )
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
Content-Type: multipart/mixed; boundary="===============5768361883187494402=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5768361883187494402==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xLjxEuZaeN8xgDN1"
Content-Disposition: inline


--xLjxEuZaeN8xgDN1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 23, 2023 at 10:40:20AM +0100, Heiner Kallweit wrote:
> After removal of the legacy EEPROM driver and I2C_CLASS_DDC support in
> olpc_dcon there's no i2c client driver left supporting I2C_CLASS_DDC.
> Class-based device auto-detection is a legacy mechanism and shouldn't
> be used in new code. So we can remove this class completely now.
>=20
> Preferably this series should be applied via the i2c tree.
>=20
> v2:
> - change tag in commit subject of patch 03
> - add ack tags
> v3:
> - fix a compile error in patch 5
> v4:
> - more ack and review tags
> v5:
> - more acks
>=20
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

I created an immutable branch for this which the buildbots will
hopefully check over night. I will reply with comments tomorrow when I
got the buildbot results.


--xLjxEuZaeN8xgDN1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmVfxTEACgkQFA3kzBSg
KbarPBAAkN43LMGC9b1vpMsl5y6W1jnEMTjSF+7tzpFga/xsqL+jL9B/h0bO4NQ4
ATDYno+0o6BwCEUeBSgYEs7/gNJHlWCq2SisLmhVXXOTzWZ09VRSPaXU49gXviog
LZbTffK3ABbQSCBbzAhx6/Aog9BH2md1QBdbrCmkf/+i8OOhDUzPiyz6txmIimC2
6YRBRpLdY1cnme1uvNPJv8GI8UYUgdrYeFQQd4qbPsz5WIzl5/MbMeev4jtUzXC0
exE4jjPds5scEDyf7QdoeOsHRxZ5pGEu6/luiIhN+SFolyYWzX3Yun37Ac1WWmnR
Wo97HN7iUlhAQVQ6phTbiVCp8HISNGiWkh/Z0/NoMPO21Vr4WV1/p4TX+5shPicc
OhBT1NydXft0pPSmT0adOalbsEv4x4P3Oa0I6A+HQCea7Acsz5Ya1+AxY2LehDKz
lyYnz7L0pcF+k3II/wqSeiK8CidamPnVPamCG+Df3F/NDBXEih9jaI23Hkjyp8xM
7AO5GH/0ihgont0oYMIl6bAeK9BGrKOt0AM+fF0dC+byFDGxffRvFwYnPIqJfxCr
6NKvDBM37nY4pHxbDu1b9iamk8WN3tpdrC/XZ8BxqKaciOF+w52ac/v4+znNeo2X
J9U48VknVCyH0l1Fpph+/ukvqwpdWMVtk4GI2wgR7mdFp8c44Z8=
=oQZk
-----END PGP SIGNATURE-----

--xLjxEuZaeN8xgDN1--


--===============5768361883187494402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5768361883187494402==--

