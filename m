Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA24606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 21:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D/QR9a+8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=uSVOfbd8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2mBb49aaA0Slw2cVo14ldoCB6vdoKG369hA9fJOhQeA=; b=D/QR9a+8T3kkQDlVBl58DR//Tx
	vqcfN7ZWni7YA6BMkaTVEakTJ174fsd42gl95jUvaW8jMP0m5Usr5H63ZmoeExDzysSiKx7+ugnOV
	0OLk3Od2tUoLwR7VfgTafAxIUdincdr2E/eXb6YMpmILR7i6l2nsZnQADtLnvhoWufVidSzlYZf4R
	9UAff+PZRClUyo+/ns1nOrKW8JCJKjDZ3QmouEVZoLzWwHYItX9TxXEM86G4sAzW5Uyz9SuQnaqaK
	aPlxy7OtB6B7fUidxoF8JMX08r44hlD7QNg/PvxFfts9rKnIyKcn8Oki0uX/adl3h+tGvExbdPFa3
	3tjVxIMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyWn-00000007x3F-0lXV;
	Tue, 24 Nov 2026 21:58:17 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyWj-00000007x29-2mEr
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 21:58:15 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-55c38cdd5b7so30997991cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 13:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795557492; x=1796162292; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=aa7YPfOROhEx6JieLJ3TSEkUZ7Fh13WAPekCnuIIbKA=;
        b=uSVOfbd8fEMBBKkS+6ZWxL5BoR3TIKSGBZjMo3Wr+PLbWhGjlxNtQ2Eqk2D/jGA0RX
         jCuPLpaKX4wqtJiBd9+ouPF+0XAXI1p8CyXfCxVyLyaRWNoOd2t8eO8BZjk/9Rte5cAS
         BO88L0/3zW/LEeh3aAvxHpfjYi/IidYcjGnuIMWSGdXgduAsK2M+0tj7PLPu/wtlNjQY
         RPoh7ss4BT7fmGyOravTRdDKyeeSQsONi53iqp+twFnIFC6DaoHHjEwydHbgEolmBBtf
         1li/Z2PhxRcNCb95SD6iJsP7XyULasF6m7cGoTRzZGJ/FFErwh3aRxv/YNd/9liUMq6L
         bjXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795557492; x=1796162292;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aa7YPfOROhEx6JieLJ3TSEkUZ7Fh13WAPekCnuIIbKA=;
        b=If5MmtWVa+Wzd+PwshgmWD6/AMhDmrf5y5LkHWrxmSxS91px/j4XfqlRWuf+Ga7e9/
         6B8VXZHeM8xwIwfqavl16hF5gQHsbJsqQNSp7cSypSiu9zUjao+bG0khp36unJ/tjGYr
         zbq5ipiVONjhfWOKkCmepShQ6NUwalDEIMGJ7JVs+zqogmlN8wyGt/iqdVOWoJ/eHSTH
         cuGsbtZOGElOxQswPkaMMHk2qIKWzkmwyPOmS+VsUg/jJtMnOoe667rlPCQHDXd9Md3k
         gyUFVJcAEfqWtfibAWyiHievBY/Nz9D26XT2pg+wFTIO6IXY7n7e12U178nBGllfMKj3
         OpHw==
X-Forwarded-Encrypted: i=1; AL+hErGXPqH6MugFldC/hbppNhkYuCffjZoa8Gc/708bn6XQvgYEJKg8of8+ORLUQAa9ln2BA7uM8lY7g10SIJyQjg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+v6wn3ghh/MpIbQRjqLpaudFlmseHPaQVv7Z8wZdsdRMTcYaA/
	wXW/BcxtJldSKB0EC5//wTnM8sGczRNZZi0Nv3CIAFIxebcApiPYHULTzWHUnVHnjHs=
