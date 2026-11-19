Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81FD6606A320
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 16:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=o3xQFciX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=foNL6Lik
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/BYI9wb4MUgRfwqODH6g3M2xpwNToKuLlcwJPyy3Wj8=; b=o3xQFciXX2F+2HTqWgit2Pqxqo
	8Xgd4Gnkd9I19TJVXF79QrgJya+87gk5d9NF6z0LvLxvRTtwSYhYqfzDr3Ubh9/o4T/E6aHDS2zsM
	XthvcfSbh/CYqEeGqTzC5ydQv91hT73/ZQKnry//mdBZyC5Qu/oZidB+uLUm6kQomVOLGtJBCXl01
	d5l193tEZ02DV43Yh6BT4yP5idDdnTD3M9HtRR0GRo9O970+UJYpLV1MzrcGd9G5gcXYp8xhZ7n/c
	biJIVUSePN6LF7trw8r+Gbu0IVncsGOY2997bcKCXkObyg0a129KKN71r/0XGALDZXNtdoL2A9yhX
	518BHIJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4ZT-0000000CZIA-01L7;
	Thu, 19 Nov 2026 16:01:11 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4ZP-0000000CZG4-35ti
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 16:01:09 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-c445c95d553so343381366b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Nov 2026 08:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795104065; x=1795708865; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KfDm1ombW4h++zCNnSHkepgC1bowgwnhqlH8xoC2Q4M=;
        b=foNL6Liky63WmgynSmeK2resB3WR93fzYet+vaUB1Ketbhj3jgpBF7545tKNkEEyCT
         5Y+bekrQobhN6vb7ZZ/pLXAXes/M2t9FT6wd3dqYjheP/VmnQs4Fdcw0FPTS5/2DLgIw
         Otj0YpLd0SxsjKUpuKDyEmshrR5Xvt+I4aL9kb/U/xCQ6ind/cThe4S7VWyW+ooy7gBT
         KTHIMhkG+ZLsmBp6ezYtPSkl8o8PNVzBXzxr7WuXDfxnpFav7NrI+Qj2f7BTkbyJ0k22
         kY3Zw3LEbUXo42/0ItsTyBJa7dMWbD7+W344qO85vkdbmI0EnG17ZZpsQdNo1g/X0gij
         qgbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795104065; x=1795708865;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KfDm1ombW4h++zCNnSHkepgC1bowgwnhqlH8xoC2Q4M=;
        b=D1AyvAbAoWopsm3/5aCvf/zUrZ1xKsatGH9JOUsEVEDsXO8TBQNwv400Ob+xME+BIn
         H5cTaFLKa7eFAIWTRhkyU7EGCwR6umO8D3vTwqVopW85YtfCHXh32Fm12/xF66M0W6zZ
         WHKM4O4vEJxv7yGmgltwIFaksfx/NV/IHhK5J7h4iuHeg99gq4QufJ+tYDwRMN65xctF
         DrlYDMULHaAkWAN6fcr13gemunEVF3+X170fVPASJA32lWieqHooPxe/f/vqdUvxHxAX
         QSOBDloLGlz52B0Kpl5515LYkRVfUn66zKbhbnBKqvLEF5VOit6IlNRhfs+d6ool360G
         rDAg==
X-Forwarded-Encrypted: i=1; AL+hErGKS37W9PEYpMoRiNjLJ9H2xgRIcaArt45n8KBTCYBdH8XTo6bgIrHq4XTW8EnDoJ77hm6kksu24G7n2Mn/qg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8SVDpsZyZaTPbb4fTuX5DtZ3ZhT34VJ46AhpNU/l6UtE3j+vwf
	R+6URLQ4hCEEXOVAWmj6rxbVjuSJIsXh0R0sAD/aAd6nN6L961uNayc1F9+HfFfp7+aLcu0gHAY
	mXh9+
