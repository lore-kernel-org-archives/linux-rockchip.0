Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95008C02181
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 06:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gkJygfz2hEVf20MJvxsGAcfOMQrEcWdbhr93j6wY8Fs=; b=Q6hlqv4toPF3YN119AtSlDAc1+
	f+y0sljWceb0/ITABwbs5NWIE1P4fTaDrIwqvV9NGHhWbFPEGm3O+FQiDv5PhN4zOTkbdr/9RHEkh
	YdCMDv3plqIdIAONy+otsug2W4V45gAIv/Z9S5gljPgpi0oAp/PWYsj9KF1CRoQIFJ8JfFicen439
	QzSPMqGRqzTlgpbfIlZlnJ7KKyzYtvMeHL8C+kpM1idEs1O1bZv4LkK47PP4iaUfbv/svWDCdXZPN
	cryndIGf8KYM3drd7ZQ252HZPheZr375mKywzxgPY61XaEX7rBjZC9rsQqGsF1fzESFmEqDz2YQB+
	frWCBDlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spMbp-00000000ETY-0dMV;
	Sat, 14 Sep 2024 06:50:17 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spMak-00000000EOg-1XN1;
	Sat, 14 Sep 2024 06:49:11 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1726296544; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RcTWi4xf8yqOXR/pufhdq1HnW6R5fgVpKkkpetfTbOql4nqJxC9rPdWmo5fBpgtlXS7R6JcH0rY7r3KIBQQLCaS9dMQgvtZIsLQCd76zNWLfYfwv//Ig0/DS8m9pUKdXkIU1pk8UMgVdkpALn1CfW5kgwnFB0g3DmyyzrJ/3Dgs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1726296544; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=RgXdvaPZb4LTwePNyALjB+9zqhsamJvle0AcX7j8Ed0=; 
	b=U32uIjrtBUhl+a7moY8GJG2ZJ53HvHUYpy2bLLaUQxWMY4+c/lAAZreXNZv2HCvNcEQyyVJHDXRzvqdLTk9mG9RoCsnaoqFp4/1SjJ4kGuuWCD0bnHacIIrNN0y0CaoGWNKhm7/wNB+p09KJX2xdOnheMQ4C6DMqkFn4mK7IKtw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1726296544;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=RgXdvaPZb4LTwePNyALjB+9zqhsamJvle0AcX7j8Ed0=;
	b=CYolCl4byS04MLUwtRGfHuOepe52c97yxFkD1zSwHJGdwP8mXZ8c6+SPNLEbwEEK
	5OAltc7NxV+IGaYa5ykMJ2or5YeeNC2tcytWxU+f+jdsJ3WtdzZnHAp9Y3WYwjcvNNN
	GgSrAKYJ3iIv/zbnkkpQ1G4GHkXmEJ7owS52Rp6U=
Received: by mx.zohomail.com with SMTPS id 1726296542003336.1673560833053;
	Fri, 13 Sep 2024 23:49:02 -0700 (PDT)
Received: by mercury (Postfix, from userid 1000)
	id 417051060578; Sat, 14 Sep 2024 08:48:53 +0200 (CEST)
Date: Sat, 14 Sep 2024 08:48:53 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>, Yao Zi <ziyao@disroot.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: fix finding of maximum clock ID
Message-ID: <fmfvorsje7fjto3c4bwyqxsa6xrs234xlse4whcsu3ebm3lrvs@oyppckftaeok>
References: <20240912133204.29089-2-ziyao@disroot.org>
MIME-Version: 1.0
In-Reply-To: <20240912133204.29089-2-ziyao@disroot.org>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/223.982.64
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_234910_498928_14364794 
X-CRM114-Status: GOOD (  18.17  )
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
Content-Type: multipart/mixed; boundary="===============7416117251081960843=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7416117251081960843==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5qfaa5s3wvu2phrp"
Content-Disposition: inline


--5qfaa5s3wvu2phrp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 12, 2024 at 01:32:05PM GMT, Yao Zi wrote:
> If an ID of a branch's child is greater than current maximum, we should
> set new maximum to the child's ID, instead of its parent's.
>=20
> Fixes: 2dc66a5ab2c6 ("clk: rockchip: rk3588: fix CLK_NR_CLKS usage")
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

oops, good catch. Note, that the function returns the correct value
for RK3588, since the clocks with the highest IDs are of GATE_LINK
type and do not have their child field set. I have not checked all
the Rockchip SoCs converted for 6.12, so I suggest sending this as
fixes material for 6.12.

Greetings,

-- Sebastian

>  drivers/clk/rockchip/clk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index 73d2cbdc716b..0972e9f87470 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -439,7 +439,7 @@ unsigned long rockchip_clk_find_max_clk_id(struct roc=
kchip_clk_branch *list,
>  		if (list->id > max)
>  			max =3D list->id;
>  		if (list->child && list->child->id > max)
> -			max =3D list->id;
> +			max =3D list->child->id;
>  	}
> =20
>  	return max;
> --=20
> 2.46.0
>=20

--5qfaa5s3wvu2phrp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmblMdEACgkQ2O7X88g7
+pqCcQ/7BBOlOBVuqXxJ7PhV3mZkLax8DMG6MNac+iOSnSf4BXmPaOZHU1JE8fPh
7T2/O3yNA6M6CfmCMwomZ/3JXRdNadPV2lAo+EERHf7FgV2KL7peadkIrEHf/Aqp
gvaEun29rO5iY4bYrKaEgxt02u5Oq5fws7gdcv1mB6Vk+Bg2pNes1iwxIRHJVv+r
VnKpK2bHEzxBr4Xaft3PUfFsx+qedzaLPemicyzN++TqnlFPLFdzQm+rjA1G3sr8
OQR7USdeym/StJs5IjEI/ymW/fK1HG0qtC8HG5O+we+CtIQDmPM8XrWe8dox0y21
m2R/tChp/PAGtoXOnBtnUZ6YtNk/JZg5TRkEfPbeJncVlHg+Gb1acEnxLET82MRq
qhKeaqzUzCf0PHttjRNrhldgZC2MQjzfecF/a0XJqawy/4Z/5jOH8YdyKzUck8W9
+diEkTb1AhfL9PX6ym5J0qONSkn86dp8H7tXh9MNQ5iq14joInbBSvR6nPxr9EPm
l+m046WRN+knsFDi2zliLzYX9iTTU8sGxhMj8199cMhpVLKxVwFSPL6m9azJxqbi
AGQWO6s9ngM23lDVbnfn5JWCfulMx4Nj9fciHMUDcYEduFB0FKkTi5GnR8fKnz6q
roDKiyVhzHmxSmu+9MZ6myzrzPrZdBELn1XQmu5N9UBP92i/Yug=
=LiYC
-----END PGP SIGNATURE-----

--5qfaa5s3wvu2phrp--


--===============7416117251081960843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7416117251081960843==--

