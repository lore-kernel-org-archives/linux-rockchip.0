Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A52E776F0
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 19:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nL9NMKZ5hcwjKA1eqMBEGQYqJ+whqBBl9eiOtrAvvMI=; b=3jNaqMwCqFqFzy1WMgIO86k+ZR
	Y8J8d1Wy7M5uyvJBZnwzb0LR7hRxDrT7Hp+WsULLXeBzcltA1qVGw7gPl99PSNyPl6DcoecUyI38U
	FpjBm66/hBTglOK3jndRGgWEA8I9SJkJ7JE+2g8RPb4l5m27mIU2Le6aDQn90f51s/4eUY24KRslA
	kjOWS68bPTDgudTGWENWOIs9jXeFqa8dSAsUTO60c0l9rOpqaGRKjAMksEvurULjURTWd2QHgZ6cZ
	FzzOfHF52U+JhDzqyg3yVyfDKJEZ9bnm2QH0aBseoJjWlljY+znDaElPtSfuifxUWded2Xiezwixj
	X3WCQojw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYUFp-0000000HLCe-0Gfw;
	Wed, 24 Dec 2025 19:10:37 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYUFm-0000000HLBx-0vMh
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 19:10:36 +0000
Received: by mail-qv1-xf43.google.com with SMTP id 6a1803df08f44-8887f43b224so88225396d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 11:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766603433; x=1767208233; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WdkhkRib8m1PnipWAZ9dgFe926aVbUVCPdJkvFIgPao=;
        b=0jM57WB4M30szZJCK8nNQedbgZyQvPArGqRuQf1BpCOxCc13j7X2yTPqQVYlqSzdiV
         /8TCnfutsOnchQOcFjceMjTkMSQ9wcccAHHgbF7Gvp0AeA3yAPtMGc4RvdslLkgvryDA
         DimjdP3x9wiuu0dvmA0O3uy/Y0j9vxitLQli7bWMWdc+bJLTfnp/jURCF40lYogH+1rh
         QRIaNmTvAvSz/Sm2vK4I9gkAlo3Eb2MFYqUQso75UT4wQvFGWBTWwMRS5uz5B6fVYy13
         HdkOUStvyYqmjrZZqxx+BboVipTwP43X0BHas77BE13rM9P6jlbhVskDXhz1ut7kUuV7
         dNZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766603433; x=1767208233;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WdkhkRib8m1PnipWAZ9dgFe926aVbUVCPdJkvFIgPao=;
        b=mb82WtXbFD0NVZPeAwuCw9hKmzhPlXgpyxuIVGV4kjskhHLOVKTLYQe+Puf4KT+jb2
         sluTr5NVbsvCNeOUWWsDXGaI/GbnHfntbcBGe/uTGKGQscFavEgaZdJhBpWDrsJo1IDc
         qrisGVsynl7GyUdn1T/PhbbLvGfcspStJgobablyMp33lTk0Yu7zDkdrLydVNedCMjJz
         NfTl2gEnamJVwaJ66T9f2knyYexgm4zrgCFjtRs6+K6GoOVUM38Z7aHq2elbd+n+5gxY
         fNvGqoskruCGXyWhIRpVb3oG4E9B5zMhmCJnv1o8Y77w7xui0shJKBjIKopywUdJkUaY
         lI/A==
X-Forwarded-Encrypted: i=1; AJvYcCUw0PwfHYYYjVmuurkRJlGBNP/ms1cUOOjmhlORtt7FEm28rilGoXiLglW5yvEzJGfi/QRwvDj1l92VubI7fw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyhMa6OmfXFhF+8HNOPMhmibliCf2UObMrESU8AJYUUMbGCF1E+
	dGsV0XcqE3cNO7Oflls6Sf9o5cViAnXxCCOGqrpJoWmVIN8QzAmThfvfx6qXNOLAOgs=
