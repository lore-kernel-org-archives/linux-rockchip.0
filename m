Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B0E5CD342F
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 May 2026 21:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AJv7BCgityPibPFqH6qsl4aJ/N+JMcaQehtNL8hCNSc=; b=fyOCU2JcAuo8BhDvhkWPPoXK34
	STBUbpx98jvKwxvn/O+wV1alVnSXa8ChTTnUvlQK4XLuYHiVwhSKnYCjFf2zaRbutGHBoSXWBxgu/
	doxGE+J8SvBuAY5kN5V81fTcUElwzj/wULxjrJLADwQ2mcBHI5XFKdGZxALGC4Fkl4vjbTdgOQvQ3
	qdnsx8iKUTxGlCzMOwWTednBJsu6SFgarQTN6d3XJ2EQUyYdyUBHMLhzjlgBjbT7ozUdv24RpR6+U
	IV3h1ql2aBP+OP3oIhaWzXgNu04TfP7Pp9Wc9lVT4E9Q8Yp8xtKmTagCJXU1QT4kbnZ9+LKTn9k6i
	RG1sNC2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSTo-00000007WNf-0T7b;
	Fri, 08 May 2026 21:11:28 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSTk-00000007WMZ-2MB1
	for linux-rockchip@lists.infradead.org;
	Fri, 08 May 2026 21:11:26 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-50e5b55062fso17904571cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 08 May 2026 14:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1778274683; x=1778879483; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=A/zTtdaa1YwQ9yyHYoxpW5OZucW0IdF0NOBd+0VGB5E=;
        b=keuO9/KkAfdBNIXm2RJdOFzrWkMlFR2cY2EuE4gtUCROoaIEykKz4WCPuSqBVd+i3t
         I2B0R4teEc8U+h0bShHvp3Rdtlm/rKxnlth0T/BUbCdALrrcLD2xgMvaSsCd3kgpMWHJ
         tXOrr9Mh0OTrNjeq/wVdbP4y/mqsC+6FgZ7vBcu3E69p300UHLWVmsTtlVkqXbxZRBqk
         7Rt7teTqFISUsLjHFjIvg3vEtTQYrcNERCk8/YhNO7CqWoDr2ta+U4vUMFD2X1l6K+zu
         wAFl8IRf1HEc/CAb0m2v5oG6YH1K2lmZU85cZUX0E5uHXnZUTHjhPHobUZ6lzDJdHveA
         W+/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778274683; x=1778879483;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A/zTtdaa1YwQ9yyHYoxpW5OZucW0IdF0NOBd+0VGB5E=;
        b=pdPCeHjaOKRaxY0973rccBw8l5d4qGhD01NdZDvVLlsxmf/cZtBztYd+0PPHpB/hqF
         0IBA8iSFkDUAAlj15fSqgrTwJzP/+hxju6ZJ7W+krx/mlennCKjtqKP2UslJswz4jby/
         XNymdruPIWGEqa1K5yOn4VtXOWJScW0v9UFouCHaTFCS2mzhFhhCugcyjca4ZLx0OwPi
         0LpbciiuyZ/yDwP0C32BJ6tbXIutqjgu3EUCdYjZRPkIoLdZz0chT1j8WmMqels00XXM
         SYWa45I2hUE98V4R5q5FIiHlHyPNT6fgFOufJbcAOigXIV97qTrO4aVqh+zrcrYtG8X0
         SL4Q==
X-Forwarded-Encrypted: i=1; AFNElJ/tPl8naUB29Bwls7yXJ1nlRWvyAYR8ZtQDtsd+LvIq0preP8Onl1s0AmbRy6YTZKtV1bcEntehU7OtXur2EA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzxGt/Ua6IbW+7zOKM7Z1cqmr4PNO/1ICrsJuU4rUhLmlT+laDB
	SVYxyw4TSLeUe66y+DJ3eiu9/zv4Uww/BUzut70BUgI/Y2XI5JANhSVSj4k1EhIJKN4=
