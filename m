Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD228CD6E79
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 20:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZF0P+z/I+ZmS8f6lqqZMBlbyRf7FbOMqM7yY9KoggRI=; b=eQnro9788tEs28m5EmC66JhCLI
	tIRC7OpEWq03z1tRyQzklYUnVBkkYC7+8XM4pzAnJLry4UbCOgx1g/SUmOVOtJP6qKbA700CmcREc
	WfYvrAI1v3daN8jsASaqKgbRmv0iXSPMP2JvFtEZdu7U9kWkCYLajEGqBw0/yCuNhPIy8jvsmVmP+
	bIb7X1IBvoxpROMslvtDj4o1mEJCqwSn3JF5puLRE2W/7N25Ihlxb7CHBkgOnhvfPLEk8QFQekk14
	0v62qLgA2qczFS4TsaJpnvqJT42VoEo3PV7CybQb1QPih+dQwFSY3aXSbmqaOd8xYJSBM6hd/JJtF
	y+195omw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgSH-00000004M3L-1gHX;
	Mon, 08 Jun 2026 20:20:17 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgSE-00000004M2l-1bO5
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 20:20:15 +0000
Received: by mail-qk1-x742.google.com with SMTP id af79cd13be357-91591f19716so602203585a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 13:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1780950012; x=1781554812; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=tzuyC1atyxd9zJrlibRKntcjylXuE+/9E3v4LGDaze4=;
        b=VjRHzWHcNNF6ObSzEVDvelJX/3+Pc/JfxaSIDH2TRI3T16xl4QbqT3ME1KVqkUrfwc
         UsgXFvIgn8o41TWNdEJBaL3m1MIUGfqhU5A3hEyHAq6+/a4pQVBlYrtKIEB0Hfwq0W/L
         e82FMxAkVch3SAtUSJTTNAUf2rKxZkQN7wySxI4WO30TjcdDflUygH+pFBLpNRVqZ2+C
         cUhngaz9CKwoXgY/LlMYN3vHUFRexXOVTLwqGWPCvnXQCdIGjYn96reP4ayZk5M3LGWg
         NNAGSsx1fqHP1Rf9+72R4XYpZP6sIrhYyYvx9LwgFFEDohjcal3CnaHawUCEzhXjXzUw
         rdmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780950012; x=1781554812;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tzuyC1atyxd9zJrlibRKntcjylXuE+/9E3v4LGDaze4=;
        b=WSQyX5cxs+ZlnR4tLCS9SSQtlpmimfmCoaaaV4F0z0+HhoRXTIDOLCM7b0hzdhYQzX
         zWJ5zH+mOQlWctlVQ7QeiQ6xVb8WOjDCacK7qChSE9iusv7WqKf+skQ0oNXU3+wWJuQr
         T99FBkmsVgOHFbOEBviX+ccerM9mgf3uNWj1tC0XhIljR8wHnFaNzoOLLUnSEyDS/w8W
         5RBsHqLOoxo7mz7he23GniNFkTfGSpzQGmNPVqsSa7IUA7LJB2DAF5eoFAyGDOR2Sbv8
         PWhQIb2TgljGVBJPl6VhicJq9DMGp8y5hnNunMywzIEz7H8ePfsqMTEbdtW5jPfyz78j
         pdaw==
X-Gm-Message-State: AOJu0YxlDo6Tc/QzJqOI+86ih7UoqrUdjrXotPA0ynM+OFtdFKMBTh2S
	ykSK0R1vW02h5+FzR79tUqmOKSEehmu5hprWVt3arQTW4BfqcZWKigYPYE8sRM4xlBmYIDJ9zH9
	hawBusfuXFikv