X-Gm-Gg: AY/fxX4CeGtmt+EShGi10wPSbzy87hExowBs7qIGgmi/6zUPToBVJvxTBUjtZIouo0w
	y8MDIb9dawBwlyS0AqLS6oeG3kaZz8d/CWKu5qkwAm054Lapt9Z0FLKYoUSQN+E/UYLJUANhFdm
	kt1MgtjSJhFmp+lpe4Pz6NTebM05XYPOr4cdOLYf3h7sJAHuxOTD6uUJRYoTxNZ2IvMgHAXRIHz
	LhT+H/qV3tSEeez0jCiFX9llbU0TIufbuPsYBI/HpTpysv84RISaJGcz4gln6iF59c5fygv7o0Y
	+5hpMNnRaqRs/ZdFa3Hr13QIGJbGkegjh0HdazIAl6L9Ax0YWnRLig9IYMKnBKC0835zuP/rmvZ
	t4EDTkPkRq8LjpzqD96y3Uo6AzLsWbhTn51D0xbksPe0pCLcw9+Ar+AC2QSKQ4BDmGgrkZyuSYV
	QZ/zJnE1sgZ2B8nevd
X-Google-Smtp-Source: AGHT+IEQUsqZXLqkkPxa2+KYv+fyXfZuaLetYcgC91biDM0aZwokVZC4OyDueQEybb9eanIS8m171g==
X-Received: by 2002:a05:6214:470b:b0:7f1:c596:e1cc with SMTP id 6a1803df08f44-88d820420fdmr269109756d6.19.1766603432784;
        Wed, 24 Dec 2025 11:10:32 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d997addd5sm136299236d6.33.2025.12.24.11.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 11:10:32 -0800 (PST)
Message-ID: <92defeb3fdc1f1dac636671f44155e5b73246e79.camel@ndufresne.ca>
Subject: Re: [PATCH 3/4] media: rkvdec: Add support for the VDPU346 variant
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Christian Hewitt <christianshewitt@gmail.com>, Detlev Casanova	
 <detlev.casanova@collabora.com>, Olivier =?ISO-8859-1?Q?Cr=EAte?=	
 <olivier.crete@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>,  Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner	
 <heiko@sntech.de>, Diederik de Haas <diederik@cknow-tech.com>, Dmitry
 Osipenko	 <dmitry.osipenko@collabora.com>, Thomas Gleixner
 <tglx@linutronix.de>,  Dragan Simic <dsimic@manjaro.org>, Chukun Pan
 <amadeus@jmu.edu.cn>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Wed, 24 Dec 2025 14:10:30 -0500
In-Reply-To: <20251206082809.2040679-4-christianshewitt@gmail.com>
References: <20251206082809.2040679-1-christianshewitt@gmail.com>
	 <20251206082809.2040679-4-christianshewitt@gmail.com>
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
X-CRM114-CacheID: sfid-20251224_111035_427187_0CEEEB6E 
X-CRM114-Status: GOOD (  15.63  )
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
Content-Type: multipart/mixed; boundary="===============0525769889863031006=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0525769889863031006==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-yuB6wf+lr8PoWSyb/nWH"


--=-yuB6wf+lr8PoWSyb/nWH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le samedi 06 d=C3=A9cembre 2025 =C3=A0 08:28 +0000, Christian Hewitt a =C3=
=A9crit=C2=A0:
> VDPU346 is derived from VDPU381 but with a single core and limited
> to 4K60 media. It is also limited to H264 L5.1 and omits AV1 and
> AVS2 capabilities. It is used with RK3566 and RK3568.
>=20
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

Reviewed-by: Nicolas Dufresne <nicolas.collabora@collabora.com>

Please resend whenever there is a dependency update, I believe some of the
variant stuff is being modified. Another note, I tried bigger resolution, b=
ut it
only yielded green images, so the 65K max does not actually work and will n=
eed
investigation.

Nicolas

