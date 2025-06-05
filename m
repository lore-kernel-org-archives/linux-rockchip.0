Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC828C5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 11:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jBRzoW7nfhWstlc1KPkZkT6fs8mNOyONt+fX0j7YWw4=; b=mFbccHwWaMqVjwgZOR0Wqqu2Xs
	7PL3zBtVZFpDQpzjqCg1wFfg/wn+PiRCzz9URb8AfwXvaEWya8sfOEiSQ2+75hB3W5bYEajQ8leRw
	pNFo/ax9Z0vr3OcpM+EsjuZI0MJKvLClay3IORJELut1HfU6O5IHxZU1Ke1ge9dYk8Te23hq/Ev0c
	UdyZwBxnObJeI+lypHTJzIPBuQJ0CWh4BIcTk9u4ZWzWiJkeK2XD5WXV75PpXOZv68VNO9wAHpn/c
	6JzMflOf4mj7Mrgg6iEILeca53kf9QyaS3+opAYqpRBYNFs2fCytJpjdlXvmUSGgf+q1WAA4vP2PR
	ECQazSCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8by-0000000FLSG-3BDc;
	Thu, 05 Jun 2025 11:18:18 +0000
Received: from out-180.mta1.migadu.com ([95.215.58.180])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8bv-0000000FLRZ-2QIl
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 11:18:17 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1749122291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=13cxEH6HxdmpWJc8QzYDB4UlEOp0j6xlHHpJ/zaokQk=;
	b=TuKKKtNd+g/Kb3VvnuS++kfG2LyDperU5Qbq8xI3fnT6fUOx7xkBS5xYcoCwqDhJ5YHXiE
	fXRzVEGwfenIvRfOiUpCx1CSinLT3vQzp4iRybeLpaAZZb0adb7ICTm4+TNMHUZ0IgVoZY
	jUYxO6eTQESrTpvzdETOa/HOpInYxpJfI1THm4my2ruW8Ts8DScWwxHg/v3gpBNNdwcDNW
	Nk90mY832LDw5jfsa7slPZRxByPsqPqykxh+zRbCwsFvSiQ267wNLI5UNTGe3xpRApFtwe
	nVKFltZPau6NkQOotaEEsbOD92tyU2K/SYxTZXZx+KJXIeYqpZJEx7fZ4N9IxA==
Date: Thu, 05 Jun 2025 13:17:43 +0200
Message-Id: <DAEK3EQVNWQX.24DOM2VICSGCP@cknow.org>
To: "Alexey Charkov" <alchark@gmail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on
 ArmSoM Sige5
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com>
In-Reply-To: <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_041816_325878_6BFB6A65 
X-CRM114-Status: GOOD (  10.44  )
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
Content-Type: multipart/mixed; boundary="===============0514306212953325314=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0514306212953325314==
Content-Type: multipart/signed;
 boundary=9a3e5395647fd1bec2889ce64d9b6b8ce6ab0473fcc5380cf846fa546bd7;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--9a3e5395647fd1bec2889ce64d9b6b8ce6ab0473fcc5380cf846fa546bd7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Jun 3, 2025 at 7:01 PM CEST, Alexey Charkov wrote:
> List both CPU supply regulators which drive the little and big CPU
> clusters, respectively, so that cpufreq can pick them up.
>
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3576-armsom-sige5.dts      | 28 ++++++++++++++++=
++++++
>  1 file changed, 28 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/=
arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> index b09e789c75c47fec7cf7e9810ab0dcca32d9404a..d9c129be55a0d997e04e6d677=
cdc98fb50353418 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> @@ -207,6 +207,22 @@ vcc_3v3_ufs_s0: regulator-vcc-ufs-s0 {
>  	};
>  };
> =20
> +&cpu_b0 {
> +	cpu-supply =3D <&vdd_cpu_big_s0>;
> +};
> +
> +&cpu_b1 {
> +	cpu-supply =3D <&vdd_cpu_big_s0>;
> +};
> +
> +&cpu_b2 {
> +	cpu-supply =3D <&vdd_cpu_big_s0>;
> +};
> +
> +&cpu_b3 {
> +	cpu-supply =3D <&vdd_cpu_big_s0>;
> +};
> +
>  &combphy0_ps {
>  	status =3D "okay";
>  };

The &cpu_bN nodes should come after the &combphy0_ps node.

Cheers,
  Diederik

> @@ -215,6 +231,18 @@ &cpu_l0 {
>  	cpu-supply =3D <&vdd_cpu_lit_s0>;
>  };
> =20
> +&cpu_l1 {
> +	cpu-supply =3D <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l2 {
> +	cpu-supply =3D <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l3 {
> +	cpu-supply =3D <&vdd_cpu_lit_s0>;
> +};
> +
>  &gmac0 {
>  	phy-mode =3D "rgmii-id";
>  	clock_in_out =3D "output";


--9a3e5395647fd1bec2889ce64d9b6b8ce6ab0473fcc5380cf846fa546bd7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaEF86gAKCRDXblvOeH7b
btTlAQDI6lgSC9KhTjsX1bMR1+ahztGxcgRpovUts1PqDZ5LkAEAomVjXYHvh+hm
ilgYDdQ31HkVBaW8QO6e4mmm5NYzGAE=
=aDIe
-----END PGP SIGNATURE-----

--9a3e5395647fd1bec2889ce64d9b6b8ce6ab0473fcc5380cf846fa546bd7--


--===============0514306212953325314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0514306212953325314==--

