Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96516E77361
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 15:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/MbargtG44pax3t6jzzZjSbW4BVa/ODL10h7U2P3L5o=; b=BdWL42+lIW6MmtYbZMX3Obq7Ac
	kVXWLZxgFIYTdu+baDjhiraS9eVUaeO4U3TjM7p3X7Dsp2d2Gi642ICq2ufzzb21sE8XCFNTl77jp
	lEJnm0DDYo0BWew39sIEn8W6Y/fQsBcjKB3LfrN4OOVK86SNS9qp86tH6mwBWcymezT5XSnGtHRTB
	OsLx7BdVf/rd92N9YQ4HdO0n7Ze2NmG4jAQls9WO4/bUEE3/UnjYmpa9aJihf13n325y3N6cL+opo
	AqgQ48oJqawFJk2XKADjna2d8rV/rrjqeoR+uY8+bM5JcUjmnEuPmYjizKBskIUHL1mmnQPkdqWVb
	g+qpNVVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYR8S-0000000H9h5-01TM;
	Wed, 24 Dec 2025 15:50:48 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYR8Q-0000000H9fv-0sG6
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 15:50:47 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4ee19b1fe5dso65794241cf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 07:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766591445; x=1767196245; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=QSdmNzll22GS36dUZyYftlYEWLa006on7/6Z+DJM0ag=;
        b=zQ3f85byWFbxl9Va1N3O0YNR26Pw56d0d4QXSLs/m5mXk/vBnTaPorvn19crIFwIL1
         6e048PaqM4zSkN1QyD7oFQbjlwlSb8wmM41m5rgNQBxsL+bBZptb7gsu3UGyU+MB09Ma
         0vRn9DhUVV7szzxXHMTdk5PmTBurQwoYineZI9GQzKV++1TScH8TkbXhwvKPIYLeHDj/
         hq5bFyCrdIS+qobi3Bq7PQuQSVvO2vyW3G3BOiIqgl9K4dgor1zoCMv/9cBlxWm/Wt5f
         jENUdf97dtdYIb+Y9/HMY6vchK1rVQ+gY9SGTWMYidR3ArIQaS0mn5FDG/eBRyxBasgm
         KbdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766591445; x=1767196245;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QSdmNzll22GS36dUZyYftlYEWLa006on7/6Z+DJM0ag=;
        b=TrNjd37l4n7neNFJ0K/TkQNcAKwa3/L1pXEyiwzboFV2Jpb51Zehx27lNfmFnSirqm
         KEzrqTd5QcRGOIMdHlfd5GmfphHcjd4xNfp+5GVtIH9XF77k9ZDLTEVOyxjJx/lTYORN
         b7P3dX1sjbeiq326vkU3HBBbApHZc5OJlZHsPU6+1R/UobQuDqug7uxH7j69zcj6p5oC
         2A9BjNVT923OS1icQ9plbFrQfFxGE+kp/nLBxGLw0sFrJ6sLE/ixIjxRB18q1HwUS+Vn
         CahF+DRMKScQM99+2chl6XdBTxyFd+RlFXmf3rbPUnjF5nDJCZ5ZSzRlW5cCL2irL3xI
         ir2A==
X-Forwarded-Encrypted: i=1; AJvYcCXj/9hLoy4bYCOx/rFkC7kuNpUmTd/cXkNC72qm97RlLL3sR2INNt2Zf+c0QoBirBczdGgM/PtambqTSSFBaQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXfLUI4XCazVrGhpQ4ROXbIGPRuQgVRUdyLot0uXqNh0g525AW
	ZSnZ6xDcQrLqtYHSRntFL+bPKAHlIBMTDZfzP9bOoTGgC+9U/o8np/0Og/APKLmEzws=
