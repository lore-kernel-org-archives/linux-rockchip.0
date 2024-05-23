Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0732EC25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 14:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=APr05Y/WlIj0QtAxr9RwtSwL9DAgE8fmkQJ4Gj1yLrc=; b=jHq1ovJqDcx8PQqV/cXNKkfiT9
	a6niY0rBkhV+EtiWMOjP/hbgIIJQ5LXqnnigN3zWHYoKKIPrexPrDfP68dHu4HIHJx3E0jE0OYljy
	AlSFU71OrEdxQ96xhLhsrBWAa6ob+QTbJf9BvDDpqRK2CyF8FoLkvTROCYS6VMba4LdzMFndP1BIj
	Sp2wZ1UUXkBhZmyQZuBLpEYGfWItRr2xHm8Z7Hk0pJMfzqkFgxcLsFc8pvIbP4gLEfjEHXjiz8Php
	Af/2FvIl9/EM1H6jM55DoUGMK5cGPZm9xlkc7tNW0sRi+yfUwj0+gNrgYCjT8Lo34rKCmFK/ks2vY
	+xHtq0yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9nk-00000006Xte-1LmK;
	Thu, 23 May 2024 14:52:16 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9nh-00000006Xq7-0tDO;
	Thu, 23 May 2024 14:52:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 257D5CE1395;
	Thu, 23 May 2024 14:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47D0EC32781;
	Thu, 23 May 2024 14:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716475924;
	bh=0n5OH0k+GRei5q9zpND2pbMT2lTvBmQGE4laZAvKQMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J5KooSenMd9y77wOzWwd6Ck6YbUB2Z01Il0y3de4MXrjywybDW42k9Cq3Su8fsMMF
	 +u4jh+nwcK1orQSTRR+HA94GzWNvLBC2yoBehb9/NNGDt+1+LG6sKxoGADspETrzP+
	 CCgledNtbdNFb1qGcjZPy8FARa75nPs6cNnr1ULmrl7x1DDNta6V4YvmiQHJZOqM3A
	 8umaZlquBRrWw1C7CsMjIzWg0idNdqvuoBZFXOd0RDw9j95UDK/eVi1FjM54i1eoHk
	 9+dD92MQeP2chxN5Xk9QwicVGUSLAQINvu2+DUpe41UV2PBjHA5s3tfsDeNQcpkMNY
	 QRZgpgD8pRo6w==
Date: Thu, 23 May 2024 15:51:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: display: vop2: Add VP clock resets
Message-ID: <20240523-climate-cattail-e5e1fc8ff0a3@spud>
References: <20240522185924.461742-1-detlev.casanova@collabora.com>
 <20240522185924.461742-4-detlev.casanova@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240522185924.461742-4-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_075213_456574_BDD8F761 
X-CRM114-Status: UNSURE (   9.08  )
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
Content-Type: multipart/mixed; boundary="===============9115797671953164532=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9115797671953164532==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jgeG1HuZXzpfSjmQ"
Content-Disposition: inline


--jgeG1HuZXzpfSjmQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 22, 2024 at 02:57:50PM -0400, Detlev Casanova wrote:
> Add the documentation for VOP2 video ports reset clocks.
> One reset can be set per video port.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--jgeG1HuZXzpfSjmQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZk9YDgAKCRB4tDGHoIJi
0j0rAP0VlFrFaDu+/KLFAsK956xCJey9qaStyOOlXTICQTGV6wEA/N9OOl/tmZru
MK6sP4YDord/71YqPTb6mQhi9OnMlAk=
=t2FA
-----END PGP SIGNATURE-----

--jgeG1HuZXzpfSjmQ--


--===============9115797671953164532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9115797671953164532==--

