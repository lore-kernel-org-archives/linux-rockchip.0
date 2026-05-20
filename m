Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC8EBCD4F54
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 23:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gpy0x5oaulR5doc9rTaxLvZ32NrqmzOtz45SypcrG+g=; b=WBvmYaBuTNiLeG6J9KMXbWsNaN
	EkCyu/O6S+a//zRao5kzTXifpWOJHkPjNxtzPmMGSGAoej39AVS4knlE3MDrMiG23IV8CzQWnoyy+
	hkWOVSyTc3DwwUZrFvFE2s055kN6dCkGWOKyPAdWWAWKp8FJOqTgQH2y0pwuWPVYtbgh3JaHjt3yq
	3h0wiWK0gUqxZVCJYhe0BrGV06Be/Pr+xav2n4NdT7nVQH0p5UEM5yqhxLmo2zX+yQP1hgWuB/x4V
	aPrwBPVLV9R/r9/+W/1CYUtgG9JL5wRtS/trahCMhKjMrFTxI08ZQldu9+VkX5m86ChyFkdnsPjp7
	CKOGhp7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPqev-00000006CGW-0atD;
	Wed, 20 May 2026 23:49:05 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPqes-00000006CFH-1F7c
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 23:49:03 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-90caad2e944so585230385a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 20 May 2026 16:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1779320941; x=1779925741; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8FV7VoDr0F8Nqcq9fLS/TUF5Lj6uNIEv1Mp2biqd2wU=;
        b=NAB0ihH/Qu4AOjyzlUr/zzkcrNOHVhgNW/QHkPzb3gTQwXHzxTaTvlmGTjwaLKyvaj
         w6JQ4lX7EEiHDj90sAIiHOPYueOJ6GFpUlCc+7sIx5Q++Wu1BL5xxXAhjP3xm7GCr75m
         Oex7TzrWEc3DiR+dGwUTXOE3rFR3k7oWGPE4dc+RM2oy9ptk+xmp6EPIhl+yXdEHjR/p
         QlfnZ45zfqdpZVZTYbvjJkMpHTQQfp6yUjLagcgo+6a34x61OIAl7tb9DVQM7Gv59yHO
         qZaeLEXd8ToC7IGtJvm+USAG8ZpAj/XTvaCuq5pylDP4sJGQAALk0jDDXLsF0immIG1U
         j2yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779320941; x=1779925741;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8FV7VoDr0F8Nqcq9fLS/TUF5Lj6uNIEv1Mp2biqd2wU=;
        b=MWn2oNOvsB3wP8erN0VuB4WXAjl0uIHdHbpCPhbWt0YGabMRP1QScJ0TsxtmF7hB5G
         LSa7mlJoOfF5XTqb8uhWpc7i6jFVlG+B3t2mo4EbrhDOBjhK5qS4GCy0/jE1ZMCpaYm4
         rZsdcvqrwkNSzI+F6sdJEQPILZXT+/3pWwkWDYvsxPQtkqgbdhK5Tx0uPyKB6OeqBL8M
         H1ykKZYvTwrdrGbC7IZ+Bbu1tpHWaq/73KPt1r/5JPQ6dQ0ZYZfwpm0PioILuniw0Xdd
         aInDdXoc/LT+qB7GKwi74pO2EJZJ/s6d1UdPKyTfLMAYTdbtxpAgOd6MvF1hgHW+BDvE
         tMzw==
X-Forwarded-Encrypted: i=1; AFNElJ+pFUQWyVASyP7kGTFtV4mdD2hW3/7xyiYVoNva+2exUyBImmMATe0YYne/FTXrdXra4377Et+N3i3dX+d6dA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyjvwDzPpnofkY8uUnlXdEu7dOUW/v3MXD7lIYsZ420VlZoj1vR
	3sKUQKpV8uhq4AbtFh0eN2RDqPQOdc+eolVeMquN4ZPGfp+hsFxHIN3sdSx7QTeIk6AveJezy0m
	Q3I3g8wMAyg==
