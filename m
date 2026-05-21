Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68562CD4F3D
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 19:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=76uGiVrl0ooLswSSuztoMf6hEKFxsqmnDws4AT11d54=; b=SFcB8H2SLXAEwVXvSlsciTAWSU
	Yx+Jqcb/RBzCxYcDm5GTdK20AT/TUb4+J5SJ+frFpVH3FJykSh+A7rU4j3esHOzmjbrNeg+CNWux2
	SXTpKQEvKSKpR6jv/4cwSQ7rKDZrc5xShcWXdo67pHOQzN0sWgHVwdD87+7g8hA68iPdJdjzxmlQ9
	viKAjSLA1fL9lC06ZDZKUA7M+0vqBScUuLvlAofVZ+QKL787j+2RdR/D7nFIb1fVmMdfhke0vAZZI
	5ZCImtRdRCTPwiqnOolyAmH6kloQTOYUqyOY0keWHz2xA+W0E+ZZfzTEJ4LpiBgSr58Yrej9zeKVL
	HcqdrWeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ9MV-00000008wpT-3xIT;
	Thu, 21 May 2026 19:47:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ9MT-00000008wog-1fJt;
	Thu, 21 May 2026 19:47:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9963842A4F;
	Thu, 21 May 2026 19:47:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40C9D1F000E9;
	Thu, 21 May 2026 19:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779392836;
	bh=iF7iL7b/eRDZExcU9oluR8iOMC8+YXUjPYKBmp/PXRQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=i57ejD7ipwYFQoYWQOyHZ7JiWI6LhNi0bmQ7pOyatQLUHO78lk7wAp/pp7EVRJq1W
	 B9Fu2aQRrMb550LkpweJltALl/A7ruzHvdvjGGpnlJXVCQhLpfvpT2VRvcbBZiRGho
	 0uDP5ogr6juioZwvu9JzIgvz38yZyg09LRpnAZjzWB4CTKgSSR+vInl5aqbtvuCpI9
	 qNJ5d1JN6+e7LWgbZiVwj8xmGmxhTIFywUwDgfzuMAGM57BQfkFUTLuoADKx0OM14j
	 HYYscXdi7VS8RtTcZe4Bw0dAMtpU1ipYgyQdv0xuGIDB2xS/lrs4fcvoEJm9Sqxmge
	 wpdhHfJNTn4aQ==
Date: Thu, 21 May 2026 20:47:09 +0100
From: Conor Dooley <conor@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: rockchip: analogix-dp: Add
 data-lanes example
Message-ID: <20260521-powdery-tux-22a7cf4fadc3@spud>
References: <20260521114459.1394264-1-damon.ding@rock-chips.com>
 <20260521114459.1394264-3-damon.ding@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20260521114459.1394264-3-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_124717_456981_8803EE8A 
X-CRM114-Status: GOOD (  13.26  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: multipart/mixed; boundary="===============4445092050573552454=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4445092050573552454==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kjL5jhnqIDr4AwIY"
Content-Disposition: inline


--kjL5jhnqIDr4AwIY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 21, 2026 at 07:44:58PM +0800, Damon Ding wrote:
> Add data-lanes setting in endpoint example to show actual lane mapping
> usage.
>=20
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

Squash this with patch 1.
pw-bot: changes-requested

Thanks,
Conor.

> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml          | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockc=
hip,analogix-dp.yaml
> index bb75d898a5c5..cf75c926318b 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> @@ -151,6 +151,7 @@ examples:
>            reg =3D <1>;
> =20
>            edp_out_panel: endpoint {
> +            data-lanes =3D <0 1>;
>              remote-endpoint =3D <&panel_in_edp>;
>            };
>          };
> --=20
> 2.34.1
>=20

--kjL5jhnqIDr4AwIY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCag9hPQAKCRB4tDGHoIJi
0noXAP9aPT5KoIziqejJtByAcYmbw2ijtjzmEvaq71WErlg8vAD/d5xCbobJ1rmC
s9sTZuiq/HBvQLv/KjXIx0LIEV43OwY=
=PVrf
-----END PGP SIGNATURE-----

--kjL5jhnqIDr4AwIY--


--===============4445092050573552454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4445092050573552454==--

