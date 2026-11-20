Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955D1606A69C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 23:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PiFbNkf3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=lwIbnNya
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gBq6s03vJMAVQFdY2nXDbzglFjQ/ZpgTD8zTEfd0rtU=; b=PiFbNkf3CAAP+ie4+Lp8JXGSQc
	wiql9Nc4+idJUMRY0rJqYagvY8ht8/8SWoo5Z3oMgsMVqi5xPHCqHnAD8XLRdn63BRcBtz3R1NORt
	ct5puLuS3VbzZSF+vfz1MTeIol5gl6JdSg2OiuorK6uklg82ZgzxIjS5u+yVhmSOqCOwj5cqTRXGy
	6+ORyPbj9IBXYCPHMk/KxqCN1iWLR2B4M0Wk0x+CeO5tmdt8YbliFo+7rGT17x0b23/jfZhTFkfqU
	YejmEdaRLI1yjwMI+LRtcHsLDPFTIh4ksm0NJhCN7D+ETcC1Bb61eTr3ISFKDJcvHNfLQu8worNzQ
	DJMw6HTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUXff-0000000GNHA-3GJ2;
	Fri, 20 Nov 2026 23:05:31 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUXfZ-0000000GNGF-3meQ
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 23:05:27 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-55b8cd4e2abso16133101cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 15:05:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795215924; x=1795820724; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=eJ5BpJRw2McaWgy6GPAJWhZZHCtWtK9atUe2DqC0wZY=;
        b=lwIbnNyafnK5JoBLxIAEol0o1rSKEacYyM23h9fgndG0ujy0ZMFpTs9XkYg7Hej+qk
         UAtVa0KYVjui7sWZRl/8yoQTMQG6+1SEYHio9XZskmHmSnfn8nZeUc5/Tf44rKB0JYg+
         wytgFpmAhZZv0ECZdMB58WfffJ746TQ/AydBAQXDCco+pXw58F1GGvCQQZ4vwpK/q2gi
         ZEODFtCwSrtWgvUxtRpW473e10XC/wSo0gqR2rUdkaB+hZ7/9OR0RnAGUd/Kp70EgYgm
         luUjjGSc8vaEEpfRC2GwVBQzkT3IVvEMMbnu2QpWPlQfnxx1p52aWgvy9pbH+cQFTGd1
         uJ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795215924; x=1795820724;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eJ5BpJRw2McaWgy6GPAJWhZZHCtWtK9atUe2DqC0wZY=;
        b=Vt6E/zXOj1hNkIVblxoUqokvb3HTTKQm6lLD1a2Qrt+dVXu6ms2mBeEsQCVyWK7SPS
         4GveWHSNkorX7REyKCJnov1fDRymCchlswSQCSKfQIHQl8I7WbE5Mn2ECufkDuYINbto
         X3ZVnmNuwknDXpzIlG8rANU1+YvDX+rAcVJ13cEBO6dqFHZ8YPGRF6WBRMuCWihxHqTE
         B+LNZmIIZz23JHPmdG0u3hfxzBHHr5+YhT2q4ckb6jKay/TgBqZP+RN18U5tDjVkmU9u
         x2apaesS1ez3YFubW++YdN30e1y3kkfp7naRFLay96FEjASaN5x1KiMmwijot96lEI3k
         bkfA==
X-Forwarded-Encrypted: i=1; AL+hErFrRqULtUndOk3xBhGXKbNblMAY063qs9ThEJyxIEV2ErTgdhSnr/MwqzluYiqb3R9Quo8HaM+P03Gj2drCKg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/T/Ua1eg3w3rnjh2D5qK4tmWuRycANQKnw/P7MObyngS2mLwel
	aSS+R4OoCpH3np019HQ4xK5Q2qgko0kjmk41Ax/ApmZwdr00QXfkkEXiQPBY3ly4CA0=
