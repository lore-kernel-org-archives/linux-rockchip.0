Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAAC606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 20:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dDfpyLjw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=ZPwD4VLg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ej2B57sMeyE/lSmBL3t31pL41lVf0wDNrAVOs9HxMrY=; b=dDfpyLjwj08igw4pxEUHGSMxZ9
	aPQUtk9mVHktOaXsiiGYIMgI5BUUQ4E4egV65kDDVKzxYpxy0je4TmXXom6W4ai0LMRlG2L7P+eho
	BwOH5xoPU4CH2ADHp93RXeS6OhINWqNCvi2T2vi3QTu0PE/ukeUqOeroLPeLwc5mF4VTfI4URoSdF
	v7JIE/5dvrFLf9GAA0lLFIg4JqM9O/5NKs3C2I7Br3I9mCkW2YcKb/xVxHfVyv64i+hDyN1cxLlYe
	vesEvV9FbcfQsWak8GmtOg0GZJnvtfkAa7aDS+C8GJmY+pT/9fV8pR10yD4oX0s2oSJV5YOtE87Hx
	ilOGUecg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxPY-00000007l86-1uuo;
	Tue, 24 Nov 2026 20:46:44 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxPU-00000007l6Y-3Q0b
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 20:46:42 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-55c35262674so38641471cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 12:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795553199; x=1796157999; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fiIU6xlbIXxSNj9YDB57fALFXrcAD48xRem5XKs4A1U=;
        b=ZPwD4VLgt1BHvUVYZ/AYCj6Sq2/k3eliCJ7B8t+NjMcKOsA6RcTBEKH0ELpRMStNxD
         62V3Aa6cDuUlttdZkwLCimgA+xpLoEDnBS+ik6PF+/D8HM9pqvIiPrbS4vM0dFl99+vc
         D9fCwItJSxiCN/6YJpEqbscgKDt1gN72GB1yhDbWCs4cd+ze8g+H24Drq8xzdezTM2tx
         /CHHfyrKLin2IraDi/T4PQZT8EF/GtYDS05CrYEeKsciIIPIHvvOoCAqwZLdzAgzxk0x
         7zJTNdnnw00EHtET3z4nl2yrFU1pwWNurj3Ees3RMzfNNuyz/1E4zeZd0Y9Hd4PQvlV0
         8jWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795553199; x=1796157999;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fiIU6xlbIXxSNj9YDB57fALFXrcAD48xRem5XKs4A1U=;
        b=WgUJDyKatC8ZuJ2HytILasXFpQNnuvaubt8w0kRPo3guXQyABdYJvMVx02WsAbbt0f
         dUybwHlyDDkhHBfV2FfOwI2jFUN4LzLWVK5HN7x9iE7pvtHhQlErO1WVnWIsM1PhTAGr
         yB8MAX2g8pmtUqQQdKe8PXsZBU0pykFM9Q/K/iWoj4+LxbTPTd8vFXcleccphK8q3r6T
         E7aYURywMxjx9C0SjhQ/u/i0zYblkhT9/t0PRRakwHWhfZqtKGrQ6pCiNfGm0rv7gJaM
         dNGlKeugnu3h0JLblQuqAhXqhddD1tLEjXU8WNyoQf3BtGjmUaMmB0UrXeAmJt/L2gEF
         hxiQ==
X-Forwarded-Encrypted: i=1; AL+hErHJaEB3UNuLYyRuJJdJHBq3P9YHxNb7BUAtrQYEwjMChck6A/FXYGC7ojG+GRzhGxl+dstoLFPkJdxxAZT0ng==@lists.infradead.org
X-Gm-Message-State: APuU4Z9RXlorRMQ7UQteto53b+Xe29DVBspvVriYTI8JghQkUivCVrjK
	jJ4FIyv/QkHkcIi1pSynDxyVfR0HKaR4gzPD6UyaCNE7djKu0WWmswMELG1sumdCTDY=
X-Gm-Gg: AZFdTZe2xPHcKN8Oj8kOGWlI1PcWmQ/P/jxT235miy6zMaok6dsN+Hue9pVCjAhgrBO
	Se7Y9V5JkCer+V6lDHiDOz7Vre3o15Jz1Tgr4AAN+kl1zlTJGiHG6V7d+K4e7E8d6ypUN7lWjks
	j3FeaiqcansxaUa37s4Kui/SxiD1YqitvOPX1aBToDtCEpTvEYK4JDuuNuXQAu6KIH4sxgP35z7
	XxeLY7Pj7HmuZfj1Gx9+mOZvcuKD+ujxjrsdDEpq/0tRiceYm1WcmPQ/8bUegsNcCWumfQW8Wro
	GX37ZF+V/f7jQyeRqLwR6URfbk6/0SJY7x+iCpq3WgOmfkwYrpzaxa2BWsSniefVgTq7nMxGXQ2
	KfBrGPEzZi21YpEqUR/RpswnlI1fwtiI+Ptg9+3WkyHXSqdmvLtc79EP3i0TIKVqMkB1ickZ6Ow
	vcEFlsI01Da9f2eoDHmoHPw4CBh0T/xHMwqdfYz7tOZ7gJU+Ik8FesW7cPZ+P7QVN7tb9tF5Ayo
	eee8+0IUTa4s46LNLr28nm0vt+iv9cVg6V1cFNc6P/3exGH7xjuJNBKrB6DfDlwFwPqcfG72+Pw
	aZlJ4F2rdx4pDJjIMp/NkiezY8wnpRVzy4MhcVwb8jTASCJGHw8blLI=
X-Received: by 2002:ac8:5a50:0:b0:535:a5fa:ee05 with SMTP id d75a77b69052e-55d76a68f72mr297291921cf.69.1795553199445;
        Tue, 24 Nov 2026 12:46:39 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-55d7c654585sm130765191cf.5.2026.11.24.12.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:46:38 -0800 (PST)
Message-ID: <bc5e98e046f373ae491210e218ded9f06f997734.camel@ndufresne.ca>
Subject: Re: [PATCH v2 04/17] media: rockchip: rga: removed unused regmap
 member
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel
	 <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, Guangshuo Li
 <lgs201920130244@gmail.com>
Date: Tue, 24 Nov 2026 15:46:37 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-4-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-4-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20261124_124640_877710_01B0E926 
X-CRM114-Status: GOOD (  13.93  )
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
Content-Type: multipart/mixed; boundary="===============7633495471303503629=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============7633495471303503629==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-MYb0fk1ys1f42Xkvhfm5"

--=-MYb0fk1ys1f42Xkvhfm5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> The grf member variable is never accessed or written by the RGA driver.
> Therefore drop it from the rockchip_rga struct.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/platform/rockchip/rga/rga.h | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index 2b4f5694375a4..0e62337f8dd38 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -71,7 +71,6 @@ struct rockchip_rga {
>  =09struct video_device *vfd;
> =20
>  =09struct device *dev;
> -=09struct regmap *grf;
>  =09void __iomem *regs;
>  =09struct clk_bulk_data *clks;
>  =09int num_clks;

--=-MYb0fk1ys1f42Xkvhfm5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawX3rQAKCRDZQZRRKWBy
9PZvAP97BrjjWk9V+gf2ONjhQjCuulubPU+SH6u/ajoB9+AP+wEAhck2FAqU1AHS
lSsUCU6gvG4EIWmI38xkcilLfrI5Ag0=
=Yixs
-----END PGP SIGNATURE-----

--=-MYb0fk1ys1f42Xkvhfm5--


--===============7633495471303503629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7633495471303503629==--

