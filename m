Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 713B2C00144
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jul 2022 21:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rKxO6GdIkjZ6+MvO+wZCsfs7io7BrHrTNvtT6g9faO8=; b=jRPGlAPe4sC7DkTFgsAsy7hHxh
	r5SbzSZBLG7Fm25yOsXuwdZ/rBJIVPNYgIiGv39op1NswNkksX+vbTM9lhSk9QAo+1Y9teqd3dzzR
	qGY87aCWX6UWunDS9VhKvkRXP2C9tIXwaMHsxTUPQVgzdazig1acWKBK9RfBo5x63SMZjivIvJSZ4
	QwMNjL8PkDyB7DFYdvh5LsKL9DwZEOfO8vDD3ZoXkXrGxraHNr+fne2TpB80KcdVC4sx0oZ4KQFmm
	v5R3kOOdgiCmyN+0QbA3HZbqQriiUbKd2w3HMJWpRAudbeT+XZGHBU6mRxISckF57QkQdkyYghxTJ
	bSRQ8DSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGRox-003nUV-Dn; Tue, 26 Jul 2022 21:10:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGRom-003nLW-1z; Tue, 26 Jul 2022 21:10:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 893DB61648;
	Tue, 26 Jul 2022 21:10:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25E12C433D6;
	Tue, 26 Jul 2022 21:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658869814;
	bh=v5jGtt7mTprjQRklJAlQCvOSDiZyJZoNBV2t2UvJux4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pF9YPjEkSZDoYZs4+SxkRk/fQhw6va6jUeRuZO3IEioI3xIQ+04xhw+DaHaZmblZN
	 kHFcsHw/FNm6yoljSmJ4+qqbqpMQ61tDFNSpANRlUwJxLDjoYN4ZtsZ+OIsh/aR/cJ
	 mPSFG+gYTxb+WXYtRr5LIhb/1QNacK8Mi9dOX2yiXSbAo+CdUpFrPhAUHishEolx8G
	 DQicONOn7/br74tKD//JDY2KhQi4HkzSDXqO+0F60f5piajO+5PAnKjQ/19PzLMqUn
	 6yh3wsEnmurL9I5qjivDJHn+DVQAoTCj+xZUayaRsR7pfunIVry5G3M7zwi6zk6P3Q
	 LiRNnpe1zf0sg==
Date: Tue, 26 Jul 2022 23:10:09 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org
Subject: Re: [PATCH 13/22] dt-bindings: i2c: i2c-rk3x: Document Rockchip
 RV1126
Message-ID: <YuBYMZ8N2GXazKF3@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-14-jagan@edgeble.ai>
MIME-Version: 1.0
In-Reply-To: <20220723204335.750095-14-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_141016_159900_7A5BEAEC 
X-CRM114-Status: GOOD (  11.05  )
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
Content-Type: multipart/mixed; boundary="===============6164281879759444765=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6164281879759444765==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OkwOcuDiD4hVOZSg"
Content-Disposition: inline


--OkwOcuDiD4hVOZSg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 24, 2022 at 02:13:26AM +0530, Jagan Teki wrote:
> Document compatible string for Rockchip RV1126 SoC.
>=20
> Cc: linux-i2c@vger.kernel.org
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Applied to for-next, thanks!


--OkwOcuDiD4hVOZSg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmLgWCoACgkQFA3kzBSg
KbaXnA//aBroGAh2q2ivFSQZSL5UMqCj+lNeKrhEetiPfzUoXybnJZBO/q3qCBKq
mEXvu7ADLc94BTZ+lgWwqSiWpB0zp7vIEHN3qN1Qkl6hOb6cTw6W0XljKnvnZRL5
5C23Q9qyHZDZ38XxEc4u6njPG+ltl+lxALaWvhpvyyCcMMxauooxHlhjPRXcaoJg
92AquZzCguxd9AnKpCWqtFW3F9VtSqou+voJ/+pH4247KSRiJ0AjGhZjTchnMvw4
aT/uDm1Jb1yh8LnbonRrCZGR6h/n5WqQHV1g8B6LtThX3JO4KS27LXd7H8wQoD8V
GCCGFAI2KY4FxmELttb/DkdkG1JV9pmQYwRwnsIO4FaFkY4pXbEAbC7Z721qw34H
ZOaIHIgRF/PlDdbwASaOlelTMsnjqkNKOwM86TRDCvcP/Cgx2IkQ34TMrrpOMbTC
Yhgs6IEe4YTSm/N3wZ3uknIKBRTAz0o6fkZYGl1GZoK5QyR4Zy6qnis851DawHe8
E7IqMV+TUek8RN759KlJLqwNZO702BWoTb+c5ZCB8Mu1GquYLyy4/Nw1raefGF6A
U2Sv2etnlMS3PpyC9+IDNsyY3qy1+PISjM3SuLIKvXKg0x2bn7ThUlrwKA9I0wI1
Bqak5MAQtO5BJVM4YbBZA/j5gpl9aUDDL+c3Wa4j1HZoVBKKCpI=
=REHw
-----END PGP SIGNATURE-----

--OkwOcuDiD4hVOZSg--


--===============6164281879759444765==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6164281879759444765==--

