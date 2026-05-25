Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B74BCD5BB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 May 2026 16:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JA+CWxmuhj2UyuAbwtC0pS+wqR6j516N9xFsqWuQg+Q=; b=HHDdEIVPvgvXOzdZ8CR4Q8TYD2
	d3Vk8XqBIkWrALV+ImkCaU/54WmE1x0Idyjy/cpdi6de/XsQOR4mLeP+hZYd/HA7hc2XeOFsJxoCl
	iFmkXVElPSsfxARMgNrNcLha5ID8niEoz/PT4OKev9P/3+8ETUWGwR4Gzoxz3Ad8vRhUIKnmAM++0
	UmnTZIt4irgzpuE8aqb0/qUVfNPJ6D6Pedgo1IX+7DH5R0x0MUE/dWEwoC+JyenFl95JtjQW/KkCI
	Qk/60NS7N5VPYe97x+HA/PMUiFYx3vtGil7ifYIgEXEhRUm2ENGXNhOL5EiXnLn7mDB/e+ZNv/arc
	hFM2rSUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRYPU-00000000318-17Ds;
	Mon, 25 May 2026 16:44:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRYPS-000000002zj-288S
	for linux-rockchip@lists.infradead.org;
	Mon, 25 May 2026 16:44:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A5AE2600AF;
	Mon, 25 May 2026 16:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40A271F000E9;
	Mon, 25 May 2026 16:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779727449;
	bh=tO7fW2LGUXn9/HkiBLsRW5N7PQ8fXp/YzIY+daHOCio=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JlwcdPAo5c+7060iBYc52PQFB7bK7SwT1wh3VKcJ3likegWgKvo+PHUYeIjJY9Sz4
	 7ZXgrxrOErpKAKMu8G4SAt+PNVnhepFAoD31kBYkIhuLbijpb6MfTYXjVsOkdF393k
	 r3P0kgj5wWRXE3+HzKkZcBCvUbevP8V4+GGoPuKFWAkyRRacj+k7DSb5GGQurWcrx0
	 OKAEumfZYUMP2lvlGAt6uQxg+m5SLCfojSmhtAbKdQ5DLkZcL18w0iOQgmfxU05jQk
	 AZs0thoY8N8Hgbk+d1+17FdE7+Dl7xrCxI2RZpPV7EgyZCD8MkBoGzZweJrPQp8sn/
	 3p0ZHmVbOokMQ==
Date: Mon, 25 May 2026 17:44:05 +0100
From: Conor Dooley <conor@kernel.org>
To: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, heiko@sntech.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-amarula@amarulasolutions.com, michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Axelera AI Metis
 Compute Board
Message-ID: <20260525-reissue-skating-4c793410f13f@spud>
References: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
 <20260522174918.61523-3-patrick.barsanti@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20260522174918.61523-3-patrick.barsanti@amarulasolutions.com>
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
Content-Type: multipart/mixed; boundary="===============7518898479858879527=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7518898479858879527==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d+u3A4lLNjXzR4af"
Content-Disposition: inline


--d+u3A4lLNjXzR4af
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--d+u3A4lLNjXzR4af
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahR8VQAKCRB4tDGHoIJi
0pQEAQDVcm6ZnIRuwd7ED+X8Y/Ft/5cLD8RvyVggayLwr0ICOAEAwf8JqLhNhh43
eNsAS4TG5PLpr9x4TfpOW4rTm1SKGQY=
=yipe
-----END PGP SIGNATURE-----

--d+u3A4lLNjXzR4af--


--===============7518898479858879527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7518898479858879527==--

