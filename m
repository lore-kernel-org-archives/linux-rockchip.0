Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E028CC4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 18:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v+cVnuyMvMcxXs2Sy5VqvgLHDW7qS2BhC+tDJLhlNGA=; b=Mqw5WMrXfcNGovwM76QLLMeNfy
	MFrCgFNyUZIDSNwLT4Bv5J9Xy5AO3OWgG0mdnEclhd0RTYFxH+mJL22KmP5XxZo2iNwX/our59ets
	JAmogI0NZDPUUkSWNx9cVIZhjlm/GTdCiZtqGxC1O7vErWDoJWCZF1uncEcbthOLjlp+6VgRkna5l
	QmMKWS9wdpRd7lyRLfbei9p7xzkg/P10O1aUvrhmNDTifzbB3lE7rDer+Rpe1IKXBD8LD6N98EQO1
	5v+Qn7D8Dgdye/RBF2KJVd0VK37yr8zJeFa4sAnNgumraENCYurbwznolP9KYt5Xv9mg/+KZEknJI
	zo04Em4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw4jU-000000066Yf-0c0B;
	Sun, 14 Apr 2024 18:37:40 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw4jQ-000000066Xk-3kxF;
	Sun, 14 Apr 2024 18:37:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713119855;
	bh=j+w4fKNpU6T4aF5Mgw+E1TM+E5nsSpnjLA9+Ti3MC78=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I5YBCHBZ/EUBkTOGjcoSw0qj3MxowkxRV8yVbzSLdsvh6mL64dfxGVnAtJPMmzKDw
	 q9MbzHd5a+9HZZtqNlO6nwHQgh0yN1yfn9YjrQsyLf61/3Sm75SfXF8Ur+OJ037ibF
	 nbRp0yi89f5y4xxPKVGNXXdq6gxUdCI3JDaZ0d2vPo4P0T6xlxDP9Pu39KUwlgib9D
	 EwfjvUssXYkp+59esgTwuUQD0GWM1Sm0ec+dMrKFmH/jegvzfDh8ltd7Jo3udZIp+F
	 Ah94KlTUcDIPLuN8K8ci8oKyn9TJAMnmz+qKytK2KAG0ZUSuEhnf+B9dhZnzPdriNu
	 Y3K3EnPSvTPzQ==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CA66437814A4;
	Sun, 14 Apr 2024 18:37:34 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 656A1106134A; Sun, 14 Apr 2024 20:37:25 +0200 (CEST)
Date: Sun, 14 Apr 2024 20:37:25 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, sfr@canb.auug.org.au
Subject: Re: [PATCH v5 2/2] dt-bindings: media: rockchip-vpu: Add rk3588
 vdpu121 compatible string
Message-ID: <yixa62wexs2334p4splrm7ps3ck6jwzm5apjsrrixvgi72lpds@326nldsvg7nw>
References: <20240413064608.788561-1-liujianfeng1994@gmail.com>
 <20240413064608.788561-3-liujianfeng1994@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240413064608.788561-3-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_113737_097726_4BD7C920 
X-CRM114-Status: GOOD (  15.50  )
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
Content-Type: multipart/mixed; boundary="===============1873720435909617172=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1873720435909617172==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eab5rplsmu4hk3si"
Content-Disposition: inline


--eab5rplsmu4hk3si
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Apr 13, 2024 at 02:46:08PM +0800, Jianfeng Liu wrote:
> Add Hantro G1 VPU compatible string for RK3588.
> RK3588 has the same Hantro G1 ip as RK3568, which are both
> known as VDPU121 in TRM of RK3568 and RK3588.
>=20
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/=
Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index c57e1f488..4f667db91 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -31,6 +31,9 @@ properties:
>        - items:
>            - const: rockchip,rk3228-vpu
>            - const: rockchip,rk3399-vpu
> +      - items:
> +          - const: rockchip,rk3588-vdpu121
> +          - const: rockchip,rk3568-vpu
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.34.1
>=20
>=20

--eab5rplsmu4hk3si
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYcImQACgkQ2O7X88g7
+poRKA/+KteRS0wlK8SQDVyHFdHTQnYvGGa05SYjADBfLtDGk+VS/gV/mcY31a+Q
bXEjlVfIammDm6Psp5GVvcUthBkUfo2Vjnvdv+uVeERo0SDrY2ATTdoXUdjxKmaG
XLLUybB9mYyFybFk+AbUYBikIgs86f3OL0rX/nSriP7p6imL9t/HQJ1lQCKDIqKo
HVw+VhqBizOQgx6BVdCgga4hyR0zGRZ8mQKsMbrVo08t4UOLac2oSsA1HR7uGHrj
Nm4uoAKjf8mU8I5VzpJqVquB7HfpOoz6T84kyLxTTMwpdckdh14UkAlBLWgS78Oj
LoYoXRS76gLo9EgIpGzu/CIc2O5q+cvB24qbmI61Z4BbwRQHCgNNwExW/00c77AJ
t409XUa7A65Sogki7woha9tCzdiprnVfXrzEyOrnXELIfKj5Z+Ygab/x/7R2vqLA
2YtCL3NtRmhPVBOzthEVohQFiB/mD6WQQoNBo2Bl7yQcsr1VhEkhzIoFIBrvS4J5
tJ1hPExlSFD3btUllmNtkDXnVGiqEXdi1D7kzpvZva/WnNhrG6Pb8gzi6z/mQhiM
JGI7tcIyXE1fjAuKasuQZUNeDIJ6pbkt4DtQb6bgKetlPp3dKe8IMDLCvvqzTBwz
9aXHEz9GImTaEvOIgeHZANmqRZ7RFWcpaulzfAXrrNAFgyPxa7Y=
=g+at
-----END PGP SIGNATURE-----

--eab5rplsmu4hk3si--


--===============1873720435909617172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1873720435909617172==--