X-Gm-Gg: Acq92OGyPBOXiLxjFCQ4kl0852d+NEJf+ibo72gvLnXzoLSVm/PG2603QPARhC2odbc
	XyraJB54cU1RtEnGc7B9aE9XiIQ2vRq8uq5noRU4DElQvaPR3f8RiBZhrJtWDBOWLZgvqOEaKgI
	P9Foiok14DmG0r6qvu77fWTC78minAr3jaGHz4JlpN27NfGoIdxH3bKrIa2WjeOcQMso/4QzvGg
	9v9Vz48sRMYO5GNgl9ddQnmPGXDrHIcwCaJng7a8z/46kCm2G+b4IvxFHllKPTCHRzfwwrfcxA2
	0C+KYlZp+s8S+Vk7Z8Y23o1h/oc1gPUwxv3/Go2N53DdmVJukEuXljKYlhcI1JxZc2n+JvXNe/Y
	oOoArCUyBB3XqTRE2eKl3/8ULrpjAN250K5Isbl+iOUJfCj1z0milKknkl/aXvuMynCVB/Ek8gw
	GK+0xL1cD9lKy53l0bv5OHZRCC8qWR26/vlf1XXW4P83FsM5kwVUn1z8dMLEdRWgG00CiT4WPEx
	Pl/7NA=
X-Received: by 2002:a05:620a:8085:b0:915:d443:e6db with SMTP id af79cd13be357-915d443e7bfmr894995285a.20.1780950012349;
        Mon, 08 Jun 2026 13:20:12 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0? ([2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9158a3c2492sm1985019985a.34.2026.06.08.13.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 13:20:11 -0700 (PDT)
Message-ID: <f8352762151d02c0ade63a087e48df9f8bb23ba9.camel@ndufresne.ca>
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal
 de-blocking edges y=4 and y=12
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Simon Wright <simon@symple.nz>, Detlev Casanova
	 <detlev.casanova@collabora.com>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Date: Mon, 08 Jun 2026 16:20:09 -0400
In-Reply-To: <66768711-6943-43f5-95fa-3d97dc638844@symple.nz>
References: <52a01f1f-5b36-429b-96cf-f1a0a1c8f5e4@symple.nz>
	 <5797ac61-dc61-4182-ac60-cc377564ff90@collabora.com>
	 <2565c949-a558-415f-8c79-e47812db8341@symple.nz>
	 <e3b93bda-fed8-4f21-b3d8-cdf28bfaba1c@collabora.com>
	 <4358f22d-247c-43d3-89d4-27b57bbe90aa@symple.nz>
	 <66768711-6943-43f5-95fa-3d97dc638844@symple.nz>
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
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_132014_680135_4B78BA48 
X-CRM114-Status: GOOD (  14.05  )
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
Content-Type: multipart/mixed; boundary="===============5851552140062988748=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5851552140062988748==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-MCkvM12u65+NW5/0jyeT"


--=-MCkvM12u65+NW5/0jyeT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Simon, Detlev,

Le lundi 08 juin 2026 =C3=A0 17:11 +1200, Simon Wright a =C3=A9crit=C2=A0:
> A reference implementation -- the DMA priming buffer plus the
> link-register kick sequence, ported from the BSP -- is in the repo I
> shared (the warmup code itself is in the sibling rkvdec-vdpu383-vp9 /
> -av1 repos, src/rkvdec-link.c):
>=20
> =C2=A0 https://github.com/SympleNZ/rkvdec-vdpu383-h264-bug
>=20
> I'm not sure of the right mainline form for a vendor-disassembly-
> derived priming sequence, so I've left it as a report + reference
> rather than a patch -- you're much better placed to decide how, or
> whether, it belongs in rkvdec. Happy to test any version on the RK3576
> boards here.

just a two cent proposal. We could save the resume state, and on the first =
frame
after resume, we'd prepend the workaround decode operation to the TBL. That
would be a bit cleaner, and would batch the workaround without having to
manually poll. The resume state is then cleared on the workaround decode IR=
Q
(IRQ needs to be enabled in the workaround). Its not a very impactful on
performance otherwise, but we know from past mpp workaround that they don't
always imply a HW bug, they often use workaround as hotfix for other issue =
they
haven't figure-out yet.

Nicolas

--=-MCkvM12u65+NW5/0jyeT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaicj+QAKCRDZQZRRKWBy
9M+QAQCTtPyD7lCtZf2HNB2JbSjgWXixyDS4aGR3BVaWoNddDAD9HQtb1MNy+GMU
kDveoq488iqQhuIlOoobfBc9GcLqJwc=
=105d
-----END PGP SIGNATURE-----

--=-MCkvM12u65+NW5/0jyeT--


--===============5851552140062988748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5851552140062988748==--