X-Gm-Gg: Acq92OEfXY2XRWimNcVyLzn4Xpuqj/FftkXDW4JJO5UfQ+eITVk/Ny9o2uC2VMV++35
	A0KDtYQfmPMkMBGiejrfvmaMTQiFkS3Yl+zFLFIY3KKuMbenqIL7jmZWFBOSC1krea/ehN3fM50
	hqrVlwVRm+0SW+q2CyOaWPpa5y2pWx8aK7o3pWZ4t7wM2knor4M/YNHoM1JQx1atd5NrCFq85+T
	zqUFQnsbT9TiLwEOvuL8tdjZwob4kpjxqWaGWv8fEa6UXZxsqCaV7aO84kJ7+MgynjCMn0j+5UE
	PCzumoRR7ETpIfGdueB+tn5jK7ibez/eq5wgoLpa0xOvuMRWn4CNZtLX7viEsbEhrRMsSV41EFZ
	1/9YYehWjE8xH13EtUh1RHxMu9h+x/7r5Qklx9RuEhmDiwN32/Rwn7npYhek6oQjZx4x+Xvau5+
	Nb6TMgLQXyYWcN2aJ/ALFr+/36noad8Yw3ueMR8HaHgrmBwaLl1d0iLuZigUHjuhvFYUlO
