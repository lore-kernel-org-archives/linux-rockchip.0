Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 371B7D7830F
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 12:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8xw0OxfiHLTE+VqmzAEutqTyD4Zg7Rb+ieZsnJvnoy4=; b=WMhd5byRAlK/sYLfbH0DckSqp/
	/56S/RSkEzozW9hxkp9k8C9dyBA9HprU1/T649Ts5Tgq/9P1fzQ2bzQORlgR0UkM6r7O1L3KxJXzF
	7mzivPb4Njlh9os2T+JXVhUtty5p1dRlYP6jmLg1fyaW0LeIPhUe860b+ttxQZCfcClDkTOL2EHWQ
	Sk9vR8TyStIzhqYivo+oQ21rzmJ93icsSbuiupjbDKOue+uynDHVQbc9ibPQhi0Cit+Lywe8PxTU2
	L69P9eLx6n8BkxXzIMyYuCC3ZuiA3aEKryNeWpCkBU2maYar/gWjFCR8RJlOIVfaFVcYYe60A0ufA
	2h2jxtdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI58H-00000005zKD-0FmJ;
	Mon, 02 Dec 2024 12:02:29 +0000
Received: from out-184.mta0.migadu.com ([2001:41d0:1004:224b::b8])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI57G-00000005z6j-0pg4
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Dec 2024 12:01:28 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1733140880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zE2OmnrpksGvdeKauyPLCFpi8Ev/7hTWSH5TEETlfos=;
	b=LiQyTvQwaQqMmBNU1M5tMte6SZt2JDT2miztkcBeTMXSmwtYLHyROU2fPKNARIVxhHR7SI
	CefFw+TjjmXafVH0t4wJwk2MHYgiMKyET7oiR20SvDhBnEfIU+6dUB9JEHR3TILwV0pkPI
	C4xufc+6oGA7ft1bR0xHYRvhQx/6UxwIzW0g4d0fx5yZWVdNb2L32veMPZH9XLCvq1vqvM
	oU9pzM17CvNQcs65bpHd1YyyjMPuIjn6Re+Rp/l9jeNoAIXw5WaIqxhijbRm3ZOnB9zC0C
	a7VxyLkjR3iCkj/RU7ee+gHWnc1WKb5v5r57Cmt8nY6CIsxW6Nr97Dr17M/6Ng==
Date: Mon, 02 Dec 2024 13:01:09 +0100
Message-Id: <D6175VTSP13T.200HWIIHOIDQQ@cknow.org>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: enable rng on all rk356x
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Marcin Juszkiewicz" <marcin.juszkiewicz@linaro.org>, "Dragan Simic"
 <dsimic@manjaro.org>, "Peter Robinson" <pbrobinson@gmail.com>
References: <20241201234613.52322-1-pbrobinson@gmail.com>
 <302bdae2f4defeefe88ea4018a0be11f@manjaro.org>
 <b50376c7-c5d5-41ae-95ea-e2d68c1cc809@linaro.org>
In-Reply-To: <b50376c7-c5d5-41ae-95ea-e2d68c1cc809@linaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_040126_694858_DF750284 
X-CRM114-Status: GOOD (  14.62  )
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
Content-Type: multipart/mixed; boundary="===============0719913405460957407=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0719913405460957407==
Content-Type: multipart/signed;
 boundary=b5f45d1f61fb7924a69af3f0023ad359b7a5d5d310c6ea15f796a8275403;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--b5f45d1f61fb7924a69af3f0023ad359b7a5d5d310c6ea15f796a8275403
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Dec 2, 2024 at 11:40 AM CET, Marcin Juszkiewicz wrote:
> W dniu 2.12.2024 o 04:55, Dragan Simic pisze:
>  > On 2024-12-02 00:46, Peter Robinson wrote:
>  >> The rk356x rng is available on both the rk3566 and rk3568
>  >> parts, the IP is all self contained within the SoCs so
>  >> it's enabled already by default on rk3568 so let's enable
>  >> it in the base rk356x.dtsi so it's enabled consistently
>  >> everywhere.
>  >
>  > Please, go through the mailing list threads [1][2] that have led us
>  > to the current state.  To sum it up, it isn't about what's supported
>  > in the two RK356x SoC variants, but about the RK3566's HWRNG being
>  > disabled because the testing showed that it produces unacceptably
>  > low quality of random data, for some yet unknown reason.
>
> So maybe there should be a comment in rockchip/rk3568.dtsi so we would=20
> not get back to it again.

I suggested to put that in the (original) commit message:
https://lore.kernel.org/linux-rockchip/6690040.iosknibmi9@bagend/
precisely because this was quite predictable to happen.

So a +1 on a comment in the dtsi with a link to the discussion in the
commit message.

--b5f45d1f61fb7924a69af3f0023ad359b7a5d5d310c6ea15f796a8275403
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ02hiAAKCRDXblvOeH7b
bl8ZAQDzAkc1dza7+FMijsFijExJqS8p/Wf3mTBaIcy5txEEmQEAyJoYozFLN/9W
nHDB3oiWH07uU/u4hh5+ih8L8E5J5Qg=
=4tEc
-----END PGP SIGNATURE-----

--b5f45d1f61fb7924a69af3f0023ad359b7a5d5d310c6ea15f796a8275403--


--===============0719913405460957407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0719913405460957407==--

