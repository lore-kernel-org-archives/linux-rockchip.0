Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72A07C52D7D
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 15:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LDSeP/ru/bdZw8+GCW6mmebp1Vup+W12+FEMv8MLacM=; b=myjC5rMJnW0iLWpDqMUdv7gPT4
	BVzA9n/UtvlkQOg9JqgaY+pZZFLCzMKD1nPCK/aWChKRJeDWn+8cDzsz/6aRsdBge8YquIP3k7YJj
	iIL9ijXrGGs9ajyzi5HaZNiW9RLyeA4fQ5vPRXBxihE+gjNMfTNPMmkuX+8CY4HtUjUvpDSJEQ/Hr
	aqpABal1ena57KZ1Q8UUim1j0wxLQ03vA9kT5gJY1dup6bm+nIteoWrwkFHuYbiyfwkRI4jhPvMOD
	WRWLBYvIy3s8aJBcdDL0cg6NOoDfO57ygYAllse1FMsBk2Lp+9r2SPqaBOS/9YpUxkIq+siODCtap
	f43SA8Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scR6s-0000000BdOL-2ewL;
	Fri, 09 Aug 2024 15:00:54 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scR65-0000000Bd2G-3eb0;
	Fri, 09 Aug 2024 15:00:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 34E43CE1791;
	Fri,  9 Aug 2024 15:00:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 430ADC32782;
	Fri,  9 Aug 2024 15:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723215603;
	bh=yhbalDZ4n+KXBlHEaICRjuhrGYBlgbXbkFlbN8T+NME=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U/GAU1KzMAacdiUBmE1dxn6Jy7KKiIRrEDuWVrMaQ1RM9ouvlOTP/kqh/IgXd+5oS
	 rgiJyjktTWrxRqUY0gDEGTak3cdei1x9Sm+JqJSWETn3dR3Zn91b3lVNSENafy+z5y
	 loRH3clod5GDAT0/YTSjSsBeBYUPrb62U20vwO1dovDPaQ9L1OSfZ+0YbX2s7tcw3p
	 nuRNPzcUBjUs5lovUAuq2RFZdDgql0zd/PyQZPd+Ts831K4b9XX/yLc1G5QUwTusGQ
	 J4WX8c+X+9mqAJni7GlnYUmfBMhD9ctmDmCY7hiPZSr8wMMdDhEkatGUdwsilK7M4U
	 RIa5rs3b0IaHg==
Date: Fri, 9 Aug 2024 15:59:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>, Arnd Bergmann <arnd@arndb.de>,
	Elaine Zhang <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v2 1/2] dt-bindings: power: Add support for RK3576 SoC
Message-ID: <20240809-constant-oxidize-8aed145179c7@spud>
References: <20240808163451.80750-1-detlev.casanova@collabora.com>
 <20240808163451.80750-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240808163451.80750-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_080006_298433_8AD4F9B8 
X-CRM114-Status: GOOD (  19.11  )
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
Content-Type: multipart/mixed; boundary="===============2695220594330015454=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2695220594330015454==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+eX86es6cMT9cLlU"
Content-Disposition: inline


--+eX86es6cMT9cLlU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 08, 2024 at 12:31:04PM -0400, Detlev Casanova wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
>=20
> Define power domain IDs as described in the TRM and add compatible for
> rockchip,rk3576-power-controller
>=20
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> [reword, add yaml]

To be honest, both here and in your other patch, you should remove this
[] section and add a co-develop-ed-by instead.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../power/rockchip,power-controller.yaml      |  1 +
>  .../dt-bindings/power/rockchip,rk3576-power.h | 30 +++++++++++++++++++
>  2 files changed, 31 insertions(+)
>  create mode 100644 include/dt-bindings/power/rockchip,rk3576-power.h
>=20
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-contr=
oller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-control=
ler.yaml
> index 0d5e999a58f1b..650dc0aae6f51 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.y=
aml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.y=
aml
> @@ -41,6 +41,7 @@ properties:
>        - rockchip,rk3368-power-controller
>        - rockchip,rk3399-power-controller
>        - rockchip,rk3568-power-controller
> +      - rockchip,rk3576-power-controller
>        - rockchip,rk3588-power-controller
>        - rockchip,rv1126-power-controller
> =20
> diff --git a/include/dt-bindings/power/rockchip,rk3576-power.h b/include/=
dt-bindings/power/rockchip,rk3576-power.h
> new file mode 100644
> index 0000000000000..324a056aa8512
> --- /dev/null
> +++ b/include/dt-bindings/power/rockchip,rk3576-power.h
> @@ -0,0 +1,30 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> +#ifndef __DT_BINDINGS_POWER_RK3576_POWER_H__
> +#define __DT_BINDINGS_POWER_RK3576_POWER_H__
> +
> +/* VD_NPU */
> +#define RK3576_PD_NPU		0
> +#define RK3576_PD_NPUTOP	1
> +#define RK3576_PD_NPU0		2
> +#define RK3576_PD_NPU1		3
> +
> +/* VD_GPU */
> +#define RK3576_PD_GPU		4
> +
> +/* VD_LOGIC */
> +#define RK3576_PD_NVM		5
> +#define RK3576_PD_SDGMAC	6
> +#define RK3576_PD_USB		7
> +#define RK3576_PD_PHP		8
> +#define RK3576_PD_SUBPHP	9
> +#define RK3576_PD_AUDIO		10
> +#define RK3576_PD_VEPU0		11
> +#define RK3576_PD_VEPU1		12
> +#define RK3576_PD_VPU		13
> +#define RK3576_PD_VDEC		14
> +#define RK3576_PD_VI		15
> +#define RK3576_PD_VO0		16
> +#define RK3576_PD_VO1		17
> +#define RK3576_PD_VOP		18
> +
> +#endif
> --=20
> 2.46.0
>=20

--+eX86es6cMT9cLlU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZrYu7gAKCRB4tDGHoIJi
0s5UAP4vbdzxFL2Sgz8Fv4uo4X1C/GLB38OueD06clnzoinFwAD/YJlXEhpLtmS6
dr1+zxPIPJNrVC00le0J90ylsJjcLwc=
=SrCh
-----END PGP SIGNATURE-----

--+eX86es6cMT9cLlU--


--===============2695220594330015454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2695220594330015454==--

