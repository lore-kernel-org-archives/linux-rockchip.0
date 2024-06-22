Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C56F7C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 10:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RsGyo1zttKJ2qGEJgXmotFt+RfxGJhWY81yDwYNMnZw=; b=N/jB1cZMp2KnYvI4O6rBwnkQOw
	nKDmvCLga/7KP6tKgmpVmmclKZHq4jKF6c01RqaHsh8qX2IRY1xpTwzgU5ykl6u8wh2UOnJDWx292
	PLXTdYMS9SjHH21HaRgdcgF8ODmpFIuQ5pG1ANON55ecsrqdFwokffU0yfj8vepnSiGgheKzpkSkx
	W6KmZtKDFM6lkFgpJ9ACoiyPZiPlma2ohTHCNEPQUFynrz3MTn9jIyy9TOzlUzpcVGXt3MTIYeNrt
	uYi0UP6cc45FH8lqMFMchKjubSQqdnmNYeC9Trp5PXbvptlGnxbHJWBG9H8IGVlrDoXjcYpcOQvTB
	O20WGPYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKyMm-0000000BtzK-2CA9;
	Sat, 22 Jun 2024 10:53:08 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKyMg-0000000Btxp-3YUG;
	Sat, 22 Jun 2024 10:53:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AE9CCCE0916;
	Sat, 22 Jun 2024 10:52:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAE06C3277B;
	Sat, 22 Jun 2024 10:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719053579;
	bh=Aby3/xgh3G3AwLRO3U9OesgT3ykhTtfb684/BtS9wxI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CP3KR/OUqB92LQjCAZxOkDifteoHeAhP7Kinfl8vi7l8eUJk8Ov8PzAAR7EBiphM0
	 juLNyPMnJvyKSQHJ9PjW4UPWxrMP4fjl6L831PiCtsxsgzOS6IB9rS8rTEz3m0HRXM
	 xZa/uvv6zbaZUDMqGjthQkUw52kECLyfSbvn3zz/NeGWkFQcD+4Fm6/NABcylwKnV/
	 lEcoyPo8qT1OOaD1wtpgh8/0qPpzswQnILlIdMor0kBYuFHGRMfKPN+tOvXJntwi6C
	 IwEWD3vNkIE/hMzkcwngglpxT4jmpyolKo/Io+qvkLmpAYL9jJRr3DTxTFgorS7DKw
	 tlFhrWukxEN1g==
Date: Sat, 22 Jun 2024 11:52:53 +0100
From: Conor Dooley <conor@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Furkan Kardame <f.kardame@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@collabora.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: mfd: rk817: Fixup clocks and
 reference dai-common
Message-ID: <20240622-exquisite-absently-e35b2cf335e3@spud>
References: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
 <20240622-rk809-fixes-v2-1-c0db420d3639@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240622-rk809-fixes-v2-1-c0db420d3639@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_035303_089624_BCFF51F2 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============6805297516967367134=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6805297516967367134==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dAUJD4FRJ6nYYvth"
Content-Disposition: inline


--dAUJD4FRJ6nYYvth
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 22, 2024 at 12:57:18AM +0300, Cristian Ciocaltea wrote:
> Ensure 'clocks' property does not allow more than one item and add the
> missing reference to dai-common schema.
>=20
> While at it, move 'clocks*' and '#sound-dai-cells' properties to keep
> the list ordered alphabetically.
>=20
> Additionally, drop all useless/redundant descriptions.
>=20
> Fixes: 6c38ca03406e ("dt-bindings: mfd: rk808: Convert bindings to yaml")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

I'd argue that these should not all be the same commit, but w/e.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

--dAUJD4FRJ6nYYvth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnatBQAKCRB4tDGHoIJi
0neAAQDWAkLuiwFC1w0jc6OAX2oc8m2ifAVd8Z+rai077JX7TQD7BJlOUtK+SpJm
40x6H7TsC/mgAc3SI1EV6y2+Ie91VAM=
=JKbI
-----END PGP SIGNATURE-----

--dAUJD4FRJ6nYYvth--


--===============6805297516967367134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6805297516967367134==--

