Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75F73C282C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 16:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NbbGLXuuWmU97K+YW+kwS2DOzH9OfKXt0Xax9sp3t6s=; b=4gigBA1f4PkuoHthKnSJ2ZitcI
	r7W3tAHVaLfKyyKqEtMv1IE2FHl+5ByFXLNXc48N3WJ1rDtBPyl4/SsqT9q7rvjSO7sln/TzK17lx
	6xy9cACCUprjYERQuxGDq9CrplbIm0lgbFCJrlfoAMuyh7JYoZCIXpBZfHykqHZNWlie2P2cAPK9A
	71R223ar3dkMQGtr2R44eEH737ML7d91E00rqGj7+D8gpkSjA7USPHZ8/Zu+829lCe5urUOaFcAiV
	MW0vIjtBucNNDmhitu45Lzbq6ohUjD07I5o//7dFZlLoKeya8Uqr7y3lh2BEfQxATRmHqPe0Uw0o/
	0m+M4ltw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to3el-0000000BnOX-0fxP;
	Fri, 28 Feb 2025 16:56:11 +0000
Received: from out-186.mta0.migadu.com ([91.218.175.186])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to3ee-0000000BnLM-3Ywl
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 16:56:09 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1740761759;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CK2+2eTKEOuhyBSMGk3107aiSfJh4IB6MZYp2fX2orA=;
	b=YnP5ml4lSpqZvZxXgRMBOB/tXJezBC6B6VFzwlj9SWokVPcyO2HSn0JrITrq3scrHkWXu8
	P2NlPxV4wh2Snwo8S/3TIX7B3S2tlkZ08AymOj//GP3SX1QbQtvC5ZDvEyRAooPgUoeE64
	j9eoZQB1dqHlTMSUJR458UWPER81onHKg512NWLcZyq3TV78EYMKPnnZn/z/TtccALiS/4
	FgMyo5ZC4U2AtDv3xw/k0ZMOmSg7xa2IFYFVk+Wk4Zij2dFBBQmzZrsFy9PWe1nl4NWeYK
	QE+jt2V+SrPhMP4k1JT3W3EAYP09vjRoBDLFCADQPhfmDZhD0jJuawYHjtvfqg==
Date: Fri, 28 Feb 2025 17:55:47 +0100
Message-Id: <D848JET5TDL6.2L4ZQR0YHYQU6@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Remove undocumented sdmmc
 property from lubancat-1
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Yao Zi" <ziyao@disroot.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Dragan Simic"
 <dsimic@manjaro.org>, "Johan Jonker" <jbx6244@gmail.com>, "Wenhao Cui"
 <lasstp5011@gmail.com>, "Yuteng Zhong" <zonyitoo@gmail.com>
References: <20250228163117.47318-2-ziyao@disroot.org>
In-Reply-To: <20250228163117.47318-2-ziyao@disroot.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_085606_556357_7794F071 
X-CRM114-Status: GOOD (  15.20  )
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
Content-Type: multipart/mixed; boundary="===============1370152653825200099=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1370152653825200099==
Content-Type: multipart/signed;
 boundary=9db44123ad8e24452ea89acc1d1803313fb749feac7e1c6887c874175b10;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--9db44123ad8e24452ea89acc1d1803313fb749feac7e1c6887c874175b10
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Feb 28, 2025 at 5:31 PM CET, Yao Zi wrote:
> Property "supports-cd" isn't documented anywhere and is unnecessary for

s/supports-cd/supports-sd/ ?

Cheers,
  Diederik

> mainline driver to function. It seems a property used by downstream
> kernel was brought into mainline.
>
> This should be reported by dtbs_check, but mmc-controller-common.yaml
> defaults additionalProperties to true thus allows it. Remove the
> property to clean the devicetree up and avoid possible confusion.
>
> Fixes: 8d94da58de53 ("arm64: dts: rockchip: Add EmbedFire LubanCat 1")
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/ar=
m64/boot/dts/rockchip/rk3566-lubancat-1.dts
> index 61dd71c259aa..ddf84c2a19cf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> @@ -512,7 +512,6 @@ &sdhci {
> =20
>  &sdmmc0 {
>  	max-frequency =3D <150000000>;
> -	supports-sd;
>  	bus-width =3D <4>;
>  	cap-mmc-highspeed;
>  	cap-sd-highspeed;


--9db44123ad8e24452ea89acc1d1803313fb749feac7e1c6887c874175b10
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ8HqmAAKCRDXblvOeH7b
brBnAQDYQlWpCi07tRhXA4WUv7ubZmIyzqkjeaOSH8mLwC7m9wEAhEKazw8l4USI
CuStlAfbvqiFxfbuBJrPLhrrU8ag6A0=
=EyJp
-----END PGP SIGNATURE-----

--9db44123ad8e24452ea89acc1d1803313fb749feac7e1c6887c874175b10--


--===============1370152653825200099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1370152653825200099==--

