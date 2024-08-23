Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14234C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 16:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AZXC+r7Ag0IIVorF1dzyetOPKA992hldJFuNj9aM8Y0=; b=WMweW6jxGS4rZ9gUYBRxnYLdNL
	kehTmMrWGe2XbbOVTn6G5fApzzHE3TtP7OzyMnkmkWkY9HDsdlhFgI+vgnzdKtVwfGKvpr11Lsm6A
	XTvLzYMvuKEk/1QpsoaJHoyGO63Uz75kWsLy6nh25cbQ/MQuC6ODyVw/82jzREL0cGaqj+/Uum1T0
	7hRNE0q2osUo5eHFR4/WmU14SvmWdpRrQQGiqcvSQU9ZkhVYId3G6wzK/S4NeySYsE1d/yHNqqoa2
	1611uXeGC8ScV3fB9tHi+zCg7MsG6BnIO+meJGwEPzeGPOLGwZJz5baC1eQOQ9KVXeyMC7umssyhW
	ofRndlGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shX6Y-0000000HY9g-2DKD;
	Fri, 23 Aug 2024 16:25:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shX5m-0000000HY3q-21S2;
	Fri, 23 Aug 2024 16:24:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A8A0B608C0;
	Fri, 23 Aug 2024 16:24:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26484C32786;
	Fri, 23 Aug 2024 16:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724430289;
	bh=TqRnUiE/xdVg1tvwkdwMgIZPeAZqU1OchS7C11W338g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lb12S9uUXo52XJC4u1NIMjE70+xhMeoEPldGQHVd9wilYEp4Ij6cepdZDuMvQPje5
	 VS28NV5mUyM6R5q6EgVa9TSpm+kIj4tgSVvWzCwz8aAMVrYYTbdQ1WjnA6Ra1wNBM7
	 Rn1jW17DRvtDKe6qej5hwlxq0hHVvqhAik3QEpGAKhXdfxYCFQLfJNuwq6JQqb7cFm
	 b2TqxYbALK3e64Ko67xBUeaMXxZNbHpn0+Z82hAyJbnPhlRg8fjBCmrzlXthItjmCx
	 H7ji1MJMFwBccy7fxknkLSHqWbfz+twvIHrz/KXYHxrN4+CJgAmLI9kA7sTZu+raty
	 aFr8ZIjycpltA==
Date: Fri, 23 Aug 2024 17:24:45 +0100
From: Conor Dooley <conor@kernel.org>
To: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, alexandre.belloni@bootlin.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: Re: [PATCH 5/8] Documentation: bindings: rtc: add clock-cells
 property
Message-ID: <20240823-custody-earache-1396c4b236cf@spud>
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
 <20240823153528.3863993-6-karthikeyan@linumiz.com>
MIME-Version: 1.0
In-Reply-To: <20240823153528.3863993-6-karthikeyan@linumiz.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_092450_581969_7B2CD0FB 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============5341859175041361761=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5341859175041361761==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Q3Nd/m88OgL6Pptl"
Content-Disposition: inline


--Q3Nd/m88OgL6Pptl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 23, 2024 at 09:05:25PM +0530, Karthikeyan Krishnasamy wrote:
> consume clkout from rv3028 rtc which is able to provide
> different clock frequency upon configuration
>=20
> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--Q3Nd/m88OgL6Pptl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsi3zAAKCRB4tDGHoIJi
0nEfAQDGHakq7Gztov/swTcRsjry/zCl6l1+C5wXiAppsCVOMwEAgBb1+RDwUKTU
TWVZ+CJ7ab62HdTar1ADD15iu7r6+gQ=
=LfDy
-----END PGP SIGNATURE-----

--Q3Nd/m88OgL6Pptl--


--===============5341859175041361761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5341859175041361761==--

