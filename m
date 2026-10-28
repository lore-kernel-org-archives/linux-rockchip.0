Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2929606A31A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 21:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z2NKLe3j;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=ke+RHx2W
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MMRSV6WnKlh5tLYk+KYrOWR8OyCOCPSSsL54ousgoqI=; b=Z2NKLe3jYCBHiEdMWU0jbypIbM
	/oOYvV2LC5h7GFJkXb/zLYTDaQlhc/wASe6yQlhnvJJ6ETkSBqH0vrg6sASuSvRArVmEkYgs186FP
	KiwYZkEKFaRxBqhE/udRmU5r2a1AJMBBVABydJFt0c3J1gDuvS5aLpcIdqGjRfZRuYEjy13tNqhCl
	DPbshP51+w/kTk9KN9jOYqimaXX/m8zpI6Eww4JIrfHrWvmO3wpCVYpU1Pt+7A4PzOtivNnOypLWF
	FEU0egIWYcxawV7R9V5glP3Rd2N00iNsU0lPNR+gocrA4BZ8ITeNTmWNOxHdttuCDYEaprd69dhNl
	pB2y9W/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMAnU-00000007xxd-1Cxd;
	Wed, 28 Oct 2026 21:03:00 +0000
Received: from mail-qk2-x03.google.com ([2607:f8b0:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMAnQ-00000007xxI-3fjN
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 21:02:59 +0000
Received: by mail-qk2-x03.google.com with SMTP id af79cd13be357-93f21bc9a5eso130846085a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2026 14:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1793221374; x=1793826174; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lcKDdY0PXyl1xPcW5E/fH1VRKcliX57O/IlRcrnPofo=;
        b=ke+RHx2WBXEGyTJMj2aeSF3gxar9tHlzxzW1ooudVJSNsdfmP+skmZHQ+jyDyHLZcw
         R0I77yex+JJqDLb7mjz9N7NXa//EKsr95VKUfeuNDsxcQOhW1jWn2RP36PAdXXqWCCGI
         KXkm6F2ogwVN0o9CXBznD5YPjdUQB+9AtIXJ2/AmQtizIeOCz3HyjMM1aqARD1094aFE
         hFB/meIBZrF3PxP7ZQL0QjPEfBmyxzSsjajsdm2Nw3HgWQKFLfMRngZAishLHcYeODNx
         +k5EUFvIwDHMVZLfDDtbNavGqWiTrUfxJ55OH8vyJXf9rqVpJAPHoC6u2H8/DG4P94jm
         tJDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793221374; x=1793826174;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lcKDdY0PXyl1xPcW5E/fH1VRKcliX57O/IlRcrnPofo=;
        b=rGQA8h2tIAzWP/mf8d5qE9TXaiZPehO2M9sn32mLT5yM6Qhl+w2v90LV3+mmjOsbcJ
         /Ik1lEUlq1d5c7q+1AMRKYRAISZvLxvH77j9vKlf+EP0is/jVCjT4cJDbLUj+4vNIEsA
         eOuevon3miuF0MqOZsv8nZf59rl/S8rP40Y7mkAenIa5SwXlXxUFZOLhfYQIm/K3K6Bc
         XJeb0TZF3vbwG+zLnMNZ7Pg0ic4ULp11RzTPfwS6kdRkWibCdDGv4MrOd9EtJu2IQrex
         7LxeXmcZNSdDggo/Gh+xltZt3n/fg7vgKSPFcQ7Fo2kwDAGSKTWHvXnscIYPzDVFX+AX
         ZOiw==
X-Forwarded-Encrypted: i=1; AKwUvBz7LbsZlG6h5u+HDjK5MLakhfWD6YahtpoQ7JnPCljoh1g+ElaInFG8QwEXtWRYUU9rwF9p1lcTVnpJ/PZ/LQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYKqPbZ+jcoELv9Bg5eEQYAtxYdQyNEuu0dRDW+ld8C9ANoK3jq5
	bFvRHOhqAWrUYSs/TGfT2BY1YI0CSc4IjyRrFdioiWpGDjnGJsbwWwEsMM6mJPQENGA=
X-Gm-Gg: AYBFou1RQJTHNOUEP18IoV7CKma16/NkSEkcKxg9espV58os2X5sTt3NaMu+o6OUDrL
	YGYaqgcRF6pUnwQJ8YOKlc87altzgD1pPavS2tQB3df+RWOxxB3uFF+pk4tDdmPnKxz2b1u00F1
	rPoyuykTqaMl2XcY6o3jwQi45UwF0S3tGYGS7NyDqBoD7LUXnORLliMpRS8YybKwwj8NtNiyPc+
	pyCDR7zDvQFXPV1TsjUghl/NTfQKUHNbssi4jYVeWUAxc2YF56BCgtkXTfdl94X/xZP9aq8vfyM
	qYFH4QNFrJIzAB6hRMSzphyPb7O9YHPDNc7urh7jfW4gliEwVLjJyR9X7b7QCRyJmCqSGQsGnly
	bxl5sCl8e4yu3xQe0unleqpsUnGxADbVulV4+fsk3BE8irs9GZ+3vdT+OrSN6lMAPy7q5g6uIxS
	+JqGTpM2cU6MWIo9lqCLBcNLBrestp4pST67ccQj5mFZFG52Skr5HLCLfBJ+ogYIKk/j7k28Imd
	lQ7seMWBySJZ1BxjBKjQWjwoSjejQlKkQoSu/ABeLY05B8zf654EjA9lo3DkjU+ILqfAMH4vrkN
	nx2Ap5pHaeU2K9kXi6nG+fkYi/ccsXmWRjdIececlhFwaJBrLXKM3Y0=
X-Received: by 2002:a05:620a:688f:b0:937:d6e8:59b0 with SMTP id af79cd13be357-944089438e7mr539240985a.10.1793221374326;
        Wed, 28 Oct 2026 14:02:54 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:34bd::5ac? ([2606:6d00:11:34bd::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91c47c54cbdsm141047106d6.26.2026.10.28.14.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 14:02:53 -0700 (PDT)
Message-ID: <0b3f80aa8522d1f1655c3696848456dba4edea22.camel@ndufresne.ca>
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal
 de-blocking edges y=4 and y=12
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: valery bokov <vlry.bkv@gmail.com>, linux-rockchip@lists.infradead.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-media@vger.kernel.org, Simon Wright <simon@symple.nz>, Detlev
 Casanova <detlev.casanova@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>
Date: Wed, 28 Oct 2026 17:02:51 -0400
In-Reply-To: <CAN9BvpqAL_Hb2cR52EkYmkdm37ej2qKxFh2bj7F6Ei_bg-Sw0A@mail.gmail.com>
References: <CAN9BvpqAL_Hb2cR52EkYmkdm37ej2qKxFh2bj7F6Ei_bg-Sw0A@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20261028_140257_110689_443BEB3C 
X-CRM114-Status: GOOD (  14.94  )
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
Content-Type: multipart/mixed; boundary="===============8143143018486699035=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============8143143018486699035==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-ne9NdZ26iNQ9+DseWgfF"


--=-ne9NdZ26iNQ9+DseWgfF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mardi 27 octobre 2026 =C3=A0 16:20 +0100, valery bokov a =C3=A9crit=C2=
=A0:
> Questions:
>=20
> - Does anyone know what 0x618 is? It=E2=80=99s outside the documented fun=
ction
> register range; I=E2=80=99d guess a cache, prefetch or bus-interface enab=
le.
> Does the BSP (mpp_rkvdec2 / rk3576 init) program it at power-up?
> - Your FIX.md notes mainline throughput is well below the BSP=E2=80=99s (=
=E2=80=9C4K
> is ~30 fps vs the BSP=E2=80=99s ~112 fps=E2=80=9D). Some of that gap may =
be this bit:
> on our board, runs that come up with it clear are ~3x slower.
>=20
> A fix would presumably set bit 1 of 0x618 in rkvdec_runtime_resume,
> next to the priming. That needs the register mapped, either by
> extending the =E2=80=9Cfunction=E2=80=9D reg range in the DT or with a se=
parate
> mapping. I haven=E2=80=99t written that patch; I=E2=80=99d rather first h=
ear whether
> the bit is known and whether other bits in that area need setting too.

As you probably guessed by now, neither myself or Detlev have tested suspen=
d
yet. I did some search, as I don't have detailed registers description for =
this
SoC, only the MPP code as reference.

You can certainly attempt some initial fix. The register block in question =
is
[0] Vdpu383RegLlp_t, and the register is called SWREG6_LINK_MODE_EN. That m=
akes
it quite surprising it did read the link table at all with such name, but t=
his
is what I found.

So I think we should map the LLP completely, even if its mostly for future
implementation. I was also checking the LLP driver downstream [1], and we s=
eem=C2=A0
to be missing a lot in fact. It seems like starting from RK3576, the LLP
capabilities have got much close to a command buffer.

regards,
Nicolas

[0] https://github.com/rockchip-linux/mpp/blob/develop/mpp/hal/rkdec/inc/vd=
pu383_com.h
[1] https://github.com/rockchip-linux/kernel/blob/develop-6.1/drivers/video=
/rockchip/mpp/mpp_rkvdec2_link.h

--=-ne9NdZ26iNQ9+DseWgfF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCauJi+wAKCRDZQZRRKWBy
9OE5AP928iYgCtz2ebPDHhDrHaCfkRiPSTZkfbf2wqeQxJ0bYgD+NtlC6N5jiBGi
U9Pew2K/ZEYw8f+Ct1kOo0gWRI1Vpw0=
=1nkl
-----END PGP SIGNATURE-----

--=-ne9NdZ26iNQ9+DseWgfF--


--===============8143143018486699035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8143143018486699035==--

