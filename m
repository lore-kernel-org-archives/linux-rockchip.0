Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA0F6C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 20:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wBGzACXnnl+BSdciLwW7a6NHIOtD8dKIP2KxrCdN1PQ=; b=b/DFwsyxXu6V2XAKO0qJjAKAlm
	j8rPIZCsGpXXHSx2VWE8JxgHKW0zimWzj6pUuHRZIqtUlhIf6GqgKW8J713MAmEyBEpcJJV8jEPc8
	ZqPGy4/uhmMfTAQRsC8DX390LMmFXbjnPNLVrFS/TYOBNHFK38G3qlFzz+/RV2MtKNocwEEQb+GeH
	5uk2UQL/Wdv8M5CVWOw+oyoLmgmm5vKE/BnKqORbgFeFIX3imWsqlOLdPycHzSuFdPNfSWGg3vVyn
	3im7z9xNRTke1EJqRJjdpWZzgBeUrK68fq+Y3CML0puWwGoSyJyB07YcexLp57SXTLNiEalxGMI7Y
	frH26f5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofozS-00BAen-NB; Tue, 04 Oct 2022 20:58:10 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofozH-00BAYy-8F; Tue, 04 Oct 2022 20:58:00 +0000
Received: from mercury (unknown [185.209.196.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A791A6602293;
	Tue,  4 Oct 2022 21:57:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664917067;
	bh=rOIF7LaAC+WUVJaWsdB3dj8dPLLF/TT6iHAASQJV/bQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jyD0WRDRXBhLgr1sTa2WExTxq0q+VMMHRlGKhs96nczEb0fEuSC+ICo11R4PYpvSU
	 nlf4ITYzDetrChG53AipERX73WynNauggGFWlIyVZw7VEORqZSchn6q2vw2S7qYV9I
	 d95KgrlPRESBHfgg0EKEHMHAwuqj65bYmrtHAV/78ETAjIISLObB3opn01Y/IdyXh+
	 CeNc/OmUyc74UbxCMepkIuUR4FkoLFfbK2K6wY5ikd/lAJAI0YpDRj5lZIWo7rXfQP
	 9Kg9uQtoosj7YD7UE9TB2fFPJylUhWkVWq8Aqc2l1ESI33RhBCBFCwjBflYaXADWI8
	 cXLEvjEednbbg==
Received: by mercury (Postfix, from userid 1000)
	id B95411063330; Tue,  4 Oct 2022 22:57:44 +0200 (CEST)
Date: Tue, 4 Oct 2022 22:57:44 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Rob Herring <robh@kernel.org>, linux-rockchip@lists.infradead.org,
	Frank Wunderlich <frank-w@public-files.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
	Simon Xue <xxm@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Message-ID: <20221004205744.q5eybgbx6syszsqq@mercury.elektranox.org>
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-2-linux@fw-web.de>
 <20221004150929.GA1506199-robh@kernel.org>
 <EC42D2C8-ACA5-4B6A-BC95-534CBDFC36C8@fw-web.de>
MIME-Version: 1.0
In-Reply-To: <EC42D2C8-ACA5-4B6A-BC95-534CBDFC36C8@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_135759_470853_E3C29EBC 
X-CRM114-Status: GOOD (  17.82  )
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
Content-Type: multipart/mixed; boundary="===============6440873228862947325=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6440873228862947325==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="esf23iwxvt2hw4gh"
Content-Disposition: inline


--esf23iwxvt2hw4gh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 04, 2022 at 05:19:11PM +0200, Frank Wunderlich wrote:
> Am 4. Oktober 2022 17:09:29 MESZ schrieb Rob Herring <robh@kernel.org>:
> >On Thu, Aug 25, 2022 at 09:38:32PM +0200, Frank Wunderlich wrote:
> >> From: Frank Wunderlich <frank-w@public-files.de>
>=20
> >> +properties:
> >> +  compatible:
> >> +    enum:
> >> +      - rockchip,rk3568-pcie3-phy
> >
> >The driver also has 'rockchip,rk3588-pcie3-phy'. Please send a fix=20
> >adding it here or removing from the driver. Are they not compatible with=
=20
> >each other?
>=20
> Right, original driver has rk3588 support,but we can't test it.
> Initialization and lane-mapping (bifurcation) was bit different.
> So we wanted to upstream rk3568 first (but have not removed this
> part from driver).
>=20
> I see that someone added rk3588 basic support and if he can test
> rk3588 i can send compatible for it.

Basic rk3588 support is still WIP. At the moment patches for the CRU
are still pending as well as base DT. I hope to land them for v6.2
(so next merge window). At the same time I don't think PCIe support
is realistic before v6.3.

-- Sebastian

--esf23iwxvt2hw4gh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmM8nkEACgkQ2O7X88g7
+ppF5A//aMVPpjLHGUEf9ZvplEMOuOtVijERKVd+RRgN0E+HWDjY9kTSdKo0zfcU
G3FTTyYJhZXSjZ6wAluSupAr2dnO8Ob8EnXdSUZtTKPrAZs6QkZETJpLkD25nf8i
vOzeJcNy+8SvpO6WGhF4alc3E+T/lqVH19Cft9ZWCQM6cWy66IKpUdaWirPRmcIR
qz8WQBUjtZ6z66itUppsc5ysDVRz0YXtNTekcfUHF3qxW4AVq07RdNCzOdPOv0Rh
mXAMpCzm2MCAmYl3+WvtxIfHbS97ksKZ+M54UmlS+nAoaNJ/lM3FyjaYs9he8ApT
JjDnyY2SbGhAiBXJ3WN0Ry/gxoEhm2Wjj30llsUE7ncc7UV0ADAB7zx3++V4ekLq
MD21LyMoLY1G5mROtW8KN3SOAUrlD5f6/uWu/JbUOEXiMuJ5rgeVlwpcuqeRcLYc
ZdTuJB/mijzlEAVr2p79gvNTrbStb6OU3o1YBJXi1lUlRk4eIgxL2ZgU/zaB2zmR
5UVY0eNam56p2+8Y5NRsMTy2LXDWJLnagSoPuz25O0x8I4Kb0+pQ861Md6rNrj4C
Gx4uieKw+KOnlZ8tdJ8mPflqVn7yvnT2WWhhCBi37idzZbm0CFPTKGZLCsjJPA++
mSg0DQJtYs8tjIS3bTkNg1h0OMO4XIvfygU7pp5SsBb5hxehagA=
=+xoE
-----END PGP SIGNATURE-----

--esf23iwxvt2hw4gh--


--===============6440873228862947325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6440873228862947325==--

