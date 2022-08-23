Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E09AFC32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 16:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ARIkaSClzZvX5H2LStQeXToiQzK3f0t6GO/7Urc2Trk=; b=nhv1wuAfEa3kLxak0msdF6orbp
	RC9YdEMpin4ODzM04DrM6LBYDV4Tt5zAL/PvF9CXn4QB3kk2gFkNVCavZhLPTXZWP7xgY4uNLK3G6
	RoH/tNtvYFhyv5luWcFDM8gpbdFILVO4nNZIl6hvBAwWxmTjRHc/AlzvbKo+aOGHkQtAzX6D0x6Vy
	/FVCiKa1a+PDvXx2KQOg4Vi76wtSmE6EQfSm8eg4n7oPilEGv43O/uKqwUbp7C9qhJ1OtswIR0ia0
	I7M5tGfop6BB3DjuMv3gR7Wd19D5RrDYmANR7lYi92/DkZcSmvR5F8vqK6QP/oPJSJrQI1HnYJr97
	xo6eQmJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQWsZ-007K5F-48; Tue, 23 Aug 2022 16:35:51 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQWsW-007K3c-FN
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 16:35:50 +0000
Received: from mercury (dyndsl-091-096-061-143.ewe-ip-backbone.de [91.96.61.143])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E72116601E65;
	Tue, 23 Aug 2022 17:35:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661272543;
	bh=I6/l5FGc7ng1XkPNikT1+GnIIzKiHFAjYhBWZniQqKQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LTvZeaO67T89sCDY/LfxjlPyaxUmC5spbMAWMBgrLvVvGqNwBg/v9UwAtxSt/FGyU
	 T9KsVGgM48VVpgrt9HYfphE+25n7pWC9FTxSqt5YrVwFTGpz5vwmJCyn4Kyw0Fkm+o
	 Mp+bbLWjcncgLGTEC32GSjaW7pROWNSMs0pYzwcUeHmiyR2/QpbfmHFuOOYuOzM6Nq
	 2J0E/SUzCR1P7/ueMhZ1aSyNYV+0wpgQ9YvpDyyDddCVOlONnx213wxA5NLvx4Flpo
	 OQMbWwHC6PEo4slCYRDf76Bhya7uwTXHEt0D5h1pV2ezcYQ9jPV59c2pQXl1vDvKeS
	 Y02efsHVpXBZw==
Received: by mercury (Postfix, from userid 1000)
	id 9688210607D1; Tue, 23 Aug 2022 18:35:40 +0200 (CEST)
Date: Tue, 23 Aug 2022 18:35:40 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, zhangqing@rock-chips.com,
	zyw@rock-chips.com, jon.lin@rock-chips.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	lee@kernel.org, Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH v8 3/4] power: supply: Add charger driver for Rockchip
 RK817
Message-ID: <20220823163540.dg2z7fngaqklejvx@mercury.elektranox.org>
References: <20220808173809.11320-1-macroalpha82@gmail.com>
 <20220808173809.11320-4-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20220808173809.11320-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_093548_769960_6340B5AF 
X-CRM114-Status: GOOD (  15.59  )
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
Content-Type: multipart/mixed; boundary="===============4817417816452715904=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4817417816452715904==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k5vvuauyyxuzzv7f"
Content-Disposition: inline


--k5vvuauyyxuzzv7f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Aug 08, 2022 at 12:38:08PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add support for the Rockchip rk817 battery charger integrated into the
> rk817 PMIC.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---

Looks mostly good. Just three things:

> [...]
> --- /dev/null
> +++ b/drivers/power/supply/rk817_charger.c
> @@ -0,0 +1,1151 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Charger Driver for Rockchip rk817
> + *
> + * Copyright (c) 2021

The Copyright line is incomplete.

> + *
> + * Authors: Maya Matuszczyk <maccraft123mc@gmail.com>
> + *	    Chris Morgan <macromorgan@hotmail.com>
> + */
> +
> +#include <linux/mfd/rk808.h>
> +#include <linux/irq.h>
> +#include <linux/of_gpio.h>
> [...]

Why are you including of_gpio.h? You are not using any.

> +	INIT_DELAYED_WORK(&charger->work, rk817_charging_monitor);
> +	/* Get and populate the first set of values. */
> +	schedule_delayed_work(&charger->work, 0);
> [...]

what happens with the delayed work when you remove the driver?
Check for devm_delayed_work_autocancel().


-- Sebastian

--k5vvuauyyxuzzv7f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmMFAdEACgkQ2O7X88g7
+ppU0A//Yz5BcYSiP+zyEzc3W5m3O+PVqEUTr1SyNqEARs3Su6fNpDlNiXQonkya
U4z59eDVQxQDPb3Am/KQucBJFy7stxk8yO5iRWhhth58Jw6RiEfaW/fwnRSQLjrY
6o/vjCM3eqB0mHjdzEbA5pLHpBCWQuA2iBM8V+FjB7tMUH72xqn8ttrXRXc9NgFJ
q2BVbhlfolxl2CkukIK1idKPOm0OyW48MIVygKkZL8BOXpjrryt9WeFDpmoqriLL
noo4DBOXvBAE1qnh58qGAp1YANsHO9zK6DB7OydvIst2LDpn0nC94BPvSmDPr94R
/GiRcK3FnNUcuYGg9uSy82EufO9p6zSKL37EN2Ly3DLVzyQ3r8f7KRUQGiksfx04
bd+Z2oELZ2X9lLxnPE0Ti0YI7pElfnkB+IMhQi2mUIUSeFbhvmyyhbfrbLAIatII
tfqYCLTJVHSl3iogbhOgXigROAs5qO5hBz/FESIxNDdlwTIjAsIVjzI0mfHN6uWf
GsmA9xm05An72dT1QGQPR4ebZnKS0oCABwKfSYWtLruJqpvVM3S/jEF3tcgEogoJ
QvNT4ExsjxI7tdjfu5P9f3tVKfAcl/p6gVtMJvn/rC4XeNAtarYI8Z1KXoy02Aq5
iU8psfucnjtIDrwssc+d+hcF+v41sKS/QPA0zlVt6fp3FXfTPVM=
=eosH
-----END PGP SIGNATURE-----

--k5vvuauyyxuzzv7f--


--===============4817417816452715904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4817417816452715904==--

