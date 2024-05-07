Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E55EEC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 15:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XMh7e7Sd/NKvApPCvID0olbVTUK8FoGFqowD+jCi6I0=; b=NCNJBgVSbhFQ/pWZJ/AShhile8
	evRznbI51FL8YCwPTSvtr3HxtFdpRWtcIN5ZbG7yTh2zptSIESp32RgDQT4ky3G/Y8eeM9E6XsfLE
	YzXOuQ8yR42v64PnBd+bSc4XA6iLfo+O5XlFPYkUSyh7OPuokQEcp7Gm1Kt8y7Hqu5HrrAE/gT+UN
	dJ/54zQiYijtJnOeVE4MrqeyfuhkxJeyl6z1nhOORjYg+d4b2EMJ0zk/++NxLeKr/crUx8lSIcrE6
	fc2ytiax0psdRjiiAUAvhf/UrJ0TaynTl+hvJ4mf4JkOA9IkECaL3gVqzzTEi64zrLrp8XXdJmHyy
	Z1ZObuPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4MRE-0000000BfsK-3ps4;
	Tue, 07 May 2024 15:09:04 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4MR9-0000000BfmK-11jj;
	Tue, 07 May 2024 15:09:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 147B1CE13AF;
	Tue,  7 May 2024 15:08:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88102C4AF18;
	Tue,  7 May 2024 15:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715094534;
	bh=ycm52fKCEVH22ltB8v+hNmkSggINFRR1kVE47PuUHP4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hQpdtnh8YlsVoCH2VLVBNtU2+8DjCmRVpmI21ogmnm+njIqlao248WDYkDMmoe9/Y
	 6wzui6NhfrCOsnXRkaZ2U9ucyRqWQanyCm858zh3Hxcof2nKCcdPYZmaPhKVHCxNhG
	 pndnuBaAiTfDmt+LOSk9aJ3DxaOcAM/ERHs0bSpmOxK63GdGlEbaEDSvSs2fBQiJdX
	 ODP68zn3KOy3gIBKOVUK3YUJonztbsYkvC3hp738xPjF+vRqIhCulzlIX/eplDYwm5
	 +vggzua9WHBPpInKvPjUc90mDc91A5LjKDtoWmzdhXL13AyACK3milO1x/zZSjcKI/
	 mFM+dzuNsPsRA==
Date: Tue, 7 May 2024 16:08:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	andy.yan@rock-chips.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] dt-bindings: soc: rockchip: add rk3588 mipi dcphy syscon
Message-ID: <20240507-obligate-ripping-76ed73f46f57@spud>
References: <20240506124632.3621378-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20240506124632.3621378-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_080859_594554_23E49CDA 
X-CRM114-Status: UNSURE (   8.89  )
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
Content-Type: multipart/mixed; boundary="===============0452074942342481353=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0452074942342481353==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5hlEgOW23HF9FJZj"
Content-Disposition: inline


--5hlEgOW23HF9FJZj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 06, 2024 at 02:46:32PM +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>=20
> RK3588 CSI and DSI support requires the GRF for DC-PHY.
>=20
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--5hlEgOW23HF9FJZj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZjpEAgAKCRB4tDGHoIJi
0olBAP9j0q1yLiXyy+lGOVgDlPpLYQPtcvDZFQmtY8MeXiLU2AEApyZLt7KBt/v1
Y3oPzSZfq5aiOJR5N+pAz9i30QD0VAw=
=fh3/
-----END PGP SIGNATURE-----

--5hlEgOW23HF9FJZj--


--===============0452074942342481353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0452074942342481353==--

