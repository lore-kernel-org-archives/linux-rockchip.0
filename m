Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB540606A31D
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 12:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U7QjTWTn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=rNGcJAhj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bMdO1eHwmLA0BSQLzptuvDY075dUdc5rGL0JEUGdVYg=; b=U7QjTWTnFn+sJecxwQ1e2TT8IW
	TNECoQ938Bxs6jiyDKUU6vVaoP2UMwKWog4F/7uEiDNpi+b7AvNuC05r3opjW6IBKsavz78/zxcnD
	WkCaNFXxlZpUYjgVcKanUlcGPyp7k2zO5RLpWb056G+EtnnOxMBc3LpCBAcMDCz6VhMtjhJlZ4xHx
	oVOS83faH7s0Pz8J1wHEU4NNDvfetxd5k6SJ/xiojYtvDgCaNNex6cDImA0b/069WuoEwjMzFw4Ve
	ml8CAKTrMRtpGPZrr+KUANhf4mNTgkttEe7Vjxy+vVFKW6YQFXlPs9axx5xRBSq3papZE/uzK8Bca
	mmxwLo1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMPLa-00000009ALM-3tLE;
	Thu, 29 Oct 2026 12:35:10 +0000
Received: from mail-qk2-x09.google.com ([2607:f8b0:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMPLX-00000009AKz-0xJq
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 12:35:09 +0000
Received: by mail-qk2-x09.google.com with SMTP id af79cd13be357-934956d1044so128314585a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 05:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1793277305; x=1793882105; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6kQ8SFr/1aSJP3EBOzJKpTmE0YGxTg5vsnT5Ep5OnM4=;
        b=rNGcJAhjMG9br2A/1usCVzPNTlEUASgsXb/vHAhlnWrZe/X0+c6dSH8kia1B39adiI
         SIE/JtlC9/obnOgKgyWfhlP2Q8HDeAvdm+QJa+f4SFZQ1NT355hwaRLS4aDQS7D+whwj
         S7spJ82B/YRAWCMlxlwfUWmnRfW8MaYv3ETJrxxGNMsCH+A96PwYyZgFJAw30FafvIYX
         wigoW3l+0msPViRM0uwTLAaNHdyFUz8GQS+v2axW9shv3iTMzARGDFEzE6B1PjkdLRgc
         NZKdrHXyNWK1AGQ/lVcPnor/XDiHFtxoWKK24fzBuJCGg+v3e6QyMK4qWyvsBUmtgiww
         YeiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793277305; x=1793882105;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6kQ8SFr/1aSJP3EBOzJKpTmE0YGxTg5vsnT5Ep5OnM4=;
        b=AOtcaD6J4YxChcG3g2/Rj3o+sxnXfOlHnvPdnCLf8ay2qM5nkKpAuaPLm21acWKNja
         RgAbnctbFhQvu6TlZUTUg5CzuSqzLmCkV8CVSREsDSqE/HTy8DKxS7qPbL1hJGsAc1nb
         XrWBLrfq1bp2TNSopwuP4/kJMndeROE7LHWW8LaUvVIm/kDQa1LTHcD2mArqHTAi7BuD
         PyWeD1Ks1r1+LCPoqv0mAb1A+msVmwC0BUXWJcm2RHLWqUPXRlr35vzDjhbMoC/GVFZr
         PrPwAEbN63kEkCVbC/hxe1kDWTQw82C2EI9H+dKvX8zD5VkrUGwXECVETdqh1VKcconu
         W0ZA==
X-Forwarded-Encrypted: i=1; AKwUvBwoFUnH16KOeI1Z2921N5Z8eVR+J4aqR22eMRMUaiB2YbJOTp8hCvAxighfLOjSI99r/QlFIO4BzJIH2XjSXw==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ8Ds/8oVn97mWAaK8mWBTE0saOW7KR42VZVcRZV+4Nbl/HJPjo
	e9NIagLAm9YOc3tJofpFBaNM3jpf2LNq7iFtOX1lzjyqgbHQbLHNXK0UlGE6mMW1Us88MWHtrL9
	upOY6VywpLKdZ
X-Gm-Gg: AYBFou02RHPlEbBcRJxRz8MQrkv3rRHh1kB9cevKsVslwXv/XvqE6mI9RWkxGHjtlI1
	T9EvZ6t+ZBToWpIcfAzFtOs821gs6aFtKC12TgFQpWEfyop84lpHejZrew3WS4FqKPKYFvlDk4t
	0PLnGM4DaNLNRcF0+5wLggNUsTfieX/z+PxQsun7fji5clP3/RXF5HbbJa72qfHNGHx87U0E1ou
	wSJGEOOPU+rG3tHRnfuq9fbQCNE5iSB0IEFvpvIoXLU7ThpToDguj/UJWYA75N+b7NxWfs6yOMX
	P0Qu5cHPb8/bziZghJYokAPBfEZpwLp4jNgJx/Y968GNnMmBv14iDAWWa5mv+lsWMiMTgSK3OK0
	4yajvpLhLlZqLjKX58CbY/cXhOIjrOveM2vJBrSzPMX0qcGVLfZmCcwr5Rr4APIG6QtR75L07ZU
	M7Ws4G3k6+gQSPHartP2Kwy4+bba6pnStPm6ktlAgSBlCklWaTOxqStm+6A5ZA1N1n+goZ1bnHu
	w2CVHxsrOAMd8GeGKAGA7MVITY1dQAeg8gBN9L1KqeP0KF0LAtDImVAlSFYBLftJ8Lsea5FVL7d
	r0xzn4gKp/Z82LsSsVku488jxXsR9QcXSPKqgznFZbbQ0lok3jiV+38=
X-Received: by 2002:a05:620a:6f0c:b0:93f:571b:c733 with SMTP id af79cd13be357-94408aa2728mr752183285a.13.1793277304876;
        Thu, 29 Oct 2026 05:35:04 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:34bd::5ac? ([2606:6d00:11:34bd::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-940f067f330sm1533588085a.24.2026.10.29.05.35.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 05:35:01 -0700 (PDT)
Message-ID: <e9fa77f78fbe8e9babbb62fae815a96c03e458e0.camel@ndufresne.ca>
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal
 de-blocking edges y=4 and y=12
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: valery bokov <vlry.bkv@gmail.com>, linux-rockchip@lists.infradead.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-media@vger.kernel.org, Simon Wright <simon@symple.nz>, Ezequiel
 Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 29 Oct 2026 08:35:00 -0400
In-Reply-To: <0b3f80aa8522d1f1655c3696848456dba4edea22.camel@ndufresne.ca>
References: <CAN9BvpqAL_Hb2cR52EkYmkdm37ej2qKxFh2bj7F6Ei_bg-Sw0A@mail.gmail.com>
	 <0b3f80aa8522d1f1655c3696848456dba4edea22.camel@ndufresne.ca>
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
User-Agent: Evolution 3.60.2 (3.60.2-2.fc44) 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_053507_545510_2ECAC32B 
X-CRM114-Status: GOOD (  21.63  )
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
Content-Type: multipart/mixed; boundary="===============8375379138417538392=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============8375379138417538392==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-+sRQ1hNN5RkJURs9Gd7y"


--=-+sRQ1hNN5RkJURs9Gd7y
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey,

Le mercredi 28 octobre 2026 =C3=A0 17:02 -0400, Nicolas Dufresne a =C3=A9cr=
it=C2=A0:
> Hi,
>=20
> Le mardi 27 octobre 2026 =C3=A0 16:20 +0100, valery bokov a =C3=A9crit=C2=
=A0:
> > Questions:
> >=20
> > - Does anyone know what 0x618 is? It=E2=80=99s outside the documented f=
unction
> > register range; I=E2=80=99d guess a cache, prefetch or bus-interface en=
able.
> > Does the BSP (mpp_rkvdec2 / rk3576 init) program it at power-up?
> > - Your FIX.md notes mainline throughput is well below the BSP=E2=80=99s=
 (=E2=80=9C4K
> > is ~30 fps vs the BSP=E2=80=99s ~112 fps=E2=80=9D). Some of that gap ma=
y be this bit:
> > on our board, runs that come up with it clear are ~3x slower.
> >=20
> > A fix would presumably set bit 1 of 0x618 in rkvdec_runtime_resume,
> > next to the priming. That needs the register mapped, either by
> > extending the =E2=80=9Cfunction=E2=80=9D reg range in the DT or with a =
separate
> > mapping. I haven=E2=80=99t written that patch; I=E2=80=99d rather first=
 hear whether
> > the bit is known and whether other bits in that area need setting too.
>=20
> As you probably guessed by now, neither myself or Detlev have tested susp=
end
> yet. I did some search, as I don't have detailed registers description fo=
r this
> SoC, only the MPP code as reference.
>=20
> You can certainly attempt some initial fix. The register block in questio=
n is
> [0] Vdpu383RegLlp_t, and the register is called SWREG6_LINK_MODE_EN. That=
 makes
> it quite surprising it did read the link table at all with such name, but=
 this
> is what I found.

As you mention off-list, I wasn't checking the right offsets.

			reg =3D <0x0 0x27b00000 0x0 0x100>,
			      <0x0 0x27b00100 0x0 0x500>,
			      <0x0 0x27b00600 0x0 0x100>;
			reg-names =3D "link", "function", "cache";

With 0x27b00618 falling into the cache registers (already described), which
totally make sense why performance are affected. Assuming a static cache
configuration is working well, I would configure it properly probe and then=
 do
save / restore in suspend / resume. I would avoid doing just the one bit th=
ing,
as it can bite later again.

Nicolas

>=20
> So I think we should map the LLP completely, even if its mostly for futur=
e
> implementation. I was also checking the LLP driver downstream [1], and we=
 seem=C2=A0
> to be missing a lot in fact. It seems like starting from RK3576, the LLP
> capabilities have got much close to a command buffer.
>=20
> regards,
> Nicolas
>=20
> [0] https://github.com/rockchip-linux/mpp/blob/develop/mpp/hal/rkdec/inc/=
vdpu383_com.h
> [1] https://github.com/rockchip-linux/kernel/blob/develop-6.1/drivers/vid=
eo/rockchip/mpp/mpp_rkvdec2_link.h

--=-+sRQ1hNN5RkJURs9Gd7y
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCauM9dAAKCRDZQZRRKWBy
9MdwAQCVfeh3kW9745VIqV5e8dZQeDQnuq0Fa1P9lqgAa+imygD/QHRyu2DXbp9h
nYh08oXkod0XNuGQFlBHn9dzQ9pV7go=
=+2DQ
-----END PGP SIGNATURE-----

--=-+sRQ1hNN5RkJURs9Gd7y--


--===============8375379138417538392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8375379138417538392==--

