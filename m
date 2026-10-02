Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17F16CA5FDD
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2026 19:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OMxnxGPELv82BrjyN1gUVExbHVa8WtdlrxHG/BFFf0M=; b=aH4FSMhkZ2Q1WL+Zb980u5FLCU
	vGF9TPgoGEaVA1PIfMsFYovUjTQFB/gGcbvnkqMMBx6cP0+zxOhRlu16HAHNXWrU8PuNpCL6lD0ZW
	0u7yI7Fh5EZjv6RGibrujalB00gBRbmqj5QRWSVsDZcSK3hiWuSqygukUaxNdjRAGJXhI+cObTY7I
	+ab2V6Qe5Uh3ILGfhiLHnzXnzHDKzXKyqciRoQBJ5ZPll7+IYQEh6kFxQlMMevlI1nRimXuLidPpJ
	NsOJbn2Zl/2O2ByNcvQxyvbiwTS/VBGQq6I3GVZL0kYFiUYJZf/GRKmORtqE3x9wv9A7Wjgxye79A
	Pg/rQu0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCjMr-0000000CRap-1LbE;
	Fri, 02 Oct 2026 19:56:29 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCjMo-0000000CRZj-2MDL
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Oct 2026 19:56:27 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-917bab38b14so1291156d6.3
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Oct 2026 12:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1790970985; x=1791575785; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=NJl6vN2DYWl5SvECY/MNPFkAoXMpLzutrBdwcjZxYRo=;
        b=w9tBRVAy0FuRGTIdaPkuqDgiTcORaxrjbuBzgnahYpYoUbuxc1+f2nPOlM5zClYqvr
         Czf+lCtTih7PNMCPd3aBbxgszPwL6eChHxEQwSO6MhvhJuod7CXVBZq27cLBFbc7aEKN
         5SSniCbCkd/Xw78DYQyOguGfpsf/4HUwOeV8V+hk1j5bs4a6hxNSODFP38xa1vnuQ84G
         pHwgbOadaM4BVOh4UM0J7ODDtpY9mz9hvjTBh2M15HH6xdANysY63a6zjS+RNeVBEMWa
         Ivp42TCw3SV5B2ksTdC6Wi3PtMW+M1ka4I9FhCBr68PDk65UE88UNLxg2ronfQ2Ymcyy
         PF8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790970985; x=1791575785;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NJl6vN2DYWl5SvECY/MNPFkAoXMpLzutrBdwcjZxYRo=;
        b=D9HhgPgl5t8OULv5myhLtgp0sg1FMhVLSSwoaE1ngUh2F0gqdw5VXjNxNmXLCCQyYA
         RB3h2mt5m5j1Q8Be7LrvgROQ5+8OEkMqI738jmnoyamOzKtNYVzHJ3zifd1Hr271nRp0
         5cPvQ+SanumtV6AsV/Y2yPJeBHqZCVo+MKdsUulpjOf1lMt9/z7/q9VThQO5/ZTv0DiX
         LqCOzEMcVpgnrlcBJhGUuEODDyIluVZA4lHRBnJvXkmuQtlHp4Q4iwxwboZV49CNklRg
         JO2mXddTdfyyC0FT/HmkkD7mokj+u//2Mrpx+RY58JnQ07uG5cwYMiaaPlNqWOIKMaxY
         uFsw==
X-Forwarded-Encrypted: i=1; AKwUvBymhxbjIv97YfGvgpTJ3f7p4sm9qkfOvJCmJ+iGmEW42Acjf2qRt4eZ6BRC1WcIobJRDfrZAw4qozpUXuYNAg==@lists.infradead.org
X-Gm-Message-State: AFuF++mi7HWFCH561c2RKoMQcGceffqVqHeJGAB21RPXV4yCJy9oTBP/
	3TuEIoCvO4fa84UFwfbdJVHqntAuRZd/CM6DX/zmgF7I058eV3UY09SciJ4zXqTc/XA=
X-Gm-Gg: AYBFou0zH23pFy5UNNMoYyAB74SE7ld5TZvCR145vWx9+Gs84ALedWrshoD9I/7hfla
	ZuT2n9mIhdkQZsuWYuBJlTtGPEjBDx8vBiMCspUgp8W3pgoKmA3mXl/LTwJc/bdLUfyVvN4+Ily
	CjuBVNUgPzwsbq3dty6Fhu32iu3db1Ytf8jnpiX+wJuejBw3ZrTbOLQW4mathEha2ThS9+e8wDE
	xjJ9zSIL33d5U1lBwBSQ/KAIwaXgxMBdbEnr810tVpMebU0jag6ncsVVBRfb+kXXiY4CXnWTi3y
	6X1+jizid4yh8fzAocU1KV5jl7P5679wFiZeft9O0ahFvInoRpjhTCT48S7/K3ZLHU4d4HFCqah
	uS1FdPFnM8NgLtkdtALoNv4tBvoO0LXASNThA1kyu/c03+AZy2rO2cjGQVl4ED+57Xh0U254hRj
	zejx7Eho3rOvurUGdqofzHZWF3QjgIYzRdkl9mZJ9xBfPdXpvkU/M3WueBu93jY/mizWMgWU8G5
	p8wIOLOyNn5fA==
