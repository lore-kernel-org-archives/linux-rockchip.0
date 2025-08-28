Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 097F2C8303F
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 19:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9pnhIAb+O2yAVPKzut0n1zRhSNynd6D4ya/jxiySsww=; b=hfJwM/AbNo1dYlEj/AwkwYmTg8
	6bZNMRedDuij76fn6dM4qFCh/rrfc5grq7dwNv9uoNAoZCJKcpC+3XgllQOiu4w5n3TutR0sJWcy+
	Eq53kY+3OwmHvtlE3QWqT3sREFlSikGwxbh/fA8DovZOPPmU95AupnIGYc73/Ob9ucoa9bpB3hBS+
	Gan/rBUVHh7xuexBWRScVaZnkBUvZe2NTinNCpPspV+cen6tzJCZ6UHt9tAqSCasI3TqQqbbSwviR
	HgoZvce9A/Xz39s63yR6eiZXRnFtAls+60bMM3Lz20JMRxND0Rc/73pydZlHrLa0VxF7evrKCp+uk
	DNSX6+fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uriBs-00000002yEY-3SCc;
	Thu, 28 Aug 2025 19:21:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urfvy-00000002KZb-07vP;
	Thu, 28 Aug 2025 16:57:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 558E36013A;
	Thu, 28 Aug 2025 16:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35398C4CEEB;
	Thu, 28 Aug 2025 16:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756400229;
	bh=twbEl6RIop6nZrrZWjYGdwphD6aGwt1zB9C3V1gHSlo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f6baMZT0HtqWBcrbX+fYbmZkLsk+3QnIsdA0VS4USY0L3HGXsilySuDBdrDLeWYZ0
	 uiwngObcZqJylx3m/I/vc5EGSlbzbL2qOJedAfvuLkQnW4ALGSYGm061j3Ba51VVwS
	 xgJbVxaVBfh3NrGqpS0xvLq3rrBNHhWyDCVm4QXzhvsdqfgLfoFxb3Ay9EW1V19vfK
	 XHcKn3LdodfBQN6icZ2CJ6hMEsZWevGfMIvAjlR4owY0a2j0CFjRpMygUMj0X2f8cY
	 fWOFXJoQg8HHnO60Jc3HnIvUMbXcuxCI8q/Z0jAY9IWdpnHAgL5NR5ITnOBDOG8sc9
	 A6pW9uU1ti6wg==
Date: Thu, 28 Aug 2025 17:57:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] dt-bindings: soc: rockchip: add missing clock reference
 for rk3576-dcphy syscon
Message-ID: <20250828-shame-stinger-e1443c61d31a@spud>
References: <20250828131107.3531769-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20250828131107.3531769-1-heiko@sntech.de>
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
Content-Type: multipart/mixed; boundary="===============5774611984176389160=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5774611984176389160==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p9ZbeHQWfYofwOCV"
Content-Disposition: inline


--p9ZbeHQWfYofwOCV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline



Acked-by: Conor Dooley <conor.dooley@microchip.com>

--p9ZbeHQWfYofwOCV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaLCKYAAKCRB4tDGHoIJi
0glBAP9334cjtxvGihXrVmnI3SiWQWYFgyyt8jz2Ht0U/JaZ7gEAy3V7xRCiRHkx
ARtCHT1yuoOGr+Lio1IlQih2X4fixQM=
=VoQr
-----END PGP SIGNATURE-----

--p9ZbeHQWfYofwOCV--


--===============5774611984176389160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5774611984176389160==--