> ---
> =C2=A0.../media/platform/rockchip/rkvdec/rkvdec.c=C2=A0=C2=A0 | 110 +++++=
+++++++++++++
> =C2=A01 file changed, 110 insertions(+)
>=20
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> index a1c02ef3a97c..cf68454b2217 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> @@ -295,6 +295,62 @@ static const struct rkvdec_ctrls rkvdec_h264_ctrls =
=3D {
> =C2=A0	.num_ctrls =3D ARRAY_SIZE(rkvdec_h264_ctrl_descs),
> =C2=A0};
> =C2=A0
> +static const struct rkvdec_ctrl_desc vdpu346_hevc_ctrl_descs[] =3D {
> +	{
> +		.cfg.id =3D V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
> +	},
> +	{
> +		.cfg.id =3D V4L2_CID_STATELESS_HEVC_SPS,
> +		.cfg.ops =3D &rkvdec_ctrl_ops,
> +	},
> +	{
> +		.cfg.id =3D V4L2_CID_STATELESS_HEVC_PPS,
> +	},
> +	{
> +		.cfg.id =3D V4L2_CID_STATELESS_HEVC_SCALING_MATRIX,
> +	},
> +	{
> +		.cfg.id =3D V4L2_CID_STATELESS_HEVC_DECODE_MODE,
> +		.cfg.min =3D V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
> +		.cfg.max =3D V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
> +		.cfg.def =3D V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
> +	},
> +	{
> +		.cfg.id =3D V4L2_CID_STATELESS_HEVC_START_CODE,
> +		.cfg.min =3D V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
> +		.cfg.def =3D V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
> +		.cfg.max =3D V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
> +	},
> +	{
> +		.cfg.id =3D V4L2_CID_MPEG_VIDEO_HEVC_PROFILE,
> +		.cfg.min =3D V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
> +		.cfg.max =3D V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10,
> +		.cfg.menu_skip_mask =3D
> +			BIT(V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_STILL_PICTURE),
> +		.cfg.def =3D V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
> +	},
> +	{
> +		.cfg.id =3D V4L2_CID_MPEG_VIDEO_HEVC_LEVEL,
> +		.cfg.min =3D V4L2_MPEG_VIDEO_HEVC_LEVEL_1,
> +		.cfg.max =3D V4L2_MPEG_VIDEO_HEVC_LEVEL_5_1,
> +	},
> +	{
> +		.cfg.id =3D V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS,
> +		.cfg.ops =3D &rkvdec_ctrl_ops,
> +		.cfg.dims =3D { 65 },
> +	},
> +	{
> +		.cfg.id =3D V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS,
> +		.cfg.ops =3D &rkvdec_ctrl_ops,
> +		.cfg.dims =3D { 65 },
> +	},
> +};
> +
> +static const struct rkvdec_ctrls vdpu346_hevc_ctrls =3D {
> +	.ctrls =3D vdpu346_hevc_ctrl_descs,
> +	.num_ctrls =3D ARRAY_SIZE(vdpu346_hevc_ctrl_descs),
> +};
> +
> =C2=A0static const struct rkvdec_ctrl_desc vdpu38x_hevc_ctrl_descs[] =3D =
{
> =C2=A0	{
> =C2=A0		.cfg.id =3D V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
> @@ -449,6 +505,43 @@ static const struct rkvdec_coded_fmt_desc
> rkvdec_coded_fmts[] =3D {
> =C2=A0	}
> =C2=A0};
> =C2=A0
> +static const struct rkvdec_coded_fmt_desc vdpu346_coded_fmts[] =3D {
> +	{
> +		.fourcc =3D V4L2_PIX_FMT_H264_SLICE,
> +		.frmsize =3D {
> +			.min_width =3D 64,
> +			.max_width =3D=C2=A0 65520,
> +			.step_width =3D 64,
> +			.min_height =3D 64,
> +			.max_height =3D=C2=A0 65520,
> +			.step_height =3D 16,
> +		},
> +		.ctrls =3D &rkvdec_h264_ctrls,
> +		.ops =3D &rkvdec_vdpu381_h264_fmt_ops,
> +		.num_decoded_fmts =3D ARRAY_SIZE(rkvdec_h264_decoded_fmts),
> +		.decoded_fmts =3D rkvdec_h264_decoded_fmts,
> +		.subsystem_flags =3D VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
> +		.capability =3D RKVDEC_CAPABILITY_H264,
> +	},
> +	{
> +		.fourcc =3D V4L2_PIX_FMT_HEVC_SLICE,
> +		.frmsize =3D {
> +			.min_width =3D 64,
> +			.max_width =3D 65472,
> +			.step_width =3D 64,
> +			.min_height =3D 64,
> +			.max_height =3D 65472,
> +			.step_height =3D 16,
> +		},
> +		.ctrls =3D &vdpu346_hevc_ctrls,
> +		.ops =3D &rkvdec_vdpu381_hevc_fmt_ops,
> +		.num_decoded_fmts =3D ARRAY_SIZE(rkvdec_hevc_decoded_fmts),
> +		.decoded_fmts =3D rkvdec_hevc_decoded_fmts,
> +		.subsystem_flags =3D VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
> +		.capability =3D RKVDEC_CAPABILITY_HEVC,
> +	},
> +};
> +
> =C2=A0static const struct rkvdec_coded_fmt_desc vdpu381_coded_fmts[] =3D =
{
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_H264_SLICE,
> @@ -1654,6 +1747,19 @@ static const struct rkvdec_variant
> rk3399_rkvdec_variant =3D {
> =C2=A0			RKVDEC_CAPABILITY_VP9,
> =C2=A0};
> =C2=A0
> +static const struct rkvdec_variant rk3568_vdpu346_variant =3D {
> +	.coded_fmts =3D vdpu346_coded_fmts,
> +	.num_coded_fmts =3D ARRAY_SIZE(vdpu346_coded_fmts),
> +	.rcb_sizes =3D vdpu381_rcb_sizes,
> +	.num_rcb_sizes =3D ARRAY_SIZE(vdpu381_rcb_sizes),
> +	.irq_handler =3D vdpu381_irq_handler,
> +	.colmv_size =3D rkvdec_colmv_size,
> +	.flatten_matrices =3D transpose_and_flatten_matrices,
> +	.named_regs =3D true,
> +	.capabilities =3D RKVDEC_CAPABILITY_H264 |
> +			RKVDEC_CAPABILITY_HEVC,
> +};
> +
> =C2=A0static const struct rkvdec_variant rk3588_vdpu381_variant =3D {
> =C2=A0	.coded_fmts =3D vdpu381_coded_fmts,
> =C2=A0	.num_coded_fmts =3D ARRAY_SIZE(vdpu381_coded_fmts),
> @@ -1693,6 +1799,10 @@ static const struct of_device_id of_rkvdec_match[]=
 =3D {
> =C2=A0		.compatible =3D "rockchip,rk3399-vdec",
> =C2=A0		.data =3D &rk3399_rkvdec_variant,
> =C2=A0	},
> +	{
> +		.compatible =3D "rockchip,rk3568-vdec",
> +		.data =3D &rk3568_vdpu346_variant,
> +	},
> =C2=A0	{
> =C2=A0		.compatible =3D "rockchip,rk3588-vdec",
> =C2=A0		.data =3D &rk3588_vdpu381_variant,

--=-yuB6wf+lr8PoWSyb/nWH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUw6pgAKCRDZQZRRKWBy
9D6EAP9ZsxXS8naP+lmNLuk413EqEubATIC4HWdxSsUsDyvFnwEAmvgTIoFdMMY9
p9YBQjcz5+pkXo+Btf5Dn1WHEJi/+w4=
=g1yd
-----END PGP SIGNATURE-----

--=-yuB6wf+lr8PoWSyb/nWH--


--===============0525769889863031006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0525769889863031006==--

