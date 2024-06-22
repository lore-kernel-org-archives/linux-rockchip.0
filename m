Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBB30C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 10:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1VVc1gObxZl5TTW9YQNzjnNd1Y11PjPVgkah2WgrmqM=; b=iGoLMLqQAX13OkeJz7/Ih7M5ZO
	zFNJ7wm7T8h0Xy4Pvm/jmpP8LVAnK8FIxxRUKz5bOeqSQ78e0375FCvQbR0MU2JIxdQR7qxC/qlku
	rVHP4kkhbwkCMvWZ2ukcm7Bk9yx9UA4/c1ukL93xTZHv5YqYt49n1fyAf2gQDWTBAiW2G9TmOgjnT
	z2j7TQDVb3VAumy214yjChuP+ZfCAGlK+qgtu9Pj0ivMCkbsIJyvX9EonFhhWJICop2xrT7inUciz
	1m/ubFUxSCDEybLhIS6n0hYHoM61aHq/P6JYOuu0egZYazHhr9pPqCOSmM2cnDlJVLT5zgQ4295Ta
	D2GFKVjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKyOh-0000000BuDu-3yih;
	Sat, 22 Jun 2024 10:55:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKyOc-0000000BuCf-3CJ1;
	Sat, 22 Jun 2024 10:55:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D443160EE0;
	Sat, 22 Jun 2024 10:55:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6992BC3277B;
	Sat, 22 Jun 2024 10:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719053701;
	bh=ghRmvrEvOiSialvO++pAQ6nMBlo3rUttQzCbac/3M9E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jVPLaRtEMB2WxiNMXNI0hN0UYthBTuasNsnxhuzzbCSs5FEynmOS6P+J2f3uvYU6x
	 CfrTSa3OzL6712Gl/ArCkvIAsyjKVj8PwI3EHJoHtmIfYKR9KpxQ6qhvm6TtlxnW/N
	 WJOgmLqLv3vD4NiCxAXXzl/8YjbWvxdGOJtCB2GwbUSwDicDSx0qJ0I+yoWcSiHaK7
	 eJ9XovAzVq4AzhLTLD2S80/ErkaNT7fAmzVkWpPVnl0+QN4wxB4cPeP8wKXhwuL+1R
	 2MB14/ClFVmfWi1ZBoiT8rnwLyyDwG1K5JT1HFIBb6GTAWoVnVVVUAO4eRp06F9IIY
	 aMR9GwiJbvdcg==
Date: Sat, 22 Jun 2024 11:54:56 +0100
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
Subject: Re: [PATCH v2 2/5] dt-bindings: mfd: rk817: Merge support for RK809
Message-ID: <20240622-error-ignition-48cc0708d466@spud>
References: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
 <20240622-rk809-fixes-v2-2-c0db420d3639@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240622-rk809-fixes-v2-2-c0db420d3639@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_035502_910244_9B0387DC 
X-CRM114-Status: GOOD (  16.45  )
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
Content-Type: multipart/mixed; boundary="===============5928251303168700771=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5928251303168700771==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="H/Lq+AIgICuNFnwA"
Content-Disposition: inline


--H/Lq+AIgICuNFnwA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 22, 2024 at 12:57:19AM +0300, Cristian Ciocaltea wrote:
> The Rockchip RK809 PMIC is compatible with RK817 and provides the same
> capabilities, except for the battery charger manager.
>=20
> There are also minor regulator related differences: BOOST and OTG_SWITCH
> are specific to RK817, while DCDC_REG5, SWITCH_REG1 and SWITCH_REG2 are
> provided RK809.
>=20
> The current binding for RK809 doesn't document the audio codec
> properties, although it has been already in use by several boards:
> rk3566-quartz64-b, k3566-roc-pc, rk3568-evb1-v10, rk3568-lubancat-2,
> rk3568-odroid-m1, rk3568-rock-3a.
>=20
> Therefore dtbs_check fails for all of them:
>=20
>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
>   rk3568-rock-3a.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parent=
s', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of=
 the regexes: 'pinctrl-[0-9]+'
>     from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yam=
l#
>=20

> Additionally, the example in rockchip,rk809 binding is not able to
> actually test the schema since it uses a wrong compatible
> 'rockchip,rk808' instead of the expected 'rockchip,rk809'.

lol

>=20
> Instead of duplicating even more content, merge the RK809 support into
> the more inclusive RK817 schema and drop the now obsolete rockchip,rk809
> related file.
>=20
> Fixes: 6c38ca03406e ("dt-bindings: mfd: rk808: Convert bindings to yaml")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--H/Lq+AIgICuNFnwA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnatgAAKCRB4tDGHoIJi
0qCLAP9g1jex2+EZ8w+nDXCv9TyqgSCBxRQjgB2Yk52nfJqShwD/dH6EOwuSEix/
r9MXBGao3Vjytvfs79mzQZB3FFSXawA=
=uadC
-----END PGP SIGNATURE-----

--H/Lq+AIgICuNFnwA--


--===============5928251303168700771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5928251303168700771==--

