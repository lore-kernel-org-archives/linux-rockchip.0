Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D823CEE0206
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 18:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SrrZMIh3pZqBtS4q6Uxp3LcfTZfgL9irbM3M8s/9vv0=; b=bScsVZzdgQ1L8CYiqbvILJ7JnM
	tzoPt2JE3N5ZmtYX/d8GWxprkXFqND36F1Xb0DQ0asjO7y28QI4DH7swSHqNC7XeIy+E+IXvJFhrR
	jBaT7K9TtZCNeOFv/7FXYnemmiTo7ka7cgUYrxW5mikEIau+Vi7Qi4vy8QXOQeCM5oJ4gPbdMl6bj
	5rtnv0KlCj1Kf3khkXoJ6zN6BBTmTVgnGAdsMoMhaEHHkmD7/yN82X4WjT7iU+yOWk4DhUlNMhnYw
	LRHK77uOq9Ora4Ciwp+4QjABm52LXmWDScbLdM0TvBNMjffbuHHX+SAJfsown1MKKjNhUnCBSk9wt
	nGClNmWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soS1R-0000000AduB-2gUO;
	Wed, 11 Sep 2024 18:24:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soS0M-0000000AdhT-417q;
	Wed, 11 Sep 2024 18:23:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 77EAE5C0775;
	Wed, 11 Sep 2024 18:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D17D6C4CEC0;
	Wed, 11 Sep 2024 18:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726079029;
	bh=QlVafWfsxXe64iPt3DsETvgIcbWeObtPdAuH2D6kkcE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y8OwxBl7xhtdnajCIg7yeTzX8AkbrL0Tdpm0/VGkBp314UDYPDH7mwjUwuRtAqrW9
	 04Msab4jSX2BruM8gE2umSUM+MMTAm7LB7oGvACp3HcOr5rSO0g0CxUBwB0ZTR+8nW
	 Ov7iKpQGvB8pmuYBMH3Z5ZN/NGDpKi1QB6SoyVrG7hi0T8sJpZ9/wsGHZGcLTzSDSs
	 DViwBa7SAneZ9QtCMxsIS9WhqObbx8C4VHQK8FTIrDfkur6xxDg5/DR9vyNb6f1tbO
	 XoCYgxnFReCSTHLSyfmSDGb79ZtNUqnWnG4Dd1KJvywRoeAn4Ol88wl86uVebYXjfC
	 Hy4vuiDN2MgwA==
Date: Wed, 11 Sep 2024 19:23:43 +0100
From: Conor Dooley <conor@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
	tim@feathertop.org, knaerzche@gmail.com, efectn@protonmail.com,
	andyshrk@163.com, jagan@edgeble.ai, dsimic@manjaro.org, megi@xff.cz,
	sebastian.reichel@collabora.com, alchark@gmail.com,
	boris.brezillon@collabora.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add rk3588s evb1 board
Message-ID: <20240911-phoenix-backboned-68197e59f8f2@spud>
References: <20240911022930.4022802-1-damon.ding@rock-chips.com>
 <20240911022930.4022802-2-damon.ding@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20240911022930.4022802-2-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_112351_089750_8C5234AD 
X-CRM114-Status: UNSURE (   9.58  )
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
Content-Type: multipart/mixed; boundary="===============1862902687008192629=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1862902687008192629==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yeSxzhvePg7FXNw6"
Content-Disposition: inline


--yeSxzhvePg7FXNw6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 11, 2024 at 10:29:29AM +0800, Damon Ding wrote:
> Rockchip rk3588s evaluation board.

Please try to write a more complete sentence here.

> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

Content of the patch is
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--yeSxzhvePg7FXNw6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZuHgLwAKCRB4tDGHoIJi
0mRhAQDoEx0wkR5BEUQU37l704W+uKuFO4zHU81++H170l9pqAEA/rCPh1hbruAR
sBIvbLNbCCjerF3bFJomu6MdzR0nZQA=
=sKRd
-----END PGP SIGNATURE-----

--yeSxzhvePg7FXNw6--


--===============1862902687008192629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1862902687008192629==--