X-Gm-Gg: AZFdTZen/TbKta7jMJz3v9NYzdtPJ117OYTyqCI/FynOdmpavA/Py64VBdTILYk698t
	Hqa0ZqG+H0MIZtpj+cTfkWqzA+bB6lhC5JoNQPBjtvISXnIxWOmvddKsDxZpAIj31E8KQ7na8qB
	nx6a1s7Ex24P2bOe0J5Z2Asc39abaSr/2n4vfFqqpJEExLWcF9l6nOjRc93x1Yf5VHnzjqmTUIo
	TI6rIyZQPzPXTlmFOtQ6a7ZK0SZV4iqFhBtG9wXzlVvQX011mhHLLWY0bbf8nba8kBd69xqbmky
	PmBp9k3xwb0OdNqWi4lFEzkpNeyLU9wXgV05FtgNhWHlUnyOId5s6/fLt308yXEZ5aDh9/12Aw2
	zmBJnBqTR6jm1VmMtGrHOAjPd9GTDX7vFMXCwf1paN+FrOvfBrdm/Cmhf4nqjZx5SLNT83JScsE
	y7/hFcB1lMaEGge0QB8UV9Qnc2gKYGoUvr3iOYXj19QTp2TJpJx7+INCvyQhoItGWMDkiVmBpq8
	+fVtI9PRVRkYPsrGmQgT8sSfzm+52fqWR0yA1oNQqlINdjXcteXb49w/nFCj2IP6zWebJevKO1T
	mhaI8pKYJy1uv1egBkHPReN165qIK7jtNzV9eoEy9XbXhqvaK4I0duYcFzAmWzgfqBK9Y4+HHm8
	s
X-Received: by 2002:ac8:5e53:0:b0:536:699d:9a22 with SMTP id d75a77b69052e-55d76aa8754mr292073611cf.57.1795557492035;
        Tue, 24 Nov 2026 13:58:12 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-921349f2186sm148298976d6.29.2026.11.24.13.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 13:58:11 -0800 (PST)
Message-ID: <79df445f3906ef7147137d991e0fd14f7815d22c.camel@ndufresne.ca>
Subject: Re: [PATCH v3 03/17] media: v4l2: Add Apple interchange pixel
 formats
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sofus Forstreuter <sofus.c@icloud.com>, Sven Peter <sven@kernel.org>, 
 Janne Grunau
	 <j@jannau.net>, Neal Gompa <neal@gompa.dev>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Tue, 24 Nov 2026 16:58:10 -0500
In-Reply-To: <20261020-avd-v3-3-85cbaa2125d8@icloud.com>
References: <20261020-avd-v3-0-85cbaa2125d8@icloud.com>
	 <20261020-avd-v3-3-85cbaa2125d8@icloud.com>
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
X-CRM114-CacheID: sfid-20261124_135813_735867_606CDA1F 
X-CRM114-Status: GOOD (  14.86  )
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
Content-Type: multipart/mixed; boundary="===============7632723237381947131=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============7632723237381947131==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-0opacj9JZF7JzicRk9mL"

