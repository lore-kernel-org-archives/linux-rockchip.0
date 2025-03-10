Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FF45C282DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 16:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o8AFHeES5IwY3qrmRSZLAhxVDhkMSnoFaG7bUmHFE1w=; b=TkghpoKfysdXBJxL84sGF8DhCA
	AA5i93LzfenrHMMH26DH/W7EuI3/u8IYSQfAgMJyCxk2Hr00ok+kzzAa1l0rYd4BUm4YB7rFdDNdR
	rhIcsc0fxEAmB7YExAd7GDIzGC+cP6F0Bl5jmWxzYy9eq3G2FK9npgN3Wb+gRoA5KzdtWapVAHXY9
	Rp6cxUag7sIp3JyzgKXMrewH0so05Bym8LIfzus+oXCRY9FzhZtSRTMUWM7XtxLBXUJlStYQDbMCT
	+4kzHFirDvogOV+h7MQzRY7zPoV8z0f//r+ZhZdw0F9xArxXPs8bq5HMvC+0UHR3Ocu7Qdu/+w9OV
	tR6jsGbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trgPn-00000003Pt2-1gCc;
	Mon, 10 Mar 2025 16:55:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trg9a-00000003Mly-1jMB;
	Mon, 10 Mar 2025 16:38:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C64385C672E;
	Mon, 10 Mar 2025 16:36:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA865C4CEE5;
	Mon, 10 Mar 2025 16:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741624737;
	bh=IWvNhk3alqBkKhFhNbB9Ip8DmjSWG5Z1yAYgQA1qk/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K5F8LiPb6IMR+i6b0xnHy61Sh7xnP8dNL6xlfD3p1+Vz/5ir+ZehR4UVFa9FzZFFB
	 th4QfuW8y6YCoufZgfCucRDyG9UKsVsxXexOMZuwWUYg+92ryvRAOmuZeioG3Q6jL5
	 A7HugzuFWlnWAxpH/1wSF01ipn1T/qHOHxQzCPfw1EJvtNbm8t9tsHkKhI60OKrBra
	 KxqxB6/yuD21RQVjCmvDhI+rEp0poQY4QznEmTjS6hC9fnJr9b6bhIuBxnLCozYp9X
	 IFhv5jfgPjBPjmpiBX2/4l/MOC6YBxXlCWRqmZfHYuFpOnRxvkQz4g1cXBtfrCsutt
	 XGI11CNCxQ1hg==
Date: Mon, 10 Mar 2025 16:38:52 +0000
From: Conor Dooley <conor@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: i2c: i2c-rk3x: Add compatible string
 for RK3528
Message-ID: <20250310-tidy-passable-434c473861a6@spud>
References: <20250309070603.35254-1-ziyao@disroot.org>
 <20250309070603.35254-2-ziyao@disroot.org>
MIME-Version: 1.0
In-Reply-To: <20250309070603.35254-2-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_093858_502922_6AEF66B9 
X-CRM114-Status: GOOD (  13.91  )
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
Content-Type: multipart/mixed; boundary="===============1487981059654991467=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1487981059654991467==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t70f0xBAOBC9N4NB"
Content-Disposition: inline


--t70f0xBAOBC9N4NB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 09, 2025 at 07:06:01AM +0000, Yao Zi wrote:
> Document I2C controllers integrated in RK3528, which are compatible with
> the RK3399 variant.
>=20
> Signed-off-by: Yao Zi <ziyao@disroot.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Docume=
ntation/devicetree/bindings/i2c/i2c-rk3x.yaml
> index a9dae5b52f28..259770b1aa08 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
> +++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
> @@ -37,6 +37,7 @@ properties:
>                - rockchip,px30-i2c
>                - rockchip,rk3308-i2c
>                - rockchip,rk3328-i2c
> +              - rockchip,rk3528-i2c
>                - rockchip,rk3568-i2c
>                - rockchip,rk3576-i2c
>                - rockchip,rk3588-i2c
> --=20
> 2.48.1
>=20

--t70f0xBAOBC9N4NB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ88VnAAKCRB4tDGHoIJi
0g7KAQCX8LQzI7F76ogrQQyJQ8ZKll5YFYoR+50BLXS5RprrMQEApxbq77XDuAUD
8wcWFI82HpSSD5Hi4Jfec3VI8glOmQY=
=jdhP
-----END PGP SIGNATURE-----

--t70f0xBAOBC9N4NB--


--===============1487981059654991467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1487981059654991467==--

