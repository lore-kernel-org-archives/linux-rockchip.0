Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36510606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 03:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=usl0mfxP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=g8aBUN+B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8tWrnHFPbq7/mZStqcuX+TEIts324C9W6VHuN0Z6WWU=; b=usl0mfxPG7v2vWPfVcFHyWh5NJ
	p0eucvXseWPngiVFMU3pcCA/zzYifeBcUBVfiROBNfJ9h3mixOs3Ubo6mRbzosdhPc+B45NdPjr0m
	Tn8gftW7AlcBPHHUNmP/xpyyX6AdRbh+u/qrWU7GdV/BdEnqN7cq7pAyvISY/3Kq9Ph3S0vRQNVhI
	veEanOyayFDbobRWehFQoNys7ZOtfjGTHEReZEJ07x9BVZa19jRNE6DIR8ZpGJMqBPjfVCRlv3wfa
	2mG52X5xpB5oxG8uGy04y12gxdyqOGmx3uQz8xx1TbnfZbHW4Ic8/PXJDfyZmT0CH1/nEpzWEDB+X
	krjEqGkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVhFT-00000005RGJ-1G7b;
	Tue, 24 Nov 2026 03:31:15 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVhFF-00000005REh-3kZv;
	Tue, 24 Nov 2026 03:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795491057;
	bh=MXmoufWPYFfbg0i+dQ2JQfkHgdQBAEq1ck4w5GVrS1w=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=g8aBUN+BqSSSKgas34zbSjAaPlvO1DOSkb5RBYmhN2GiUoYiJ6MSQqsYmlV004Do9
	 ufJJelzxExcuaVBsJt9LI6rdv2DwlG6xCpV5pmIuTsBZ4JW52Q02m+MngLe1AMVU9v
	 mzDtJDNE9Fz8zIZc204+C8yCDCebvOMXipPJHQTbleWPHdE65TDKK7/g2I64VDzmlS
	 T2jl90Lnrj1cxLi+MjVRw5oCNHOUqrfxf/Lx53sxXl1l+475TJUh9TQeiPXPUlgFpc
	 bxJaz1UFU+J2RQnVoVvk7yYWUhYyLCOhd1FttKNJrGbvXZxLAH18F7Y8U/SPAMNkm7
	 DHThxfOw9steQ==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DD3EF17E0CD7;
	Tue, 24 Nov 2026 04:30:55 +0100 (CET)
Message-ID: <3dfe5ae59107fa77075676fc226ac818bc2700f9.camel@collabora.com>
Subject: Re: [PATCH v7 2/3] media: verisilicon: AV1: Fix luma size
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de,
 hverkuil@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Date: Mon, 23 Nov 2026 22:30:54 -0500
In-Reply-To: <20261120143135.71134-3-benjamin.gaignard@collabora.com>
References: <20261120143135.71134-1-benjamin.gaignard@collabora.com>
	 <20261120143135.71134-3-benjamin.gaignard@collabora.com>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
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
Organization: Collabora Canada
User-Agent: Evolution 3.62.1 (3.62.1-1.fc45) 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_193105_945099_E8017ABE 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3088637927528095832=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============3088637927528095832==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-UcH2Qzf5k/0Fqhh/w578"

--=-UcH2Qzf5k/0Fqhh/w578
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 20 novembre 2026 =C3=A0 15:31 +0100, Benjamin Gaignard a =C3=A9=
crit=C2=A0:
> Use the values computed by v4l2 helpers to get luma size.
> Unlile before this will also take care of padding.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Fixes: 727a400686a2c ("media: verisilicon: Add Rockchip AV1 decoder")

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_de=
c.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
> index 5da59104a966..5e0cd5268f22 100644
> --- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
> +++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
> @@ -221,7 +221,7 @@ static void rockchip_vpu981_av1_dec_clean_refs(struct=
 hantro_ctx *ctx)
> =20
>  static size_t rockchip_vpu981_av1_dec_luma_size(struct hantro_ctx *ctx)
>  {
> -=09return ctx->dst_fmt.width * ctx->dst_fmt.height * ctx->bit_depth / 8;
> +=09return ctx->ref_fmt.plane_fmt[0].bytesperline * ctx->ref_fmt.height;
>  }
> =20
>  static size_t rockchip_vpu981_av1_dec_chroma_size(struct hantro_ctx *ctx=
)

--=-UcH2Qzf5k/0Fqhh/w578
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawUE7gAKCRDZQZRRKWBy
9BAHAQD8fgjmNX5KD6ctzH1SuyeuStMfmVDc3EEZMVnX5nWbKAD6AtSq07MlurJ6
azwsqiLQeRsU+00eDSZ5RRKn8CSpTA8=
=2h/7
-----END PGP SIGNATURE-----

--=-UcH2Qzf5k/0Fqhh/w578--


--===============3088637927528095832==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3088637927528095832==--

