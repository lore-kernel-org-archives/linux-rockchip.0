Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B6D3E674AF
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E79jeX6/2mIqS0kITZgKJV9wOQTzC8AFmmIMOhUJzes=; b=D74Y3ZEr3K/jiuQs2Qg2rSeEmv
	ERsJIyvizFh6WsfVUj+K7s4IwPei/v6q3efQ873sbz675z4g8O5VqUpcnkuwS92UxJ1K0MxwZVEWq
	jqFF4uBXqHYMqeqULLlldozT/CQZRhqnlgBgdG/AFwm3f4ZFU9ZCMUCo1eng3Zkf2mjpN8rjoQeI9
	02TWC3xtLgHACKuSO9TX2M5z8lfRJD93vXCZnE0xJ4YZuns3Mr5TCi6ex7Ty/ynj6lDhzd85yDgdz
	7q09+eUj9G8NvwBy4xbqlfBuqfnQZD5kqtWo8IOCMQ+OdhzeYykCQOJZFecqL26+kXmjOUntV9hdf
	T19Pi26A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg2Q-0000000Doe2-0oR6;
	Mon, 22 Dec 2025 13:33:26 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg2N-0000000Docr-0bI0;
	Mon, 22 Dec 2025 13:33:24 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1766410379; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=euv+u++lrBDdHfL/UveqiiNdvqYsULgbwGwJ606ibleQy3JzBUf97GfdEeY47aDhJR2gP0pYVm/Q2iaeB3FNFdH2jqOnAU9C2YgQ9gikt+wMfZLUYQZdz7waqv9kUY2cIqfitTjRcrdgX4YiKX2fP6FaAHTo8RJNrDSWVzF2w0E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1766410379; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=xIQHEpYlJdjAzhSSiNHyixl/z+6+WF1tijlCEgseJiQ=; 
	b=MC8cftZ4Wh4hyIumUsTMAmISv5hgKEkPXguuFGIUwCyJB4sGqTN66OwyPe3jMVqzOWC69YZ+7ae4d/VmjlWt806zg/IhbC1Z9x1t3glIIQ1WYN4+UBfr+IJTQXzokViSG5AyaK2WUI7nuuYvM6BcfknsD0pvUzhAbUARfjkMxyk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1766410379;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=xIQHEpYlJdjAzhSSiNHyixl/z+6+WF1tijlCEgseJiQ=;
	b=U9CcIWgzlnf3M1Uf9mk7bDddsdZxtOg2plSWZjj8XrKbU5Q/A275Y/q6MO8tZRLq
	P/qtGRy31txKLEmk6NA4hg1y6/xC3Dawv7U/Qn2jwzX2Eg1kCVVK167eIKP6XQtxxW9
	wfZ0JPyR4I89UUe2Vb+rtOtPsES691q4OqBPZxp8=
Received: by mx.zohomail.com with SMTPS id 1766410376673158.54540855926552;
	Mon, 22 Dec 2025 05:32:56 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 13169180421; Mon, 22 Dec 2025 22:32:53 +0900 (JST)
Date: Mon, 22 Dec 2025 14:32:53 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: enable saradc for ArmSoM Sige5
Message-ID: <aUlHa-QhCLOk8AGa@venus>
References: <20251220100010.26643-1-amadeus@jmu.edu.cn>
 <20251220100010.26643-3-amadeus@jmu.edu.cn>
MIME-Version: 1.0
In-Reply-To: <20251220100010.26643-3-amadeus@jmu.edu.cn>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/266.382.52
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_053323_379837_80645B83 
X-CRM114-Status: GOOD (  17.01  )
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
Content-Type: multipart/mixed; boundary="===============3516530826194383475=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3516530826194383475==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fqerxpmbaspw64pr"
Content-Disposition: inline


--fqerxpmbaspw64pr
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: enable saradc for ArmSoM Sige5
MIME-Version: 1.0

Hi,

On Sat, Dec 20, 2025 at 06:00:10PM +0800, Chukun Pan wrote:
> Add ADC support to ArmSoM Sige5 board.
>=20
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---

The reference voltage is different between the different board
revisions. Older boards (1.1 and 1.2) have SARADC_AVDD1V8 connected
to &vcca_1v8_s0, but newer boards (1.3) use VCCA1V8_PLDO2_S0
instead. I guess considering &vcca1v8_pldo2_s0 is marked as always
on, we can ignore this difference, but I think it's worth a comment
in the DT and the commit description. Otherwise:

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/=
arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> index a0d8f52a706f..d372ba252af8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> @@ -897,6 +897,11 @@ &sai6 {
>  	status =3D "okay";
>  };
> =20
> +&saradc {
> +	vref-supply =3D <&vcca_1v8_s0>;
> +	status =3D "okay";
> +};
> +
>  &sdhci {
>  	bus-width =3D <8>;
>  	full-pwr-cycle-in-suspend;
> --=20
> 2.25.1
>=20
>=20

--fqerxpmbaspw64pr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlJSIQACgkQ2O7X88g7
+ppiNA/+Oz78Q2ztqHrQtTLANPeQP2v3zZOQNOq3eUh37wBDzqR6NPJp/jgf56d4
JYluiTzA/Wc2O55RRMQwzm50fDYR+4sYiQnS7iv4pf9re7amtGEAUYM+Qi0RMJ4u
Ff7DJKq8h52cIwKKwZyPAJPBplMYN2jjMYB9fck1s81VJnY0yVEqSzCmdgYA+NHu
rmEFp0RJWGYqbvoa5F6RUrjkpR0LpxxYVrPAdrNyh+I3ASzkPzx9EaxfQDdfPN0M
kxNqUNQ4tEkuJTTq5NSGJLeQkYULB0+0bbRMov9KU5pG5Hjng3ExHMXrzRMSyl5a
iJ/McrXu+PAp0MUjXVjt4eEMaqHnYVn0n5DWs0NChJ2+ebGigtXQAAcF4C8ME+YK
FrdU2C3+lYw/XVTSHFoO434BPfQUOoF0VvvqVXtIAufLgNpzy8HtpvVtNdjZulkU
E/a6qxrOjdChJJIiH4QOV/HBPOx3RPeLWL2y/6BFIZkYkrKDY9zdK1qnw/05S3PB
6py22qpb8sQ9PnE+0xnu+S+PauFu/i2KviLFBSpASae70tVuFZBg0gK3t2tK122V
w7LfdYcriQXK8QLNVCTn8YWCmNA1BRqe3k9WCC/8P/XtepI6OJwrX1ogCmScoTqp
psWg7UDw6A5UqSMjWdY/lVZ8mha+7BMVp3cf1mwXme0+dcyIzsw=
=YKZm
-----END PGP SIGNATURE-----

--fqerxpmbaspw64pr--


--===============3516530826194383475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3516530826194383475==--

