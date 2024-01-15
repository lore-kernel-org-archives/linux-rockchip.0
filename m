Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D5E5C3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jan 2024 16:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uR8ElIh/8WM7zDLvcLvEvYA/y6D7QhrEvabp9bSFXPA=; b=d92B0QcTZnhPJDj0ZVLxXpTzib
	68p0UwXKHk8ndu845poWixNuW21MNnF7JFnvFUm+NIg53e7erxmSTErQ4nE8tzU+fJvMrTvlfKvB3
	q8GfrkIkgEAeJCCXTpn62HORp1GlaCAOQJ38lUElbfGUDGhEKmfjrtqWJ7YEIdsxqmABQZNY8cP73
	gl5dCN8pF5zTKRteZi3QjE12a1WS0cMvngyQbohcZapcp7lHdg8QoMrcEtiP9ahEAM1Sso8/UDcKL
	dACsV+fcjA3/p7+1su6kOhKZ3rtfbZvqHYFqiSitPoBREtaXOG+w9CFe7N+RQbiNG+evplmK88Ia+
	y6A5JpVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPQ5W-009iYm-35;
	Mon, 15 Jan 2024 16:45:26 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPQ5S-009iWf-1x;
	Mon, 15 Jan 2024 16:45:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 52679CE13C0;
	Mon, 15 Jan 2024 16:45:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D9F9C433C7;
	Mon, 15 Jan 2024 16:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705337118;
	bh=ViDfJVgPPtY9rthYpqceej159xuom9miTC+tJZsNboU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BVngNTTMNIP4L6CU5fdgNjvv0Oo1gRZ1Is6CiKzne5UWuyW0DqTGU2+DN3MKVUcQa
	 rnUNKBQHsfgmUBfWCDMzbAvbgu8gxoToUN0ze8+oVpne9kBYwTSjStn1fJHhOzcoag
	 NditqqFyScWwP2uajbi4zzkAKu3S7LNqPjBQaM7dKDVrANUUWz86SDF9keMPrOJl5E
	 ZQ4jKNhEF/t1XoSqHbYDjMhm41NtUrPh0Nw79iKPY1AW69+Af9H7Je6lmGflg2Wi8Z
	 pXmDv5gkNhPKkvuNXyThTO0M/ylG5VM//Kwpzzx1GWqqeL7unf9yIuWczs+OPUtvwi
	 tYIA6yFx2Ho4A==
Date: Mon, 15 Jan 2024 16:45:13 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: KyuHyuk Lee <lee@kyuhyuk.kr>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>, Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: Add Hardkernel ODROID-M1S
 board
Message-ID: <20240115-elk-paralyses-e308f1d9cc2f@spud>
References: <20240112134230.28055-1-lee@kyuhyuk.kr>
 <20240112-granola-underline-36a525dc789c@spud>
 <dc4e9808-cd36-4b99-afd9-8dd4cd16a2a9@linaro.org>
 <20240112-headsman-concur-1d47da7e3e14@spud>
 <21a8feea-7306-4016-9a58-6e5bf8fe30a8@linaro.org>
MIME-Version: 1.0
In-Reply-To: <21a8feea-7306-4016-9a58-6e5bf8fe30a8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_084522_821862_032B21BE 
X-CRM114-Status: GOOD (  16.57  )
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
Content-Type: multipart/mixed; boundary="===============2767759930607138278=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2767759930607138278==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="riS/1QbGyvUIkYNO"
Content-Disposition: inline


--riS/1QbGyvUIkYNO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 12, 2024 at 06:43:33PM +0100, Krzysztof Kozlowski wrote:
> On 12/01/2024 18:26, Conor Dooley wrote:
> >>> if the vendor for this board is hardkernel...
> >>>
> >>>> +        items:
> >>>> +          - const: rockchip,rk3566-odroid-m1s
> >>>
> >>> ...why is the vendor prefix here rockchip?
> >>
> >> Uh, good catch. I missed it when acking their earlier mistake year ago
> >> :( Would be nice if they fixed that one too.
> >=20
> > Maybe they will if they got your email, they did not get mine
> > apparently:
> > <lee@kyuhyuk.kr>: host mx02.mail.icloud.com[17.57.155.34] said: 554 5.7=
=2E1
> >     [HM08] Message rejected due to local policy. Please visit
> >     https://support.apple.com/en-us/HT204137 (in reply to end of DATA c=
ommand)
>=20
> Uh, what did you do to Apple to be denied by their policy? Admit, you
> have an Android phone?

I do. I guess that puts me on -1 social credit score. I have a macbook,
but I run linux on it, so I guess that is a +1 -0.5 sorta deal, leaving
me negative overall.

Either way, not sure what causes it. Maybe the fact that I sign all my
mail is a contributing factor, but I may not be the only @kernel.org
address that KyuHyuk Lee is not receiving mail from.

--riS/1QbGyvUIkYNO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZaVhGQAKCRB4tDGHoIJi
0uviAP4vY6e5kowaPAGO9WitJXCjm8YoC2PCKDXRVbYxWNgtCQD/XT84O8/v1mMh
C1CpXZDjrgNrmxMCmlEXsjq8g9mDEAo=
=gT6T
-----END PGP SIGNATURE-----

--riS/1QbGyvUIkYNO--


--===============2767759930607138278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2767759930607138278==--

