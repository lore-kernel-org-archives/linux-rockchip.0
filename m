Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69737CD11DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 19:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yoADqS31pjNjXtzXY1iwqRzP97Ijs6ZnGpUx5aYq4yw=; b=a3lKLbIvv0tw9OjBGAnCxb5aut
	uu6WRkwGEukWQX+ulS1gv3B2lynsIXRKJiTJ9HPsUuZjY8mMa8E8m75l5FrgLMRpojFx8glSH9PCs
	+9fUh3jPkJqonpUontQwIG/48zPBlSE0P8clmGbjrlcFQ/z/lXRAMUkdB7iwE8Kc4Noz5b15vpa+l
	sq7PWRcFBBNviXZkcORC/m79/4Ugqh58wbmxczSbe+24JooEyIqrxzlbMyKRnYJRzU8jIudSkxCiY
	aKYk92N4R8Vh7608KRH9q+VjEyDSvKluB2XHxMWeHHmpsLofaAlsKq7DBCP01svSxeBm0n3KwLXBz
	5xBzwETQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ropx8-00000001awp-4284;
	Mon, 25 Mar 2024 19:25:51 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ropx0-00000001ask-2bf3
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 19:25:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 788DECE1CA3;
	Mon, 25 Mar 2024 19:25:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50C93C433C7;
	Mon, 25 Mar 2024 19:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711394739;
	bh=rGP9xGOCge4nOY4nP6+eD+Sot3eKPSA1nfD7xBY8HuQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IpcGgUwQLJDxpwGavp3EWJSHSGGpSh43ClVKZdCepyL2x6DEMu6xhMu1JliLYuHVR
	 xZH81cfISok7RPbsgaJa0GSH5Qc2/V7i+mDILratepRARi1BVJ8JP6O0vSb0swti56
	 uJCfwsbe68XKo7a8qhnjBtfErCCyxSDnEoqoDCXrn4t0h5M8mFCwpP3sDlVRHvQRS0
	 FdIqTaFPkf1CGrd7rcXh3dOiFbF9aul9l7W5LUOiaVzilPHJGfLCPNwFkdbUpsVuds
	 arPDD0K64SLFrW2xDrdl3QxMht8sYYdGDK4QhIBy7EOCBDKqYn81IgKO6G6n7bwOUa
	 VD9zn+xrJBEzw==
Date: Mon, 25 Mar 2024 19:25:34 +0000
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, daniel@ffwll.ch, airlied@gmail.com,
	sam@ravnborg.org, quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org, megi@xff.cz, kernel@puri.sm,
	agx@sigxcpu.org, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add GameForce Chi
Message-ID: <20240325-applied-abrasion-b68d2aa02854@spud>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
 <20240325134959.11807-5-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240325134959.11807-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_122543_168366_62049C25 
X-CRM114-Status: UNSURE (   8.91  )
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
Content-Type: multipart/mixed; boundary="===============2266019642397189822=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2266019642397189822==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Kp/qOKYudTbPvI5Q"
Content-Disposition: inline


--Kp/qOKYudTbPvI5Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 25, 2024 at 08:49:58AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> The GameForce Chi is a handheld gaming device from GameForce powered
> by the Rockchip RK3326 SoC.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--Kp/qOKYudTbPvI5Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgHPrgAKCRB4tDGHoIJi
0hXbAP0dnSKtnfuf20yVSQvh0ORpJmBb6ZmEQNdHjanit5KNUwD/a00lfQf1GCpH
P5So6w6aKTED83lB5k0K931e2RpNUww=
=ktDR
-----END PGP SIGNATURE-----

--Kp/qOKYudTbPvI5Q--


--===============2266019642397189822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2266019642397189822==--