X-Gm-Gg: AeBDiet/I0b5X35l5HCEseNjWBL7kSBePS9JowGRMiPWq7gI3JoQS4B2Tg9wmtC7kQi
	VeDSVsbLco/OObcM2xKSG+iagymWE5/ozjrf/AYoT7/OFxoQVNZReBVxzXpXhIHhrqzk9Jcyd7g
	vjuWld1z1/tEpN//OSJ9UBiszN6KFQt4mTAPPtdu1dihcX49t5xX7P1WflMcagodvYHNM5WhgxM
	sdAGC1vbiPotOo71Utvcz4lEq2Q3ERl4Is1/Q9pybUsOcswSrbafjR8alE4NUia+QXr5l/YXaqW
	lgIglUEaYfxdMZOBrTg1eenXx5MBy4tXiSMjeQc/0o96h4E4O5zVfeZ2QVS7cDxIjKb+f8vyt5v
	kkOYBANZI8bx7e1+aPauHMA+Cek2siGArWSUJeRRAx5BwtuSAbdjHBhNThN2H52EwxLrPd8vTgE
	r4s/bnzYaju9sUrKMk4GoqymqCmiyx
X-Received: by 2002:ac8:5fc1:0:b0:50e:6135:f27d with SMTP id d75a77b69052e-514a0baf33dmr1645561cf.53.1778274683142;
        Fri, 08 May 2026 14:11:23 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b::c41? ([2606:6d00:15:e06b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b53c7accddsm244356866d6.36.2026.05.08.14.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 14:11:21 -0700 (PDT)
Message-ID: <7cf0950e51e4917a0b4d565f71b1e8f2a41e4bbe.camel@ndufresne.ca>
Subject: Re: [PATCH v5 06/29] media: rockchip: rga: fix too small buffer size
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de, 
	sebastian.reichel@collabora.com
Date: Fri, 08 May 2026 17:11:20 -0400
In-Reply-To: <20260428-spu-rga3-v5-6-eb7f5d019d86@pengutronix.de>
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
	 <20260428-spu-rga3-v5-6-eb7f5d019d86@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260508_141124_616886_576DA965 
X-CRM114-Status: GOOD (  17.58  )
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
Content-Type: multipart/mixed; boundary="===============7480600464134280985=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7480600464134280985==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-yGQaQDvjZPV8X9fpmFdy"


--=-yGQaQDvjZPV8X9fpmFdy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 28 avril 2026 =C3=A0 11:00 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Fix the command buffer size being only a quarter of the actual size.
> The RGA_CMDBUF_SIZE macro was potentially intended to specify the length
> of the cmdbuf u32 array pointer. But as it's used to specify the size of
> the allocation, which is counted in bytes. Therefore adjust the macro
> size to bytes as it better matches the variable name and adjust it's
> users accordingly.
>=20
> As the command buffer is relatively small, it probably didn't caused
> an issue due to being smaller than a single page.
>=20
> Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne  <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c | 2 +-
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.h | 2 +-
> =C2=A02 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 43ed742a16492..d1618bb247501 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -414,7 +414,7 @@ static void rga_cmd_set(struct rga_ctx *ctx,
> =C2=A0{
> =C2=A0	struct rockchip_rga *rga =3D ctx->rga;
> =C2=A0
> -	memset(rga->cmdbuf_virt, 0, RGA_CMDBUF_SIZE * 4);
> +	memset(rga->cmdbuf_virt, 0, RGA_CMDBUF_SIZE);

So we had a buffer overrun ?

Nicolas

> =C2=A0
> =C2=A0	rga_cmd_set_src_addr(ctx, src->dma_desc_pa);
> =C2=A0	/*
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.h b/drivers/media=
/platform/rockchip/rga/rga-hw.h
> index cc6bd7f5b0300..2b8537a5fd0d7 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.h
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.h
> @@ -6,7 +6,7 @@
> =C2=A0#ifndef __RGA_HW_H__
> =C2=A0#define __RGA_HW_H__
> =C2=A0
> -#define RGA_CMDBUF_SIZE 0x20
> +#define RGA_CMDBUF_SIZE 0x80
> =C2=A0
> =C2=A0/* Hardware limits */
> =C2=A0#define MAX_WIDTH 8192

--=-yGQaQDvjZPV8X9fpmFdy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaf5ReAAKCRDZQZRRKWBy
9JNcAQCO//sirngbNKm+JSYllfp2YXA0CvUHAWHjIfrCnXDPMgD9EZuVo9p0mPM8
jnoazaTvgdmsrGiaruiL+n7sgxk6owk=
=T4/x
-----END PGP SIGNATURE-----

--=-yGQaQDvjZPV8X9fpmFdy--


--===============7480600464134280985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7480600464134280985==--

