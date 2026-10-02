Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D42C5CA5FE5
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2026 19:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qqUp3jhrqV+Nn2DkiInEkaWLHtWUyzB29Uy8WIOUmjc=; b=GvhHAjhjDoSeh3+rY5qwhfUzRp
	u5/Sxc2d1WS/mKf+h9rqRPUCKO36O9fyQamk4seTm70pAZDlvl0wTRRywdp3zcbQhCZjhDIQhsGyA
	G6o2HX8ExmDr+B+SuPwmNWek3oNBmgx4TyJmzNOLmB+tAnygFreDGNfQBXy3tBykRaw/Ua3T9mT6B
	c/SUt4xAqZBgjbueJxL3vnK7JczaF25r+CfQnh/fbTMD/oJ/LARjMSjXDUc0lt3Quwx4ot8a3Db4u
	Dkvawskwn1HelEi0EwscqGXIZPO7/hYPFCk0r3OXrZgfqDg7PQN2ddgaaRWGLSxxAZ09SKsR3DpR4
	WyOl0tug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCjNV-0000000CRhU-1mf2;
	Fri, 02 Oct 2026 19:57:09 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCjNT-0000000CRgs-1qqa
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Oct 2026 19:57:08 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-90e9e042ee1so1393286d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Oct 2026 12:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1790971026; x=1791575826; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5xr7pX17mvH2aCY+fCJUZRujhX//jXl3D3Nc+GjIbpY=;
        b=bifLD7dTFtaE9OoG/QAs2uwCw2GdJRkkdP5qCL3l+KULWCCNzaLFJnqwISeWF8X7JL
         TXrwC4Azjx6uZVljBOQbcK9sSapcHd/CrgPMs18ikW2LxI4B6316wSDA0w74dXHDS//W
         HzV8D4hQxPO5+i1yF29r8mQXWSuJqBYH+CUpL1clzS/KfqsCXvcNF3bMczbQeSg2SrfJ
         P8zGsQw92vMqHWHL4aQk3FPa/b7woaL7Qo4Tf1+ClX8I+p+sFFJZNFCVnSxVqXICKWWs
         MHrSNzRgrM+o4Xkp44dBNvP5iRnsSQJ6Q0MeU4RBzbuKOcFb03UUZCm5e5DOjJaMWFUj
         ZZLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790971026; x=1791575826;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5xr7pX17mvH2aCY+fCJUZRujhX//jXl3D3Nc+GjIbpY=;
        b=MmgYu9cS+w5AB/Tk7PUI73hNXLp1K7xfv/GamShYI4m9cSgTGyCQe838+0Hu+OgrGk
         i96efEkS4N4tRufMtnco2Om/z5sDRqJznTFfNB/PWDSNYtXPsQ8uIsGhw5oPrulgJLiB
         0H5T11Vh4AVmQeRvHl4FLvXbEaADo+qcjR+IUfxPpBVOl9fKTt5Ga5hFbETzEF95icJg
         HEQQ914vOQgFTOfjtk07Ju3U9nHjK3RPzH28dPyPkK4qwKJKs++7/PlLctTCm5XcQ1Zj
         64Rl2jAMrh/10tHUyf6GN60mB7Jf5VhGcP9uuyLbSuRoc2x4KpA4NnhQEF+czuVi7Yyy
         LLAA==
X-Forwarded-Encrypted: i=1; AKwUvBz/e+xkH+oTprzCFzLJ0GqVabwRmx0YXMWyo+/476n7Unot9PtRG07ns/vYk7a5mfnsq37AkeCxVntIhXdUUA==@lists.infradead.org
X-Gm-Message-State: AFuF++k7ezkKJkxFNRIPjeI3YjDPxBf3nNkDITbw/PXjwAqm/yCqGJpZ
	8XjNGXhbWxu78LKFKh5h0gc5FV9c2+4e3/djy5Q3i0fl+vXWL7RxQLI5k6uk6iLXj5Q=