X-Gm-Gg: AYBFou2LQPax1guA/FuCCK3xV7TtjjTT0bFWFISzoRvtYB0p1Y+ceVqTOQSjlEgB9u2
	/Cx5sJj88CKxdbzMp0oAcqLc57IhdsDeqq9m6M7SgaiTumsF+YWa4rqY5Yu864rhQTVBT5dbKuz
	Qx1Eq+UZ/g8UIv5U5qlEokdob9+vl4Uu3MFLLHdvfUffdIn8Jxp1B4ZuuRE+DjwuIJ0DUVQ+PAm
	Tz5l3j4/+WfOKUHW99+5HErrHqkc1yD9cUtDg8k/8cuqF3lHJTq42KL/M40iimvVVxeSLfGWUqE
	UXuB8V1TbFRPBnjno0yhcetQ/66KjOOaPsdbm6jeGcN8Sbs/QE4ivQr5BeIC/dLp2ulMWmGLlkk
	Fwaj920yJBqckFiKPvz1AsxqAoJ3y2n8neC7zS4yzbnNIq62cEfXOvL/y6LnLfChWaUzG2tXxmm
	m1uevMUUeVqn5abewPu8458TH54qy7mZlJizp7hjjXXZaEf4p2y+Cr9LC+wdlYkywJlUGWiBQEg
	Ia3z5AWQwBmkijWMUYg3a41aH5TC2Wk5RWYUTEAUFuxTTtOwQ/NAT64t/LwZlnBHR/+RKvtSIwo
	mriE1b2ob4JNd29qnyY/dDyoyRdzOjofYw08gmHg5a7t5FB3Q76Gjyk=
X-Received: by 2002:a17:907:a4cb:b0:c4c:ddd1:cffa with SMTP id a640c23a62f3a-c513ab48b7emr32560666b.29.1795104064176;
        Thu, 19 Nov 2026 08:01:04 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513afdee81sm9308166b.66.2026.11.19.08.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2026 08:01:03 -0800 (PST)
Message-ID: <41e428a6fcdcf3d0c10cada8743231797b3dd5f4.camel@ndufresne.ca>
Subject: Re: [PATCH v7 2/4] media: rockchip: Add JPEG decoder driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sascha Hauer <s.hauer@pengutronix.de>, Sergei Khomenkov
	 <shomenkow@gmail.com>
Cc: Lucas Sinn <lucas.sinn@wolfvision.net>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
	 <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Thu, 19 Nov 2026 11:00:59 -0500
In-Reply-To: <85353f59-52a0-446d-ace3-65e2d03d0d0b@pengutronix.de>
References: <20261022-rockchip-jpegdec-v7-0-3fd7dd55f408@pengutronix.de>
	 <20261022-rockchip-jpegdec-v7-2-3fd7dd55f408@pengutronix.de>
	 <596F6C9E-4A5D-4AE8-8D26-7A7247050D7D@gmail.com>
	 <85353f59-52a0-446d-ace3-65e2d03d0d0b@pengutronix.de>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
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
User-Agent: Evolution 3.62.1 (3.62.1-1.fc45) 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_080107_944970_4C861552 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5316345067666490437=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============5316345067666490437==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-sAMgqgjjNcbq4UuGGMyk"

--=-sAMgqgjjNcbq4UuGGMyk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 18 novembre 2026 =C3=A0 14:27 +0000, Sascha Hauer a =C3=A9crit=
=C2=A0:
> > Would 3 bytes per pixel be acceptable as the default, and as a floor
> > for smaller requests, like the 2 bytes per pixel floor in 6/7 of your
> > hantro-based v1? 4:4:4 at quality 100 would still not fit, but the
> > subsampling is not known before the header is parsed.
>=20
> I haven't been affected by this issue lately, but saw it when the series
> was still based on the hantro driver. Yes, I'll change to 3 bytes per
> pixel next round and make that the floor of sizeimage. Would be nice to
> have a proper solution for this rather than either wasting tons of
> memory or risk having too small buffers.

The hantro HW can run in ring buffer mode, that forces us to copy, but I th=
ink
you can then perform decode without actually having the entire image in RAM=
.
Would need some experimentation. We probably don't want copy to mmap + copy=
 to
ring buffer (double copy), and V4L2 read/write are deprecated. Note sure wh=
at to
propose really.

Nicolas

--=-sAMgqgjjNcbq4UuGGMyk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCav8dOwAKCRDZQZRRKWBy
9HpfAP91JjxhDbtoQ02FbQ9AFuc/QS5L4xa8oYqNcrceAeaDzAEAtc4iVSLgSAv/
fkehBAsK40dvdlTFZHBgCbrfEIFuTQ0=
=0Ehx
-----END PGP SIGNATURE-----

--=-sAMgqgjjNcbq4UuGGMyk--


--===============5316345067666490437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5316345067666490437==--