X-Gm-Gg: AY/fxX5G2sIc5vfD1O0LMUnvB51aS7lG1f/+J7tNFSm1CliF3CPOYyqJRZNigcFUrgA
	cWQg6IZyqdkIRH1sqFtWwdDdnyZMeLOSgvBFcKhqoX4GS+NbfnO0Y1TbufhZ3dZyB1yWfnDeMza
	bw2Q+wa7OU6dn0OnswFjzUhQ1N3F82YOjyiZ3h235DDPp8Kek+9Q5JDBO06HKBy0E3BNMPfYpKx
	jd5tBGBGKiEjhCsbuaV96p1eMDq9tqBjEi5lT6uOAi8ln+rNEvZbImP8n0aUIEtPUU1nX+2Fz3e
	hIbDZvdH7H/wKMuhm8a7e8ygwCwuPMgzR8Gn94QjYtCS2pjGW7Z46XS0R3CGQS8Fb49zB/fPiYL
	ezms6vw8oSKFdkKBEdvQZVTGAaT4Kg/jGry9Epd6OzA6QsMRus9ISu6oLWgM59skylVCF5VUiRX
	vEHl9IoO+EDk7fMu4p
X-Google-Smtp-Source: AGHT+IHFpvl7atlI/XfDElSp1cFHnazASDvVJwr4LLKxB3XCrMdiPROiP2O9X2LigLf12PzE9tOSRw==
X-Received: by 2002:a05:622a:4013:b0:4ee:4a8b:d9ed with SMTP id d75a77b69052e-4f4abda9f56mr233284001cf.58.1766591444898;
        Wed, 24 Dec 2025 07:50:44 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac62d53dsm127169351cf.19.2025.12.24.07.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:50:44 -0800 (PST)
Message-ID: <d09691bfde08f80e4cb47cc365d86bd53d0aaa7c.camel@ndufresne.ca>
Subject: Re: [PATCH v2 15/22] media: rockchip: rga: share the interrupt when
 an external iommu is used
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de, Michael Olbrich
	 <m.olbrich@pengutronix.de>
Date: Wed, 24 Dec 2025 10:50:42 -0500
In-Reply-To: <20251203-spu-rga3-v2-15-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-15-989a67947f71@pengutronix.de>
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
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_075046_269853_4ECBD27F 
X-CRM114-Status: GOOD (  15.39  )
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
Content-Type: multipart/mixed; boundary="===============7290285620958237219=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7290285620958237219==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-6E1pOz363AUSc4hyqasF"


--=-6E1pOz363AUSc4hyqasF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> From: Michael Olbrich <m.olbrich@pengutronix.de>
>=20
> The RGA3 and the corresponding iommu share the interrupt. So in that
> case, request a shared interrupt so that the iommu driver can request
> it as well.
>=20
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 3 ++-
> =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c
> b/drivers/media/platform/rockchip/rga/rga.c
> index f28ec88c186fa..1bfc4021f4a7b 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -718,7 +718,8 @@ static int rga_probe(struct platform_device *pdev)
> =C2=A0		goto err_put_clk;
> =C2=A0	}
> =C2=A0
> -	ret =3D devm_request_irq(rga->dev, irq, rga_isr, 0,
> +	ret =3D devm_request_irq(rga->dev, irq, rga_isr,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rga_has_internal_iommu(rga) ? 0 =
: IRQF_SHARED,
> =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_name(rga->dev), rga);
> =C2=A0	if (ret < 0) {
> =C2=A0		dev_err(rga->dev, "failed to request irq\n");

--=-6E1pOz363AUSc4hyqasF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwL0gAKCRDZQZRRKWBy
9LU3APkBQSKkig2rWR6l9nTBHBKlDlfrlSgOBpfmOmasl3/xlwD/f5YFD3P7hHgs
8Jh8k6G/iOd6tWyXItvEbDbD2Trhzgs=
=KLzg
-----END PGP SIGNATURE-----

--=-6E1pOz363AUSc4hyqasF--


--===============7290285620958237219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7290285620958237219==--

