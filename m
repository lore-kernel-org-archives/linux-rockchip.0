Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12ECACD4F21
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 May 2026 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ks+NLRg1YlQTVEhGvMHTiHMibJpgIrSksoMFq/56EMg=; b=jhthujhldnQZJnQwK8O6w+rEb6
	54nFv3EobTi73IES8X2ZdhNbl3Y5AMaFT9x0RQE7ZHbTY+DtgmPWr4ulqhUZTjJSAPFRImFMQ1iYJ
	rWXoKkgeMOUwYKuP+mg+65Q/fWqfO3BcFyDRvaFFvbkJzfylY5R9m7oO9VRsJ5Lq/vdihiektQIac
	Xmzm5fdP12phtbHOsWinhhtGxU4hHk8sON0wjoochEufLarPMGOszg2mCX1I9cnjdnWzI+diuEUXp
	+JlBtNzL4CGFxDM1LtM5glJAsyz+Aoh4htxV/l+IjohOL2bn/HLtAhsI1bNdn6MZ+HadGijYjLp1c
	YKfk0jNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNCqp-00000003H75-1jHR;
	Wed, 13 May 2026 16:54:27 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNCqm-00000003H5s-3Ixa
	for linux-rockchip@lists.infradead.org;
	Wed, 13 May 2026 16:54:26 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-50e5c5033f6so48541331cf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 13 May 2026 09:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1778691263; x=1779296063; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zjrVcTrTTWQCfhxILgChHYoh0VZq+sDnXGjkQwsAF1Q=;
        b=QrHUIgYNmbQtzcbyWGjK2n/5L/XYTcJ5cTmKOsCwWodnjSuZX0wZSR3o3ly/stutQW
         RG011MWGXmDP+uU4+XoX0qiOeO2lqe94fRu8pqmrYNf7dLJuAZGcOX5rMW05/PMCVGTk
         WU+HU87AFnzMGhCp6HhiHpocrFpq1YysUOjwWo3fSwlFDHZ5VPN3N0FhJ4G1JuCQHoiL
         4BxcRX0XxP1rTfCzA8jIGgjOOvJ8tO5bjt2Thm24e8Q3DZZYG4jjlpULrS3HgW+2+XKR
         Nm5CBtASvL4qLcrxP+3drmGbm3qB25PIPqM3eENDMWLAMS6JwIK7aHvcscRwExoZnguH
         EPEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778691263; x=1779296063;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zjrVcTrTTWQCfhxILgChHYoh0VZq+sDnXGjkQwsAF1Q=;
        b=iXTP7I9ZUClfZiVvMyCH7Nf0JdfAGmcpdDRVKFYtsraSYX7DNcWqWV8YRa1wn0abzK
         QcrwQCQaMl0TBZKcwiI1WtY6TjpArt0k9ZYvbcIqdA/NhYw2zmbJs/S5npxjFCqo84iG
         UTmIRukDynosObKfi6WhkWIcHYFWOUiA9sc007vQ/SvHZqiZ/StMwHkfu8vUzWhFmciB
         ppbhnGk0q2+v6wcoIPT9a3iOydH6mEVVgkCpBZmuObO56Yh1NH0biijuYg2MxSw4ZOrt
         2ZPOCTfpqWiQxWxhXkf33kbXcOfVUyrOPE0gcIizIMsz+Pq9KWAQdtdX3dpbsQkvs5in
         EWJg==
X-Forwarded-Encrypted: i=1; AFNElJ9JFWObglKIdzlOZPIihpXggkKwsOjH0+pHhX0CgO8EIDLIsWfbXR6iRFDFMNRzarmtIpj9gpi74tyBeR7IAw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8o+5VI8qQaB7+U6BgSkzRLirKeIlavinHCRriaXTOmRKq0Bnr
	7MygxNI1G64/U4ZRR5AQQ1MRgvIku6oKEohuDR+UVnCPsFSoPkgLm3QhFKIWCSot/9k=
