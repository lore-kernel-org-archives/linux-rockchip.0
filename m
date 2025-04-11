Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 304B9C36010
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 12:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hu2ErCbGAxSMs2uOL88vdL2lvd8KfDWB/W4N+PIX/w4=; b=bFhn3a0+JLT4W3M4e2WAknDQMU
	eoiwzqFod+U4guoMeZ4KFUNWXO5JOzckUlxG7ekcAhm2RY1ms3ZYKM4nfhFsMzBQgSRIMvFtF8Mh7
	/JM6qPU3ZHaWsjqS+/oGUVg4bOs6DZlMmUYwHS8JLgDPcbJ4IpiLR89Ca3uS7+Y26lkbeJOBDxk9u
	gVi/+KLw8SCs6gXiIfXp5X4GH2+DzI8n0cPT8FF5NEbC8q8BUt+fRLUgaECf5I7JOPrv5Smgl7KKd
	666Z4bxmgXKyGkyhrvAbYzifo7H4XA76E0ymNhvAduBSwawh7x1vhs5veJKq7qNLjYjUTLmzgzO2e
	UUp/RlzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3Dn6-0000000DnMZ-18t9;
	Fri, 11 Apr 2025 12:47:28 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3Dcf-0000000DlJ8-0FLn;
	Fri, 11 Apr 2025 12:36:42 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1744374996; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Z2BghWrAKiUotlAVU/k3Yodv4OdFxYLO33Tib6mF667GaBi8+I34ya8GHOrPpsFUyLRNjpPN52f0pYLnqYdtFfcx0ef9bXV0J5lyX7ALMNtZlAZPCCk8+Emf+mJJCAErEEodVA8ceVv7DOqyPfsPWdNnCwIlS77hX4viogKzZ9Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1744374996; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Pl05Da7C3vz6G/H2IKlSjFxpaCyLWPpzmBcWtm8HlMM=; 
	b=nFORDdQXA01Vdu2VxbwlrunBZMVKMa9Pf9baXbUSLSGilNg53tpQ1W9gTgxr6sG06wwn1rGjyp/In4oq28OYqbIE6oxyFJSHyE2CZUKGYn0cU845xElOmQoBz833YMODT8V5qJg0XihmIauJ8lm7TNfsDu5mYpiZY60wEBCMDus=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1744374996;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=Pl05Da7C3vz6G/H2IKlSjFxpaCyLWPpzmBcWtm8HlMM=;
	b=CPPXP7mB1N0G8YugQE+svNa7kN5wdFLfAr1TGWzzCq4i6dbpa4X+ydymS7/EhWgE
	dyrswrDhD/3fHN2xB8shD6/ok05ZbOBC8mjVWkvpVuMDG288KCTxhwQqOZbykuKK9Iz
	bEEEZvAk2eKGIrIsyiKPzPDq6ysFarK95jcSLXJk=
Received: by mx.zohomail.com with SMTPS id 1744374993419573.2779806109937;
	Fri, 11 Apr 2025 05:36:33 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 7FFA51801EB; Fri, 11 Apr 2025 14:36:30 +0200 (CEST)
Date: Fri, 11 Apr 2025 14:36:30 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dse@thaumatec.com
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: add and enable DSI2 on
 rk3588
Message-ID: <4pygfbajnn4g6nt5jdzdymp6ukwft5qhhll4c3urmefgchmx5j@iwzmdsyq3dqq>
References: <20250226140942.3825223-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20250226140942.3825223-1-heiko@sntech.de>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.2/244.360.14
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_053641_172920_730BEDCF 
X-CRM114-Status: GOOD (  16.68  )
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
Content-Type: multipart/mixed; boundary="===============7845160867890079218=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7845160867890079218==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tqddv3vmsx3kze6v"
Content-Disposition: inline


--tqddv3vmsx3kze6v
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: add and enable DSI2 on
 rk3588
MIME-Version: 1.0

Hi,

On Wed, Feb 26, 2025 at 03:09:39PM +0100, Heiko Stuebner wrote:
> This adds the dcphy and dsi2 controller nodes and adds an overlay
> for the Tiger-Haikou Video-Demo adapter that provides a DSI display.

I think this can be merged now, so that I can send a patch adding
the RK3588 EVB1 panel in the devicetree without having to specify
any dependencies on other series? :)

Greetings,

-- Sebastian

> changes in v3:
> - rebase on newly added overlay-test-infrastructure
> - add reset-gpio to gpio expander
>=20
> changes in v2:
> - adapt to changed dcphy binding (phy-cells =3D 1)
> - tiger-overlay changes (Quentin):
>   - drop forgotten hdmi-connector node
>   - improve description
>   - fix node sorting
>   - drop unnecessary pwm-pinctrl (set in tiger.dtsi)
>=20
> Heiko Stuebner (3):
>   arm64: dts: rockchip: add mipi dcphy nodes to rk3588
>   arm64: dts: rockchip: add dsi controller nodes on rk3588
>   arm64: dts: rockchip: add overlay for tiger-haikou video-demo adapter
>=20
>  arch/arm64/boot/dts/rockchip/Makefile         |   5 +
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  99 ++++++++++++
>  .../rk3588-tiger-haikou-video-demo.dtso       | 153 ++++++++++++++++++
>  3 files changed, 257 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou-vide=
o-demo.dtso
>=20
> --=20
> 2.47.2
>=20
>=20

--tqddv3vmsx3kze6v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmf5DM4ACgkQ2O7X88g7
+pqUHw/+Nf5gsmCdCh559WvamUyOxdMHUed8EwFz9zqglvZN58ibQRL6awLyI/oh
N9mxk0QkExDpfBzD7Dy9GSrZ5bs7+Tg+LlMbT7Jq3NcLhkUZLk29hJA18S1+4I0U
KurrJqF/baxgDcAT1wbmYG/7avHqiG54lZKMksGis+OEOQQ8XZkxd9E9TXyCTG3V
8ylbmgV4lZC0JId2ESy2AuMidpvw83cFhRM5FNdlEDXgs2hLkbRCn9kkZew364mw
O9qooKKVI3Z6QlKCKvlpJd17HOdAeezNrXScpYPh80bNi69LMQ/PUOVDON0Eni/S
ikvRVlK4kuLXYxznAQqfLelPvu1rAVuqxsmq8xoBhsfOnpklr5jTpyEUX0BlaU9M
viuldgbDp6DrcbMsJVCGZxVTjWqr4WrY01v7aO7Js9/oqkk5xjF45w2X0nQxzF/v
5AJ5EuKN4JqvD1m7dFqvRJXBP9yJPxTP8wIekiYWka0EZfiF8WJHlHndZFWj0dWl
eCt6MSwS038x+GZfbLSl6/wy87IT5EmmwutEtkCV5LOrPT22kyjvtyq2m3IHjwmK
T7i75CmZfwuyHYlgKHekhZlOnBBLQ09zmc3kxsaciI2B8I5YhAFnLF55TiUwnFmq
09LsWD9M3vRXCvAXWSw5dJgc0ZxxbOuXwtWmOFDmjbe6shm0RxI=
=UWSi
-----END PGP SIGNATURE-----

--tqddv3vmsx3kze6v--


--===============7845160867890079218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7845160867890079218==--