X-Received: by 2002:a05:620a:6413:b0:93c:b766:2bfc with SMTP id af79cd13be357-93e50fa6a3dmr87378085a.17.1790970985078;
        Fri, 02 Oct 2026 12:56:25 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:34bd::5ac? ([2606:6d00:11:34bd::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-917e0c17b8esm27137276d6.43.2026.10.02.12.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2026 12:56:24 -0700 (PDT)
Message-ID: <a153b350bdfd614b4da5a15da29079eec7fc4dd4.camel@ndufresne.ca>
Subject: Re: [PATCH 2/3] media: rockchip: rga: Switch to modern PM_OPS
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Diederik de Haas <diederik@cknow-tech.com>, Dafna Hirschfeld	
 <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
  Mauro Carvalho Chehab	 <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Detlev Casanova	 <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,  Jacob Chen
 <jacob-chen@iotwrt.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Fri, 02 Oct 2026 15:56:23 -0400
In-Reply-To: <20261001173610.158931-3-diederik@cknow-tech.com>
References: <20261001173610.158931-1-diederik@cknow-tech.com>
	 <20261001173610.158931-3-diederik@cknow-tech.com>
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
X-CRM114-CacheID: sfid-20261002_125626_920949_23995E18 
X-CRM114-Status: GOOD (  20.54  )
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
Content-Type: multipart/mixed; boundary="===============6536556245748042285=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6536556245748042285==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-1Mpu87nLgk5Us+/k4nVo"


--=-1Mpu87nLgk5Us+/k4nVo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 01 octobre 2026 =C3=A0 19:34 +0200, Diederik de Haas a =C3=A9crit=
=C2=A0:
> A new set of modern PM_OPS macros got defined in commit
> 1a3c7bb08826 ("PM: core: Add new *_PM_OPS macros, deprecate old ones")
>=20
> Switch to those new macros so that the PM callbacks are always seen by th=
e
> compiler, but discarded if not used. This lets us drop the __maybe_unused
> annotation from the callback functions.
>=20
> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/platform/rockchip/rga/rga.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index b3cb6bf8eb86..f28c93d63760 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -883,7 +883,7 @@ static void rga_remove(struct platform_device *pdev)
>  	pm_runtime_disable(rga->dev);
>  }
> =20
> -static int __maybe_unused rga_runtime_suspend(struct device *dev)
> +static int rga_runtime_suspend(struct device *dev)
>  {
>  	struct rockchip_rga *rga =3D dev_get_drvdata(dev);
> =20
> @@ -892,7 +892,7 @@ static int __maybe_unused rga_runtime_suspend(struct =
device *dev)
>  	return 0;
>  }
> =20
> -static int __maybe_unused rga_runtime_resume(struct device *dev)
> +static int rga_runtime_resume(struct device *dev)
>  {
>  	struct rockchip_rga *rga =3D dev_get_drvdata(dev);
> =20
> @@ -900,8 +900,7 @@ static int __maybe_unused rga_runtime_resume(struct d=
evice *dev)
>  }
> =20
>  static const struct dev_pm_ops rga_pm =3D {
> -	SET_RUNTIME_PM_OPS(rga_runtime_suspend,
> -			   rga_runtime_resume, NULL)
> +	RUNTIME_PM_OPS(rga_runtime_suspend, rga_runtime_resume, NULL)
>  };
> =20
>  static const struct of_device_id rockchip_rga_match[] =3D {
> @@ -927,7 +926,7 @@ static struct platform_driver rga_pdrv =3D {
>  	.remove =3D rga_remove,
>  	.driver =3D {
>  		.name =3D RGA_NAME,
> -		.pm =3D &rga_pm,
> +		.pm =3D pm_ptr(&rga_pm),
>  		.of_match_table =3D rockchip_rga_match,
>  	},
>  };

--=-1Mpu87nLgk5Us+/k4nVo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCasAMZwAKCRDZQZRRKWBy
9Nm3AP4y8JqQZKv9U0OttedqiWp5M0Ofbzvm9AyImGL7/X3BggEA6Av0uZd+Ipgu
Sn0DcrUr/Ux6st7B3vMRPFDOud8b9gM=
=w8WG
-----END PGP SIGNATURE-----

--=-1Mpu87nLgk5Us+/k4nVo--


--===============6536556245748042285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6536556245748042285==--

