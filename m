Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED38606A324
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 03:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1VEZggrw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=knpsskBk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zXLkHsb41sQPJvpJt7R+CPmK0xn85LjEsckobFdmhV4=; b=1VEZggrwrkjgiFVDoOpUGbitDO
	o28xuq6ZcrsHsr/kkmiOG+l/LxzrBw6VqymGu+yFxjWv2tzM9WzxERRnHgj5MG5pwVKpSMhJ1SBfl
	b61RGJvgR5u3nfQVS5x9ssVxqxEpncNTFJ+nhz2EbUCa4LoA0ZpcuR6BwVS5dmp5FWtCX5/wTgHk4
	aX9AZMSBVJMxnVMzl++roJyirIZsF5sFUiu/6scyX7+IAPKraDxBGnmSVXMszUUTJSvOGMIensV5e
	fNU129pSutMW4w6EbfAF2pH+epv6o7xWFjULtQQa4cth1HMNfXezs2ZpLOQbSK0zx4wiCWzWYhLsx
	/pKxvUvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWmPh-0000000EqAr-0aq2;
	Fri, 27 Nov 2026 03:14:17 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWmPe-0000000EqA3-0bfO
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 03:14:15 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-94961bfe1a0so484623585a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 19:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795749253; x=1796354053; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5ugJPjuyaKFJxRku2cqxFQd5DwZah1E7qey/0WnvGBI=;
        b=knpsskBk64asn793J8lY7sNKtHYQ6M9Fs9hLh5X53z/kY8oEaNzav5rrbGNy+UyKGO
         JbyiLZjN1NxFebsrqwJXyg9efwKJJwnuSARI3qDsHicak/Ucc5QrrpP80e5d4UbwfM/F
         5R4SHgha1Sk0kBybe+JfpyolZIiDtkLzpR0HxSKSdtWbph0PK3LFoLdhLtrTS9K5KKyb
         448YPD3TqysPD98/t/BWb9b2ZW+toext6bTfvWf+Bv73N/SRbk8OQGy+NTyxRQS7F3Wb
         Rq66BJx3GnhwPYxxP7jbgapRvZKFUJdVROJhZX1JpPfxeVhFERAWcQl50NxkcXp6mHWt
         r91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795749253; x=1796354053;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5ugJPjuyaKFJxRku2cqxFQd5DwZah1E7qey/0WnvGBI=;
        b=f+IxOAfbW2RPh2/NuEe789G9oYbKcWv/55H2PRxcTRLm2xmkB85lYQFsN9bnD/9R3I
         FebZTAInTJfoAWDTa3h0GSv9tT+lo5pg1G9oy8fADH8aY2KWc2DbRQJmZ6itqscNg55i
         s+KiPmLCrZJBSfYD9HKQ14rP5EJru3S/LyIH4j2VslNBS/aN3dzi26abJ8npGI1bI7Cy
         4dnMdYR4+E6rWcaqFLI0zhW86XYAz698iE7oPOEvfS9nJXW5R1gIspMCIfxahqCQf98f
         bmXddxsIBY0dQtnS+pAq7rxxt7SuwiDJyf3AsWpd+wSskV2Vps35jqM79M8bjWMW96n1
         zb7A==
X-Forwarded-Encrypted: i=1; AL+hErFv8aSaGUoRQGj8YCnbKCO9Rssk0Q4hCfX5cGi+ePGvnYtxbmqFbb/92IGvcYT4lZYfytfl5NwDfmpie1Gmbw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/xEx0JZ8IRrdhh02T8+58T7W8/MRXa+WES1C7cDTJ2C8F/sx6w
	MADOkId+NZkJ4Y5PZsfRSI+MZzb7XvoAMt7fZXVgmELagxypMbd62SSzyi9b4BsbecQ=
X-Gm-Gg: AZFdTZfqhIc398k6umzLaghEObQDTLPL9RH4VO1jb+UNasu2xowNDmBSf+J5s5/rvNu
	3Mut+9ASaC0oMPyFpugbTw9ggcwP+U/tg2OKcq1K5D7tBRaGfqtbiw0DJFwxI+tmxvpwJvvWUnD
	f5/dWIAbip4d2qnqcSvzmMlXt7Ay2j6SolaBn08TJc8GNrG1X5lVLgu5C3wkvhCqkpB+ogvY7Md
	uAf9xrKo4DCnymQ4uFt9CINlOF3ONPBrMBHRK/SfsE637nPa1nhuTHvR36bjzqxF4wS+kLo+FWT
	htpAiP8dsslqq3JCN2WsEe3EM2MG+/DtVusmhBQ35plDBV1qhjSsbLmVNv78trrpnlpyl51nBZu
	oXdaJ8gYNfzAQ5xvq4VG13hpCKWwDTfVu/9o4/GCgQBFSmhw25vYxmi3Z2AnayDn1HeaujZQVNW
	/2RpGkuUmP8BM0CN5Z9LhQoxxvzvbuYkyiL8L6vlbOJKsiJji9rNMNrjIhHT0G6ppm+PayikruZ
	SjRCiRaut0wi8Ay9+XhQULjjcdP66amG86fM739o5c7rblDDixC2iTWMqxdouEguFy8ZgMqpnpg
	zETXaDEmIqN5IFDFQxXUaBCnAEtwNm9n2KPU0U+d11czAnwhRz3ay+0=