X-Gm-Gg: Acq92OGq9lCU56hYa7uwSUa8jMR4Ick6TcWK+UraTWr68b942rGOMmb7vzu2G3x83/K
	DCWdThyTNyw7vhss6mHY7nMsI9+gxXiCGmvbg2gYaD/dYKIPZ0+whKBsy4jnl7ZN6I70TJsBHyn
	CcYzHHuz4fO9GnvTR4v613ej5F76ZSlATVMtdEb2I1HQhyUPxZAXjkEFTmCnKLi345YS2xeznuj
	bHhUr9TI+YI8PPxAAgYA0Tqw+ACHN4iOSEvi9B29tCdaPA8U6eVSo6HuPI8lKb6ersSwtbgHGVr
	jfuT7amtG2h9SQONZtaJuGJolYKZSzi8uIXdKCGFABQvzQU9xgX/DN0IyhsvwXaHbld+lnHNhot
	1VIFU2vZhBphChR+Ks3t6XixMOCQd9ibIfF17k+4xIdl31hxj0tkOAKjiGESLi7L4AoG2GeHiny
	vUNoa6No1N4/2GCwf3eyD+/xGBL8tfP8WGiNHG28scI6xUtGagjbNfXmfKDXXtQCadcr1F
X-Received: by 2002:ac8:57ce:0:b0:509:3c8c:23f7 with SMTP id d75a77b69052e-5162ff0791cmr48491321cf.30.1778691263060;
        Wed, 13 May 2026 09:54:23 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0? ([2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8c90874e5e4sm813106d6.6.2026.05.13.09.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 09:54:22 -0700 (PDT)
Message-ID: <4efb85a777683e8eba1e19501c4bf6de3494d2f9.camel@ndufresne.ca>
Subject: Re: [PATCH v5 16/29] media: rockchip: rga: split flip and rotate
 into separate function
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>, Philipp Zabel
	 <pza@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de, 
	sebastian.reichel@collabora.com
Date: Wed, 13 May 2026 12:54:20 -0400
In-Reply-To: <aeff9412-1c69-469d-bee3-7b9efa9b3947@pengutronix.de>
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
	 <20260428-spu-rga3-v5-16-eb7f5d019d86@pengutronix.de>
	 <ebe5cd6689923eb1e2124e177f694895383fba54.camel@ndufresne.ca>
	 <1f447423-8c63-4545-a4f7-d8d5ef821255@pengutronix.de>
	 <30f56a0ac9f724b5ec1b936eec7b5b7c5e751c75.camel@ndufresne.ca>
	 <aeff9412-1c69-469d-bee3-7b9efa9b3947@pengutronix.de>
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
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_095425_000808_C5598CAA 
X-CRM114-Status: GOOD (  15.27  )
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
Content-Type: multipart/mixed; boundary="===============6778494676833564090=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6778494676833564090==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-aSiFsAE5dKCPdAUlYUtL"


--=-aSiFsAE5dKCPdAUlYUtL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 13 mai 2026 =C3=A0 16:29 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Philipp Zabel just mentioned that a 90 degree rotation would just cause=
=20
> the RGA to scale it to the output format (deforming if it isn't=20
> quadratic). The existing code already considers the rotation to set the=
=20
> scaling factor accordingly (which I've also missed in this commit. But=
=20
> the commit is dropped anyways in v6 due to the various footguns).
>=20
> While I see that the V4L2_CID_ROTATE docs mention the need to set the=20
> format according to the chosen rotation, it feels like it's intended for=
=20
> non-scaling converters. So I don't see a problem to just allow the=20
> current state, as the user has to adjust the format anyways if he isn't=
=20
> interested in a deformed image (instead of blocking this potential rare=
=20
> use-case).
>=20
> But I'd add a check in my scaling commit to also check in the streaming=
=20
> state that we don't set a 90 degree rotation causing the scaling factor=
=20
> to be exceeded (e.g. 1x2 -> 1x32 scales by 16, whereas 90 degree=20
> rotation causes a scaling factor of 32).

Ok, didn't think it would just break aspect ratio to make it fit, but it me=
ans
its valid for this HW.

Nicolas

--=-aSiFsAE5dKCPdAUlYUtL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCagSsvAAKCRDZQZRRKWBy
9DGsAQDFF4AUa8rwW+g79CDHXNSmFRT9T7gidDUKZhGYQYsr2wEA65cExpikwkg2
lV7COvcRf9/k95Nx5NJ2kLXO9C4PsAs=
=fHbK
-----END PGP SIGNATURE-----

--=-aSiFsAE5dKCPdAUlYUtL--


--===============6778494676833564090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6778494676833564090==--

