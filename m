Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48B5BECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 11:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zgFiTdpeghEeQ1j5Xsx1oCmx5zrxkPsgLGVLWP8wXOE=; b=IHpE2g575DrmhkpUe8KS+rRuTn
	8MZuNr7fiOPSs65EGav6F6THX0au2oFIYPjD4zdwj9vJyNqdioZ5aILGYsCx6awvsS57RGmpmLoIu
	RkCFfR0NKhiiBThxM6h875Bo5AQ5EbOvBjXzzretsNP8zUY55+5i65dV+214O3oNDw2NJefGnb6Xx
	NO2tGMRKjJ6K6X6BvOMfX0WELopBkzUZCvLaGvN2oq8ISCpWEIIIxqdRJavwz8xARew305cjKUu4i
	XiayaroHc+bY3JZkMY9UiogoUitXJAD88Sq2E5Ydu4i9JLfn+qzT6/FB+PxrlvCPtF9zMwMUQRNI2
	dlFUqW/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTiVI-00BOGX-3o; Thu, 01 Sep 2022 11:37:00 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTiVF-00BOEb-I7
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 11:36:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F20C8B825B0;
	Thu,  1 Sep 2022 11:36:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68177C433D6;
	Thu,  1 Sep 2022 11:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662032214;
	bh=ewEocTavTH3WLePXZx0WQKi1iSVGpePM071lhwzenwE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kSK4p/lXj05Q+pMU3J2fEreCJ3o+u3JqJj1NnO5KQgfiQWsRLQgzgS0Vl9g7snOqm
	 XK3XzY2Lcu8oxeia2I8g2AwxrFl5/F7WHWYCanDC5OUqiTTqZ4WX+oEid2L4q9uCd+
	 owyQtj+gx4VuYUOQlK1PuPRIn/O6dXghOPdDayCTQlUI5FtpMNDHpH0duO5gSnJP2s
	 JLVIo2U41WbZFkMC2amje8hFjb8A24UC1y8YBEXO6KAIxq6p8iXkn5v1lEcEUbl+w+
	 mTJxbYwc4iFIDnQ8mapI24FiM5FyjR++TIrOCY2CObdcm0XDQGztwJebQ4eaFjEc3u
	 xL/mZdzJ2fqSw==
Date: Thu, 1 Sep 2022 12:36:48 +0100
From: Mark Brown <broonie@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	shengfei Xu <xsf@rock-chips.com>
Subject: Re: [PATCH 12/13] regulator: rk808: add rk806 support
Message-ID: <YxCZUGPVQwrefLJi@sirena.org.uk>
References: <20220831215437.117880-1-sebastian.reichel@collabora.com>
 <20220831215437.117880-13-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20220831215437.117880-13-sebastian.reichel@collabora.com>
X-Cookie: This bag is recyclable.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_043657_773088_5DB8C284 
X-CRM114-Status: GOOD (  15.97  )
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
Content-Type: multipart/mixed; boundary="===============0851112611659580192=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0851112611659580192==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1rNgShYEpulPv2NW"
Content-Disposition: inline


--1rNgShYEpulPv2NW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 31, 2022 at 11:54:36PM +0200, Sebastian Reichel wrote:

> +static int rk806_get_reg_offset(int id)
> +{
> +	int reg_offset = 0;
> +
> +	if (id >= RK806_ID_DCDC1 && id <= RK806_ID_DCDC10)
> +		reg_offset = RK806_DCDC_SLP_REG_OFFSET;
> +	else if ((id >= RK806_ID_NLDO1 && id <= RK806_ID_NLDO4) ||
> +		 (id == RK806_ID_NLDO5))
> +		reg_offset = RK806_NLDO_SLP_REG_OFFSET;
> +	else if (id >= RK806_ID_PLDO1 && id <= RK806_ID_PLDO6)
> +		reg_offset = RK806_PLDO_SLP_REG_OFFSET;
> +
> +	return reg_offset;
> +}

Use separate operations and/or separate data and decide at probe time
which data to use for which regulator, don't have a switch statement at
runtime like this.  This reduces the amount of open coding in the driver
and opens up more opportinuties for improving things in the framework.

--1rNgShYEpulPv2NW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmMQmU8ACgkQJNaLcl1U
h9CRugf+IFSbYZyNpZZAJ0NCoJUOq60Qb6DA8UROFSEA3TkVEQoul5Ham4Yrq7it
FHsju/eJgQi3CQ4N2qArbobHqmpOb71XeSqzDO1k88n8cO8PZnf2RF0abTLWSrt/
OHzjVdsoX2RACLl1yO60Q2qSLXK2/J/txmXjnA2Qpbrhso/dys/WP7dQ5JazLp/P
tWJwTdGN0KU/gnQOHJ5zArfIn0lOAtj6pvm0r+m8/IGt9zqOth7sWnTpv2MEhMIO
ur6TaG6fJeFbL93iSH0aGw2OpDTixVR3OXOtt6zjPbWGCJfepDEQRVQXLzyMCyNd
ASmRWm8owazfYIqvvbLo1NGLW2giug==
=xni7
-----END PGP SIGNATURE-----

--1rNgShYEpulPv2NW--


--===============0851112611659580192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0851112611659580192==--