X-Gm-Gg: AYBFou0hvVTFUZyW1/9uJKJk9VF1/Oa55u7nOx/EvYujbnEJKXmTO7jssQUxXYMuwBN
	OJGYfrO8ESU7ILZ1SoCbsZoAqc4oNyC8X+ZAmd6XT83BeJgyEoY6d6DcXqWcjl0qV96HUTjV/Cq
	NYm6YsB9Qi2hhNjLzkVCWR/ek7+vyC13rHd8puX/W13ZkzRWUfDmTGcd1Dwr+6e9Qt2DHzxtcGl
	vTuiAtXTtCtGGNJSBQeMXsnBpi6AXGRWZFh+dKGVlHZ9mv03wRLc0B04nX0llnuc28yDM03mZrf
	z4+KGZFBHJT0v/EKmeoDzbxhKxf2I2asd2u6PmNVlMscNW/70hpGEx2eTGosdWyomCFOvxwDSpt
	QeoRk9XZvjGbSuNUkTmaATKDyIXYt1LzADFy+ww71Eg+mUfK7UZaFczkf6yWMiaebNuaqLxmY/Q
	kSMVn4t+Ze4PQWBVMyIe2eEYrBkWwKswkQrb15XAUjcntq1+ngsVQyEWkphsyHQf4s3xAIQsr2a
	NxgeVeoFXZrrQAVFuBwptcumeUTR4XsHYCZDAcEoJTvVjzzioJD1g3XIVqjG+vg0hXPQw06SVNK
	0Wxd5Nx9njFuI+z0Ed+oTXtCp+6jyTk+++9nJU+uIG9xdi7mU6obroI=
X-Received: by 2002:ac8:5cc9:0:b0:55d:36cb:d2f6 with SMTP id d75a77b69052e-55d76994ab8mr78951971cf.8.1795215923589;
        Fri, 20 Nov 2026 15:05:23 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-55d7882bf70sm35229321cf.11.2026.11.20.15.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 15:05:22 -0800 (PST)
Message-ID: <c328eb172979255e0998fd126db313651a471d7a.camel@ndufresne.ca>
Subject: Re: [PATCH] media: rkvdec: Use dma_map_resource() to map RCB SRAM
 buffers
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Lukas Splavec <lukas.splavec@puresig.cz>, detlev.casanova@collabora.com,
 	ezequiel@vanguardiasur.com.ar, mchehab@kernel.org
Cc: heiko@sntech.de, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 20 Nov 2026 18:05:20 -0500
In-Reply-To: <20261114094916.28744-1-lukas.splavec@puresig.cz>
References: <20261114094916.28744-1-lukas.splavec@puresig.cz>
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
X-CRM114-CacheID: sfid-20261120_150526_020556_BE822942 
X-CRM114-Status: GOOD (  11.52  )
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
Content-Type: multipart/mixed; boundary="===============7403035127221281942=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============7403035127221281942==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-mVFMrjNK4prCvdK9IMd/"

--=-mVFMrjNK4prCvdK9IMd/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le samedi 14 novembre 2026 =C3=A0 09:49 +0000, Lukas Splavec a =C3=A9crit=
=C2=A0:
> rkvdec_allocate_rcb() uses the CPU virtual address of the SRAM buffer
> as the decoder's IOVA and writes it into the IOMMU page table directly
> with iommu_map(), bypassing the DMA API. Only the low 32 bits of that
> address are used, which falls inside the IOVA range managed by the
> allocator. The IOVA allocator does not know about this range and
> considers it free. Under load it hands out the same IOVA to another
> buffer, e.g. a capture buffer, whose mapping then fails:
>=20
>   [   66.930512] iova: 0x0000000082100000 already mapped to 0x00000000ff0=
01000 cannot remap to phys: 0x0000000168231000 prot: 0x3
>   [   66.930674] rkvdec fdc38100.video-codec: dma alloc of size 16588800 =
failed
>=20
> and decoding cannot start.
>=20
> Map the SRAM buffer with dma_map_resource() instead, so the IOVA is
> allocated by the IOVA allocator and the mapping is created by the DMA
> API, and release it with dma_unmap_resource(). Without an IOMMU,
> dma_map_resource() returns the physical address, so the separate
> no-IOMMU path is no longer needed.
>=20
> Fixes: e5640dbb991c ("media: rkvdec: Add RCB and SRAM support")
> Signed-off-by: Lukas Splavec <lukas.splavec@puresig.cz>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

--=-mVFMrjNK4prCvdK9IMd/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawDSMAAKCRDZQZRRKWBy
9PMfAPwOi/tB/Jf87fecrO+PluXuT7royZvxIrCNZmOHBSuEegEAlBEB69ZnNtbu
KA2zhN0q8/7t1JDmNdzQt64epCy1WgE=
=cLZV
-----END PGP SIGNATURE-----

--=-mVFMrjNK4prCvdK9IMd/--


--===============7403035127221281942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7403035127221281942==--