X-Received: by 2002:a05:620a:4446:b0:949:70f1:de2f with SMTP id af79cd13be357-949ba8260f2mr3894266285a.8.1795749252644;
        Thu, 26 Nov 2026 19:14:12 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::5ac? ([2606:6d00:11:8ec9::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-949bb0354a9sm1733363985a.5.2026.11.26.19.14.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 19:14:11 -0800 (PST)
Message-ID: <1f649c8c2c08c31f1f6ff7d7a17ea02301d89579.camel@ndufresne.ca>
Subject: Re: [PATCH v3 05/17] media: v4l2-ctrls: validate vp9 tile_rows_log2
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sofus Forstreuter <sofus.c@icloud.com>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, Neal Gompa	
 <neal@gompa.dev>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Heiko
 Stuebner	 <heiko@sntech.de>, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, 	linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Thu, 26 Nov 2026 22:14:10 -0500
In-Reply-To: <awanusdfmrjYpdHT@m3>
References: <20261020-avd-v3-0-85cbaa2125d8@icloud.com>
	 <20261020-avd-v3-5-85cbaa2125d8@icloud.com>
	 <4c54e652e8fb714600852a3028b892c6a292c6cd.camel@ndufresne.ca>
	 <awanusdfmrjYpdHT@m3>
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
X-CRM114-CacheID: sfid-20261126_191414_294486_DB443CE7 
X-CRM114-Status: GOOD (  17.27  )
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
Content-Type: multipart/mixed; boundary="===============4947206330752565238=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============4947206330752565238==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-KBWr4qryrDMK+mhbuy3u"

--=-KBWr4qryrDMK+mhbuy3u
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 25 novembre 2026 =C3=A0 10:17 +0100, Sofus Forstreuter a =C3=A9=
crit=C2=A0:
> On Tue, Nov 24, 2026 at 05:16:47PM -0500, Nicolas Dufresne wrote:
> > Le mardi 20 octobre 2026 =C3=A0 11:37 +0200, Sofus Forstreuter a =C3=A9=
crit=C2=A0:
> > > Reviewed-by: Neal Gompa <neal@gompa.dev>
> > > Signed-off-by: Sofus Forstreuter <sofus.c@icloud.com>
> > > ---
> > >  drivers/media/v4l2-core/v4l2-ctrls-core.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/medi=
a/v4l2-core/v4l2-ctrls-core.c
> > > index 922cf74c4eb8..384ff77771ea 100644
> > > --- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
> > > +++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> > > @@ -638,7 +638,7 @@ validate_vp9_frame(struct v4l2_ctrl_vp9_frame *fr=
ame)
> > >  =09 * According to the spec, tile_cols_log2 shall be less than or eq=
ual
> > >  =09 * to 6.
> > >  =09 */
> > > -=09if (frame->tile_cols_log2 > 6)
> > > +=09if (frame->tile_cols_log2 > 6 || frame->tile_rows_log2 > 2)
> >=20
> > Shouldn't this be 6 too? (log2(64)).
> >=20
>=20
> The max for tile_rows_log2 is derived from the spec (6.2.13 Tile info syn=
tax):
>=20
> tile_rows_log2 =3D f(1)
> if (tile_rows_log2 =3D=3D 1)
>   tile_rows_log2 +=3D f(1)
>=20
> This is also what eg. gstreamer does. I will add that to the commit messa=
ge.

Thanks, note that I was also confusing AV1, my fault for hopping codecs tha=
t are
similar but different.

Nicolas

--=-KBWr4qryrDMK+mhbuy3u
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawj1ggAKCRDZQZRRKWBy
9DsUAP9PRVkjRHpiRiSLgzM8l9UhjnS0sDzgmwo4BJV1vzvvAgD9FAmOhu7fqhJ0
E9UOn92W7ZLiKmduKFmpzDXkPI9rEQE=
=QqIL
-----END PGP SIGNATURE-----

--=-KBWr4qryrDMK+mhbuy3u--


--===============4947206330752565238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4947206330752565238==--

