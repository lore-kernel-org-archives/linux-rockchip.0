Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 664DDD1D478
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 19:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+4iWn9mD9M8J5HiUNp5DIAjtqUgFSPtTeRVIjVsaF2w=; b=hze1M/OVPX3tXqqx2gWXs0TSxG
	RtvwRBllYYw1vygKgiLXuk6UhnzbN08GOzTJaAgdAX3h6YIU4AsMfMnkC5PYUZbrTa8wT+AY0+IxL
	l9z8I7LkmWCeQqmrTGfdBN4VGLt+ryrR+lDizOQMveDddXdRcdP6GITdhWlvBac+w61CTqlzx+Gf3
	PWH/NK1mUZadFIPN1i+yoar+GE+k4I/RM/roXF+lyBRWjGktug3M3xGGbaU9GXiS6B1gniq6s+QNC
	yXVwxo3WycJ8peH+WgywnVcI5ft40AbzqTmXno+SXIXjVhjlpbtRBs6er1XeiumgWL7/kQ9o7vZCx
	FCvKwTdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdvus-00000000m1Z-25me;
	Thu, 08 Jan 2026 19:43:30 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdvup-00000000m16-0Uyc;
	Thu, 08 Jan 2026 19:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767901403;
	bh=PARMCHULN39OqJTkCrAKqCeTaF3GhUp7Z51iV+p+ep0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=E0aQTZ/+FajpyaTH1Lx7woECPN7VD8iDKQxuKjCbthrqZTTNF8piFMdeYGBA2eNY2
	 nwBJAWu6sCWdxvY63LB/0wIqaeFwqyug6IPEsNmdgGjPe4bvTv7h3E72jUjOcuCuEu
	 O0tfOA0Mdrir/NOxx/4LnQVXN3G7S45ewmJJx+xMnpg/yHwC0kBpesd3QP/MijLyuq
	 0kI+jt31FgYHvsWrgUSwLLBpelwqLKth2lj3AIsOXhbI2jAi7Kd7cxah0BZ9I8AVAj
	 cIvghqoF6KiFXgA7MEW7WG/Rj+wtinrujRONbOv+pnNpbBEJjiB1bhe3Oa4P/o4xCK
	 H1a4yau0ZmicQ==
Received: from [192.168.42.140] (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3DF4917E0023;
	Thu,  8 Jan 2026 20:43:22 +0100 (CET)
Message-ID: <dead1a4383691de7458e629de8808d2518e7415a.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: AV1: Set IDR flag for intra_only
 frame type
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, Jianfeng Liu <liujianfeng1994@gmail.com>
Date: Thu, 08 Jan 2026 14:43:17 -0500
In-Reply-To: <20260108132946.74853-1-benjamin.gaignard@collabora.com>
References: <20260108132946.74853-1-benjamin.gaignard@collabora.com>
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
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_114327_339912_B87B6C70 
X-CRM114-Status: GOOD (  12.32  )
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
Content-Type: multipart/mixed; boundary="===============4459109220026547953=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4459109220026547953==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-/7N/TlSYMxJmoXRb6zgA"


--=-/7N/TlSYMxJmoXRb6zgA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 08 janvier 2026 =C3=A0 14:29 +0100, Benjamin Gaignard a =C3=A9crit=
=C2=A0:
> Intra_only frame could be considered as a key frame so Instantaneous
> Decoding Refresh (IDR) flag must be set of the both case and not only
> for key frames.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reported-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> Fixes: 727a400686a2c ("media: verisilicon: Add Rockchip AV1 decoder")

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c | 2=
 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_de=
c.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
> index 1605cfd55d36..3a8123bbe144 100644
> --- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
> +++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
> @@ -2047,7 +2047,7 @@ static void rockchip_vpu981_av1_dec_set_parameters(=
struct hantro_ctx *ctx)
> =C2=A0			 !!(ctrls->frame->quantization.flags
> =C2=A0			=C2=A0=C2=A0=C2=A0 & V4L2_AV1_QUANTIZATION_FLAG_DELTA_Q_PRESENT)=
);
> =C2=A0
> -	hantro_reg_write(vpu, &av1_idr_pic_e, !ctrls->frame->frame_type);
> +	hantro_reg_write(vpu, &av1_idr_pic_e, IS_INTRA(ctrls->frame->frame_type=
));
> =C2=A0	hantro_reg_write(vpu, &av1_quant_base_qindex, ctrls->frame->quanti=
zation.base_q_idx);
> =C2=A0	hantro_reg_write(vpu, &av1_bit_depth_y_minus8, ctx->bit_depth - 8)=
;
> =C2=A0	hantro_reg_write(vpu, &av1_bit_depth_c_minus8, ctx->bit_depth - 8)=
;

--=-/7N/TlSYMxJmoXRb6zgA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaWAI1gAKCRDZQZRRKWBy
9AaUAQDuIVVUilNFK7PyWBn48YCLBtitf9JFegmpMlAJewrHSQEA+ZlN2CHePiXx
37D0/89e+JMVXMhs5T4nPsfIemfrYQQ=
=t8Mi
-----END PGP SIGNATURE-----

--=-/7N/TlSYMxJmoXRb6zgA--


--===============4459109220026547953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4459109220026547953==--