X-Gm-Gg: AYBFou3KO0cW+B6vmLzjR8cxXIp9k7lq19s2s1EjkN3QvrsRl2CJPkakMiiF6P7i6Sl
	Qf+5QFZZN5Nliz7vcapcMFNy9QaUJRV+AneNTTh2IJYTf6mtW6qEjCCkatvsu8oWOyjRqDk2IXf
	JotntFwQilI8obdWpWZbWKPXWjEF0pC8mfk5wyCKaWDD8TZ+Wx6yvgBQEnvJFjeqn9TD2BqYwdn
	kh4XgY2gOiRmNi67jP/OM6qFr6SS4fq4oHbrLptCSbqoOHu31EMLyicET56TR9gUzCCywp1UJ2N
	+DE/dSTOB2VH8xH3D5avheEp3SaustsOGZMdK8q9rduZOrII/j3kfFH6Tipylgft5QO6addOO/7
	PbQ841Mu9CKzGzn1ilTUy+sfsGV8stZj5MAfBV59K7xlAKDjID+waYmM9hf48M6F3DLFr4PxsQW
	SMS8lA9xl/4aixT2Nx/XHseGV7T7ws4eE9t98HVtkXCEEEhvtV+FKSIMW69WKHyWllGR8zXBrq3
	ZdvK5G/yIyDRQ==
X-Received: by 2002:a05:6214:d46:b0:917:a8b7:c824 with SMTP id 6a1803df08f44-9195d0a24fdmr7529476d6.7.1790971025988;
        Fri, 02 Oct 2026 12:57:05 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:34bd::5ac? ([2606:6d00:11:34bd::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-919442ce1c4sm20271766d6.3.2026.10.02.12.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2026 12:57:05 -0700 (PDT)
Message-ID: <60c0db37aa1ba8674a0b205473075ab6cb0ed39b.camel@ndufresne.ca>
Subject: Re: [PATCH 0/3] media: rockchip: Modernize PM_OPS
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Diederik de Haas <diederik@cknow-tech.com>, Dafna Hirschfeld	
 <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
  Mauro Carvalho Chehab	 <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Detlev Casanova	 <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,  Jacob Chen
 <jacob-chen@iotwrt.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Fri, 02 Oct 2026 15:57:04 -0400
In-Reply-To: <20261001173610.158931-1-diederik@cknow-tech.com>
References: <20261001173610.158931-1-diederik@cknow-tech.com>
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
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_125707_489487_722D8C52 
X-CRM114-Status: GOOD (  15.20  )
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
Content-Type: multipart/mixed; boundary="===============6155005777174718874=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6155005777174718874==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-4HyN8OfCN+SaQY/bAsCV"


--=-4HyN8OfCN+SaQY/bAsCV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le jeudi 01 octobre 2026 =C3=A0 19:34 +0200, Diederik de Haas a =C3=A9crit=
=C2=A0:
> A bunch of new PM_OPS macros got introduced in commit
> 1a3c7bb08826 ("PM: core: Add new *_PM_OPS macros, deprecate old ones")
>=20
> Straight up copied from that commit message:
>=20
>     These new macros are very similar to their SET_*_PM_OPS() equivalent.
>     They however differ in the fact that the callbacks they set will alwa=
ys
>     be seen as referenced by the compiler. This means that the callback
>     functions don't need to be wrapped with a #ifdef CONFIG_PM guard, or
>     tagged with __maybe_unused, to prevent the compiler from complaining
>     about unused static symbols. The compiler will then simply evaluate a=
t
>     compile time whether or not these symbols are dead code.
>=20
> So convert the rockchip media components which used the old macros to the
> new ones.
>=20
> Diederik de Haas (3):
>   media: rkvdec: Switch to modern PM_OPS
>   media: rockchip: rga: Switch to modern PM_OPS

I'm taking the two first, thanks!

>   media: rkisp1: Switch to modern PM_OPS
>=20
>  drivers/media/platform/rockchip/rga/rga.c           |  9 ++++-----
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 11 +++++------
>  drivers/media/platform/rockchip/rkvdec/rkvdec.c     |  9 +++------
>  3 files changed, 12 insertions(+), 17 deletions(-)

--=-4HyN8OfCN+SaQY/bAsCV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCasAMkAAKCRDZQZRRKWBy
9LnsAQCEQh8/fK0EjxA2qyBxHJJCZTj66w+XssQ/r5decbAYxwD+NAlRMgWmM5Q8
DCLHzSESx4CgbNEx6od60qqNuMc9Bgs=
=z221
-----END PGP SIGNATURE-----

--=-4HyN8OfCN+SaQY/bAsCV--


--===============6155005777174718874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6155005777174718874==--

