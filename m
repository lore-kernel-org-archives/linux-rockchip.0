Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E57F4CCFA13
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 18:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pbNCW7n9sZFMUIT+6/LsxiEOUk1CW5ObM01Av6cIU+U=; b=pJ7X+9MNjpTGkEbEW7C/nywvrG
	ptg8j5C02HXCF5VNorMdbb8/7uiUPWmxKY9pzRGtjnaDQnQ4lTAq7PdoxjhM1rKHycucSQN7TTYOI
	PPoM4bMIVVzr0dmYNkwhA/m015iTwmmCH5fheRyctsFnmn1C82NkNPGO1BB5d/GhFibqbrscWdU+3
	nNEn9uqITISCAIdm3pEle4B8WO9EzykPNThxapb1j2Y06xPNSKNIx7+7rxnLvhzGFa+JFpPqAePKw
	An3K/57wEQCK+hjHJ/3t76o3aCzPBspXjUWbKdipbEj6fJM+00FtV040Wht4GNLaTIQeidEFUo+w0
	FeTvQGNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI9O1-000000042yj-4A96;
	Wed, 29 Apr 2026 18:11:50 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI9Nz-000000042xi-19MO;
	Wed, 29 Apr 2026 18:11:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777486304;
	bh=vVHtEP46vGKolJeaCtgCNYw3z2ZwVl3u6h4t7hanr/Q=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Ewbsn7RsB40xrAgPa5Bt4o5YasSBzfCpYAa5hJAcwhvoee//1lhLEL4dBxIxE02fT
	 377ycqD41TJX1eAocyvNU5r0RozZ16EWrWFFAbFuMHMP8721NsQ0u8JvDVmnxU8yQD
	 h+KJ6pMsL8PVxghCIF5D1fotq2uEXqpReN0jdKIBjrekbSDDeFz9kpyS6tRBdGxmVO
	 dKOKNYdZtl4YE0DkDvos5ajf1QVWgimYG8EXuaWXbuOdQwRNmgJZRS3bNoODeH5wxk
	 vsxC85TM9D836M2JgN+f6bSyxzrF+JYqZ00fTrTKJPXjBMhygefczmatRlPIiVzeTn
	 +j2i9I+mM04KA==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3381517E0EBB;
	Wed, 29 Apr 2026 20:11:42 +0200 (CEST)
Message-ID: <4064d0168c3409a1e15f9c92da56cea93956b31e.camel@collabora.com>
Subject: Re: [PATCH v3 1/2] media: verisilicon: Simplify motion vectors and
 rfc buffers allocation
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Frank Li <Frank.li@nxp.com>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, heiko@sntech.de, 
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, wens@kernel.org, 
	jernej.skrabec@gmail.com, samuel@sholland.org,
 linux-kernel@vger.kernel.org, 	linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, 	imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, 
	kernel@collabora.com
Date: Wed, 29 Apr 2026 14:11:41 -0400
In-Reply-To: <aeIRWW937ev_F8zF@lizhi-Precision-Tower-5810>
References: <20260415140420.282084-1-benjamin.gaignard@collabora.com>
	 <20260415140420.282084-2-benjamin.gaignard@collabora.com>
	 <aeIRWW937ev_F8zF@lizhi-Precision-Tower-5810>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Organization: Collabora Canada
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_111147_511323_1B7D32E9 
X-CRM114-Status: GOOD (  16.98  )
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
Content-Type: multipart/mixed; boundary="===============0008299329733495684=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0008299329733495684==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-hO3VKyof1zFkkmRUWXyp"


--=-hO3VKyof1zFkkmRUWXyp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Benjamin,

Le vendredi 17 avril 2026 =C3=A0 06:54 -0400, Frank Li a =C3=A9crit=C2=A0:
> On Wed, Apr 15, 2026 at 04:04:19PM +0200, Benjamin Gaignard wrote:
> > Until now we reserve the space needed for motion vectors and reference
> > frame compression at the end of the frame buffer.
> > Disentanglement mv and rfc from frame buffers by allocating
> > distinct buffers for each purpose.
> > That simplify the code by removing lot of offset computation.
>=20
> Can you try split to more small and straight forward patches, for example
>=20
> for example create patch just move hantro_h264_mv_size() to header file,

Marking this has Change Requested, as I completely agree with Frank that a =
split
of this giant will help proper review.

Nicolas

>=20
> ...
> > +++ b/drivers/media/platform/verisilicon/hantro_hevc.c
> > @@ -44,30 +44,49 @@ dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ct=
x *ctx,
> > =C2=A0	int i;
> >=20
> > =C2=A0	/* Find the reference buffer in already known ones */
> > -	for (i =3D 0;=C2=A0 i < NUM_REF_PICTURES; i++) {
> > +	for (i =3D 0; i < NUM_REF_PICTURES; i++) {
> > =C2=A0		if (hevc_dec->ref_bufs_poc[i] =3D=3D poc) {
> > =C2=A0			hevc_dec->ref_bufs_used |=3D 1 << i;
> > =C2=A0			return hevc_dec->ref_bufs[i].dma;
> > =C2=A0		}
> > =C2=A0	}
> > -
> > =C2=A0	return 0;
>=20
> Move this code style change to new patches.
>=20
> Frank

--=-hO3VKyof1zFkkmRUWXyp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCafJJ3QAKCRDZQZRRKWBy
9H3UAQDXMPc16wto5clUhLZLnohxaOrBBoEinO5d3WvhOAdRDAEAq/QIRB2+WigR
13DyCJr+rFfmdUWiBtqbZtZoXN1CVgg=
=FgIy
-----END PGP SIGNATURE-----

--=-hO3VKyof1zFkkmRUWXyp--


--===============0008299329733495684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0008299329733495684==--