--=-0opacj9JZF7JzicRk9mL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 20 octobre 2026 =C3=A0 11:37 +0200, Sofus Forstreuter a =C3=A9crit=
=C2=A0:
> Apple Interchange is a compressed and tiled format modifier.
>=20
> Its intended use is for sharing buffers between hardware blocks (GPU,
> display controller, video codecs) on Apple platforms.
>=20
> Add it to the v4l2_format_info table to help with calculating sizes.
>=20
> Reviewed-by: Neal Gompa <neal@gompa.dev>
> Signed-off-by: Sofus Forstreuter <sofus.c@icloud.com>
> ---
>  drivers/media/v4l2-core/v4l2-common.c | 7 +++++++
>  drivers/media/v4l2-core/v4l2-ioctl.c  | 6 ++++++
>  include/uapi/linux/videodev2.h        | 8 ++++++++
>  3 files changed, 21 insertions(+)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-c=
ore/v4l2-common.c
> index 43ef12d073a3..896c07d93032 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -336,6 +336,13 @@ const struct v4l2_format_info *v4l2_format_info(u32 =
format)
>  =09=09{ .format =3D V4L2_PIX_FMT_GREY,    .pixel_enc =3D V4L2_PIXEL_ENC_=
YUV, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 1, 0, 0, 0 }, .bpp_d=
iv =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
>  =09=09{ .format =3D V4L2_PIX_FMT_Y12,     .pixel_enc =3D V4L2_PIXEL_ENC_=
YUV, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_d=
iv =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =20
> +=09=09{ .format =3D V4L2_PIX_FMT_APPLE_AX12, .pixel_enc =3D V4L2_PIXEL_E=
NC_YUV, .mem_planes =3D 1, .comp_planes =3D 2, .bpp =3D { 1, 2, 0, 0 }, .bp=
p_div =3D { 1, 1, 1, 1 }, .hdiv =3D 2, .vdiv =3D 2 },
> +=09=09{ .format =3D V4L2_PIX_FMT_APPLE_AX16, .pixel_enc =3D V4L2_PIXEL_E=
NC_YUV, .mem_planes =3D 1, .comp_planes =3D 2, .bpp =3D { 1, 2, 0, 0 }, .bp=
p_div =3D { 1, 1, 1, 1 }, .hdiv =3D 2, .vdiv =3D 1 },
> +=09=09{ .format =3D V4L2_PIX_FMT_APPLE_AX24, .pixel_enc =3D V4L2_PIXEL_E=
NC_YUV, .mem_planes =3D 1, .comp_planes =3D 2, .bpp =3D { 1, 2, 0, 0 }, .bp=
p_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +=09=09{ .format =3D V4L2_PIX_FMT_APPLE_AX03, .pixel_enc =3D V4L2_PIXEL_E=
NC_YUV, .mem_planes =3D 1, .comp_planes =3D 2, .bpp =3D { 5, 10, 0, 0 }, .b=
pp_div =3D { 4, 4, 1, 1 }, .hdiv =3D 2, .vdiv =3D 2 },
> +=09=09{ .format =3D V4L2_PIX_FMT_APPLE_AX23, .pixel_enc =3D V4L2_PIXEL_E=
NC_YUV, .mem_planes =3D 1, .comp_planes =3D 2, .bpp =3D { 5, 10, 0, 0 }, .b=
pp_div =3D { 4, 4, 1, 1 }, .hdiv =3D 2, .vdiv =3D 1 },
> +=09=09{ .format =3D V4L2_PIX_FMT_APPLE_AX43, .pixel_enc =3D V4L2_PIXEL_E=
NC_YUV, .mem_planes =3D 1, .comp_planes =3D 2, .bpp =3D { 5, 10, 0, 0 }, .b=
pp_div =3D { 4, 4, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +
>  =09=09/* Tiled YUV formats */
>  =09=09{ .format =3D V4L2_PIX_FMT_NV12_4L4, .pixel_enc =3D V4L2_PIXEL_ENC=
_YUV, .mem_planes =3D 1, .comp_planes =3D 2, .bpp =3D { 1, 2, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 2, .vdiv =3D 2 },
>  =09=09{ .format =3D V4L2_PIX_FMT_NV15_4L4, .pixel_enc =3D V4L2_PIXEL_ENC=
_YUV, .mem_planes =3D 1, .comp_planes =3D 2, .bpp =3D { 5, 10, 0, 0 }, .bpp=
_div =3D { 4, 4, 1, 1 }, .hdiv =3D 2, .vdiv =3D 2,
> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-co=
re/v4l2-ioctl.c
> index 1f2519ffeb2b..e40e2ebac241 100644
> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> @@ -1561,6 +1561,12 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *=
fmt)
>  =09=09case V4L2_PIX_FMT_PISP_COMP2_GBRG: descr =3D "PiSP 8b GBGB/RGRG mo=
de2 compr"; break;
>  =09=09case V4L2_PIX_FMT_PISP_COMP2_BGGR: descr =3D "PiSP 8b BGBG/GRGR mo=
de2 compr"; break;
>  =09=09case V4L2_PIX_FMT_PISP_COMP2_MONO: descr =3D "PiSP 8b monochrome m=
ode2 compr"; break;
> +=09=09case V4L2_PIX_FMT_APPLE_AX12:=09descr =3D "Apple Interchange NV12"=
; break;
> +=09=09case V4L2_PIX_FMT_APPLE_AX16:=09descr =3D "Apple Interchange NV16"=
; break;
> +=09=09case V4L2_PIX_FMT_APPLE_AX24:=09descr =3D "Apple Interchange NV24"=
; break;
> +=09=09case V4L2_PIX_FMT_APPLE_AX03:=09descr =3D "Apple Interchange P030"=
; break;
> +=09=09case V4L2_PIX_FMT_APPLE_AX23:=09descr =3D "Apple Interchange P230"=
; break;
> +=09=09case V4L2_PIX_FMT_APPLE_AX43:=09descr =3D "Apple Interchange P430"=
; break;
>  =09=09default:
>  =09=09=09if (fmt->description[0])
>  =09=09=09=09return;
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev=
2.h
> index 5472e433ed06..f218f4fb26a4 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -842,6 +842,14 @@ struct v4l2_pix_format {
>  #define V4L2_PIX_FMT_PISP_COMP2_BGGR=09v4l2_fourcc('P', 'C', '2', 'B') /=
* PiSP 8-bit mode 2 compressed BGGR bayer */
>  #define V4L2_PIX_FMT_PISP_COMP2_MONO=09v4l2_fourcc('P', 'C', '2', 'M') /=
* PiSP 8-bit mode 2 compressed monochrome */
> =20
> +/* Apple Interchange, compressed and tiled formats */
> +#define V4L2_PIX_FMT_APPLE_AX12=09v4l2_fourcc('A', 'X', '1', '2') /* App=
le Interchange NV12 */
> +#define V4L2_PIX_FMT_APPLE_AX16=09v4l2_fourcc('A', 'X', '1', '6') /* App=
le Interchange NV16 */
> +#define V4L2_PIX_FMT_APPLE_AX24=09v4l2_fourcc('A', 'X', '2', '4') /* App=
le Interchange NV24 */
> +#define V4L2_PIX_FMT_APPLE_AX03=09v4l2_fourcc('A', 'X', '0', '3') /* App=
le Interchange P030 */
> +#define V4L2_PIX_FMT_APPLE_AX23=09v4l2_fourcc('A', 'X', '2', '3') /* App=
le Interchange P230 */
> +#define V4L2_PIX_FMT_APPLE_AX43=09v4l2_fourcc('A', 'X', '4', '3') /* App=
le Interchange P430 */

These needs to be in Documentation/userspace-api/media/v4l/pixfmt-reserved.=
rst

Nicolas

> +
>  /* Renesas RZ/V2H CRU packed formats. 64-bit units with contiguous pixel=
s */
>  #define V4L2_PIX_FMT_RAW_CRU10=09v4l2_fourcc('C', 'R', '1', '0')
>  #define V4L2_PIX_FMT_RAW_CRU12=09v4l2_fourcc('C', 'R', '1', '2')

--=-0opacj9JZF7JzicRk9mL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawYIcgAKCRDZQZRRKWBy
9LYlAP9eNt64YAYVi+3tdmO2eVOgxAxX3MBInpvFBV83Km5LlQEAva1+LKSeuhBa
0jv5NXY7twZmCiEmTXSCAQrzfD7RsA8=
=Z59I
-----END PGP SIGNATURE-----

--=-0opacj9JZF7JzicRk9mL--


--===============7632723237381947131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7632723237381947131==--