X-Received: by 2002:a05:620a:4093:b0:8eb:10d4:a46c with SMTP id af79cd13be357-914a2d017bfmr60714585a.35.1779320940615;
        Wed, 20 May 2026 16:49:00 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0? ([2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-910ba182535sm2267012385a.8.2026.05.20.16.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 16:48:59 -0700 (PDT)
Message-ID: <e086dce57bc881f7eba2ad85869f81a81f8d84f3.camel@ndufresne.ca>
Subject: Re: [PATCH v7 05/28] media: v4l2-common: add
 v4l2_fill_pixfmt_mp_aligned helper
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
	sebastian.reichel@collabora.com, m.tretter@pengutronix.de, 
	p.zabel@pengutronix.de
Date: Wed, 20 May 2026 19:48:58 -0400
In-Reply-To: <20260521-spu-rga3-v7-5-3f33e8c7145f@pengutronix.de>
References: <20260521-spu-rga3-v7-0-3f33e8c7145f@pengutronix.de>
	 <20260521-spu-rga3-v7-5-3f33e8c7145f@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260520_164902_493016_94A60AE6 
X-CRM114-Status: GOOD (  27.97  )
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
Content-Type: multipart/mixed; boundary="===============7599348574259219956=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7599348574259219956==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-gxCVbPi2dtnLUStIFdG9"


--=-gxCVbPi2dtnLUStIFdG9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 21 mai 2026 =C3=A0 00:44 +0200, Sven P=C3=BCschel a =C3=A9crit=C2=
=A0:
> Add a v4l2_fill_pixfmt_mp_aligned helper which allows the user to
> specify a custom stride alignment in bytes. This is necessary for
> hardware like the Rockchip RGA3, which requires the stride value to be
> aligned to a 16 bytes boundary.
>=20
> The code makes some assumptions about the v4l2 format to simplify the
> calculation. They currently hold for all known v4l2 formats.
>=20
> v4l2_format_plane_stride uses an unsigned int as argument type to avoid
> the later multiplication from overflowing the u8 value. All other places
> use u8, as no practical use cases for a larger alignment are known at
> the moment.
>=20
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Thanks for the update, my Rb still hold.

Nicolas

>=20
> ---
> Changes in v7:
> - Also adjust alignment when C plane is larger than the Y plane
> =C2=A0 Flagged by Sashiko:
> =C2=A0 https://sashiko.dev/#/patchset/20260515-spu-rga3-v6-0-e547152eb9c9=
%40pengutronix.de?part=3D5
>=20
> Changes in v6:
> - Fixed alignment multiplication of 0 for NV24 - flagged by Sashiko:
> =C2=A0 https://sashiko.dev/#/patchset/20260428-spu-rga3-v5-0-eb7f5d019d86=
%40pengutronix.de?part=3D5
> - Changed v4l2_format_plane_stride alignment parameter type to
> =C2=A0 avoid overflow for 64/128 byte alignment by multiplication.
> =C2=A0 Flagged by Sashiko URL above.
> ---
> =C2=A0drivers/media/v4l2-core/v4l2-common.c | 58 ++++++++++++++++++++++++=
+++--------
> =C2=A0include/media/v4l2-common.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 4 +++
> =C2=A02 files changed, 50 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-c=
ore/v4l2-common.c
> index 3cc8b04e1ea63..b771ed9b659b0 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -432,14 +432,35 @@ static inline unsigned int v4l2_format_block_height=
(const struct v4l2_format_inf
> =C2=A0}
> =C2=A0
> =C2=A0static inline unsigned int v4l2_format_plane_stride(const struct v4=
l2_format_info *info, int plane,
> -						=C2=A0=C2=A0=C2=A0 unsigned int width)
> +						=C2=A0=C2=A0=C2=A0 unsigned int width, unsigned int byte_alignment=
)
> =C2=A0{
> =C2=A0	unsigned int hdiv =3D plane ? info->hdiv : 1;
> =C2=A0	unsigned int aligned_width =3D
> =C2=A0		ALIGN(width, v4l2_format_block_width(info, plane));
> =C2=A0
> -	return DIV_ROUND_UP(aligned_width, hdiv) *
> -	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 info->bpp[plane] / info->bpp_div[p=
lane];
> +	/*
> +	 * Formats with a single memory plane derive the stride of the
> +	 * other planes from the y stride. To avoid hardware or software
> +	 * deriving a different stride for the composite plane,
> +	 * multiply the alignment accordingly.
> +	 *
> +	 * It assumes the following format properties:
> +	 * - bpp_div[0] =3D=3D bpp_div[1]
> +	 * - The multiplication factor doesn't differ between the non y planes
> +	 * - The multiplication factor is a power of 2
> +	 */
> +	if (info->mem_planes =3D=3D 1 && info->comp_planes > 1) {
> +		if (plane =3D=3D 0)
> +			byte_alignment *=3D DIV_ROUND_UP(
> +				info->hdiv * info->bpp[0], info->bpp[1]);
> +		else
> +			byte_alignment *=3D DIV_ROUND_UP(
> +				info->bpp[1], info->hdiv * info->bpp[0]);
> +	}
> +
> +	return ALIGN(DIV_ROUND_UP(aligned_width, hdiv) * info->bpp[plane] /
> +			=C2=A0=C2=A0=C2=A0=C2=A0 info->bpp_div[plane],
> +		=C2=A0=C2=A0=C2=A0=C2=A0 byte_alignment);
> =C2=A0}
> =C2=A0
> =C2=A0static inline unsigned int v4l2_format_plane_height(const struct v4=
l2_format_info *info, int plane,
> @@ -453,9 +474,10 @@ static inline unsigned int v4l2_format_plane_height(=
const struct v4l2_format_inf
> =C2=A0}
> =C2=A0
> =C2=A0static inline unsigned int v4l2_format_plane_size(const struct v4l2=
_format_info *info, int plane,
> -						=C2=A0 unsigned int width, unsigned int height)
> +						=C2=A0 unsigned int width, unsigned int height,
> +						=C2=A0 u8 stride_alignment)
> =C2=A0{
> -	return v4l2_format_plane_stride(info, plane, width) *
> +	return v4l2_format_plane_stride(info, plane, width, stride_alignment) *
> =C2=A0	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 v4l2_format_plane_height(info=
, plane, height);
> =C2=A0}
> =C2=A0
> @@ -476,8 +498,9 @@ void v4l2_apply_frmsize_constraints(u32 *width, u32 *=
height,
> =C2=A0}
> =C2=A0EXPORT_SYMBOL_GPL(v4l2_apply_frmsize_constraints);
> =C2=A0
> -int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
> -			u32 pixelformat, u32 width, u32 height)
> +int v4l2_fill_pixfmt_mp_aligned(struct v4l2_pix_format_mplane *pixfmt,
> +				u32 pixelformat, u32 width, u32 height,
> +				u8 stride_alignment)
> =C2=A0{
> =C2=A0	const struct v4l2_format_info *info;
> =C2=A0	struct v4l2_plane_pix_format *plane;
> @@ -494,23 +517,34 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mpla=
ne *pixfmt,
> =C2=A0
> =C2=A0	if (info->mem_planes =3D=3D 1) {
> =C2=A0		plane =3D &pixfmt->plane_fmt[0];
> -		plane->bytesperline =3D v4l2_format_plane_stride(info, 0, width);
> +		plane->bytesperline =3D v4l2_format_plane_stride(info, 0, width,
> +							=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stride_alignment);
> =C2=A0		plane->sizeimage =3D 0;
> =C2=A0
> =C2=A0		for (i =3D 0; i < info->comp_planes; i++)
> =C2=A0			plane->sizeimage +=3D
> -				v4l2_format_plane_size(info, i, width, height);
> +				v4l2_format_plane_size(info, i, width, height,
> +						=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stride_alignment);
> =C2=A0	} else {
> =C2=A0		for (i =3D 0; i < info->comp_planes; i++) {
> =C2=A0			plane =3D &pixfmt->plane_fmt[i];
> =C2=A0			plane->bytesperline =3D
> -				v4l2_format_plane_stride(info, i, width);
> +				v4l2_format_plane_stride(info, i, width,
> +							 stride_alignment);
> =C2=A0			plane->sizeimage =3D plane->bytesperline *
> =C2=A0				v4l2_format_plane_height(info, i, height);
> =C2=A0		}
> =C2=A0	}
> =C2=A0	return 0;
> =C2=A0}
> +EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt_mp_aligned);
> +
> +int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
> +			u32 pixelformat, u32 width, u32 height)
> +{
> +	return v4l2_fill_pixfmt_mp_aligned(pixfmt, pixelformat,
> +					=C2=A0=C2=A0 width, height, 1);
> +}
> =C2=A0EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt_mp);
> =C2=A0
> =C2=A0int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelforma=
t,
> @@ -530,12 +564,12 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt=
, u32 pixelformat,
> =C2=A0	pixfmt->width =3D width;
> =C2=A0	pixfmt->height =3D height;
> =C2=A0	pixfmt->pixelformat =3D pixelformat;
> -	pixfmt->bytesperline =3D v4l2_format_plane_stride(info, 0, width);
> +	pixfmt->bytesperline =3D v4l2_format_plane_stride(info, 0, width, 1);
> =C2=A0	pixfmt->sizeimage =3D 0;
> =C2=A0
> =C2=A0	for (i =3D 0; i < info->comp_planes; i++)
> =C2=A0		pixfmt->sizeimage +=3D
> -			v4l2_format_plane_size(info, i, width, height);
> +			v4l2_format_plane_size(info, i, width, height, 1);
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
> index 401d8506c24b5..edd416178c333 100644
> --- a/include/media/v4l2-common.h
> +++ b/include/media/v4l2-common.h
> @@ -558,6 +558,10 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt,=
 u32 pixelformat,
> =C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0 u32 width, u32 height);
> =C2=A0int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt, u32 =
pixelformat,
> =C2=A0			u32 width, u32 height);
> +/* @stride_alignment is a power of 2 value in bytes */
> +int v4l2_fill_pixfmt_mp_aligned(struct v4l2_pix_format_mplane *pixfmt,
> +				u32 pixelformat, u32 width, u32 height,
> +				u8 stride_alignment);
> =C2=A0
> =C2=A0/**
> =C2=A0 * v4l2_get_link_freq - Get link rate from transmitter

--=-gxCVbPi2dtnLUStIFdG9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCag5IagAKCRDZQZRRKWBy
9B3EAQCblctzmCHnE4IzNyxPTekjBtwM2DOnr9we8+22BNglvwD/eI83aZeZuwIs
wByreLbm+gvFWRPRBbD3+tScLz5pWQo=
=CuZo
-----END PGP SIGNATURE-----

--=-gxCVbPi2dtnLUStIFdG9--


--===============7599348574259219956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7599348574259219956==--

