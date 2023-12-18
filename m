Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F739C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 08:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O9FDAwwktRsGljgzRE1BOuwAfT2iXhP4EQBRoGcRCw8=; b=xv8zs8RZc5KRLTaOCgVlOilEV4
	eb+F/itFcQHGGl6v+BAOMoYfkgJZ+QC4WTAyw4fvOM7Ffd32MH7vl8m3PA7GUv0qHdiPzCiEZsWL7
	3dWWovRQVBm5909HCLoqKAh1jc8dEgvunddMmjBuDek4df+amIVUyEDJv1JFpbGEpHOtevt4h6qd/
	TxburV6ft7txKQ7OxvENKc+3mz5v4X1J3QTlV7c6j9O0xQjchDdYCzVpc8K9/eA4AnOz50rLLQjv+
	TKCpU/Df0ZdSpbphvqIhL/dhDNyzhQ7Om4Y8IbC2uS3038ZEBED7vTPbZNr4EmGFIULC7j4Lhv/ZT
	flLobubw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF997-009Uv6-1b;
	Mon, 18 Dec 2023 08:38:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF994-009UuF-1c;
	Mon, 18 Dec 2023 08:38:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1F5E660DF8;
	Mon, 18 Dec 2023 08:38:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73571C433C7;
	Mon, 18 Dec 2023 08:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702888716;
	bh=lxS8hMZ1dXht82U8cpnLcif0aGlwHIaUESGxT3NDlLQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bhoT0Z2UMgQfdCyxM3nZASu2omLnvIufE0XXfWAYW2bItZ9m6X0glvITBh4aqUvuE
	 M97/de6rQxxtEaTfU/S2QTR2CRICRDTWg6TtlDCVvp0E4zYxlr/+YSjAl6DC6nuPU4
	 D39izpCI0Kg5ckXWSJdhu7AbpYchFZZ2xl6YyvhRG33urheUX+y4pap1m5A53Oey77
	 HjRFtAGbadf/VaZQpG75PeVIsOalzJSCe1Nwvo53jov4MX4/u+Q5e5J/byy9AQUj0s
	 RFGB3QNoFS9Mx6iPSMK+VJOBNB/RlX5zrtshNcPERztSDx9/iXgi6V0WQmVFWVym4I
	 rXqrCqJLkmISw==
Date: Mon, 18 Dec 2023 09:38:33 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 04/27] drm/rockchip: inno_hdmi: Remove useless
 mode_fixup
Message-ID: <2dzoew242wpbmxx6bnhoe27rugtcgwz4xxcsytsshkcotmyry5@5voq5jrwxww7>
References: <20231216162639.125215-1-knaerzche@gmail.com>
 <20231216162639.125215-5-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231216162639.125215-5-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_003838_608382_9EF3190E 
X-CRM114-Status: GOOD (  12.25  )
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
Content-Type: multipart/mixed; boundary="===============4902911054745211259=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4902911054745211259==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q2lhm6ovzh5lkxky"
Content-Disposition: inline


--q2lhm6ovzh5lkxky
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Dec 16, 2023 at 05:26:15PM +0100, Alex Bee wrote:
> From: Maxime Ripard <mripard@kernel.org>
>=20
> The mode_fixup implementation doesn't do anything, so we can simply
> remove it.
>=20
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> Tested-by: Alex Bee <knaerzche@gmail.com>

Generally speaking, when you're sending patches you should always have
your SoB. That is true for the commit you authored, but also for the
commits you applied and are sending on the author's behalf.

This applies to all the other patches

Maxime

--q2lhm6ovzh5lkxky
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZYAFCQAKCRDj7w1vZxhR
xbH2AP0fhSTnAOnzCnV/Tv6BswVP6vcqipu0iW8olLDlAXPGtQEA1o9l1iRrt09t
4dndGGxNNPImDviWL7SYWs3i2TPLmwA=
=jzCp
-----END PGP SIGNATURE-----

--q2lhm6ovzh5lkxky--


--===============4902911054745211259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4902911054745211259==--

