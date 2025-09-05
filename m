Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C7E8CAC581
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 00:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zdFCfyB6aVmlsUMfB05PSkRQZt7vMsolvbHDSUydEYE=; b=wSwGBipPbjCa6Ce6JQSrta9nxT
	z5di/FoNsNwsavnwi2h+cf8cpZBkDwJNd0c3XLhymyzladlCW1EGm+o4KNH86jqEho0M4VOF8KcjI
	wwJQ0Yoo0V1u0GgP0/M/dj/UL/tYmic/o1ACLef9sPOwiaIN+uoThEuIvkCIbFDCh0otzvMf35DDy
	iXeRLsIwb2oJY9yJ95ZDYI+ACMcLB3fubi+7iTpMMgM0IltC0MDErrFXVizcqVZj6kbVK3aav7Y2r
	05Z1Tap7F3Purc6Y6dyOOFNUKubDRFca4BKutS1XoLpN3FZqHRJ2boMeKlTZSM3lurAcZ8hZZnmcJ
	cp9ATdxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugWF-00000005T9T-3gOv;
	Sat, 06 Sep 2025 00:11:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uub8w-00000003mV2-186B;
	Fri, 05 Sep 2025 18:26:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5DD09601AA;
	Fri,  5 Sep 2025 18:26:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2770C4CEF1;
	Fri,  5 Sep 2025 18:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757096797;
	bh=LyeDu2i+o9HDa3/kwwKLQ3zkEkc/YK3lZMNTzfpm8EU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lr94/cIuJT3cZOFrv+NriZvDh0IBH7VOJn7CT/KUMfAUQDE8iLCaJtLXo4eT1m88d
	 AZHs84jECVBUSd+0oFEPmter5XOTuZdNlaaHKbmKunMTFPEDeg/WNHYUeRelnaWvQq
	 E89pKiOCUVfEC19gjzIgWORGIM+aHE9OoQUG+hyQkhEMwn+SBrtfvaJk5mERqGRobt
	 mrEyfLa4PNybctRdzkie6d19QhJJxUnLa6ORrl1VcjnjD6GPWgV3FUCOYoObIU428b
	 QKqIVGv2LYyhYl+qkrLfh1eDnLaGhWUxwk43oLyUkS7/tFVDmqVTyb1194vWvSK+oG
	 fWlmeHZSW9ypg==
Date: Fri, 5 Sep 2025 19:26:32 +0100
From: Conor Dooley <conor@kernel.org>
To: WeiHao Li <cn.liweihao@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/4] dt-bindings: phy: rockchip,inno-usb2phy: Document
 rk3368 usb phy
Message-ID: <20250905-crumb-district-ca69a00cf6ee@spud>
References: <20250905125318.7956-1-cn.liweihao@gmail.com>
 <20250905125318.7956-4-cn.liweihao@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250905125318.7956-4-cn.liweihao@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6856177122552219871=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6856177122552219871==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JICgwRvRS9Ky+b8v"
Content-Disposition: inline


--JICgwRvRS9Ky+b8v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--JICgwRvRS9Ky+b8v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaLsrWAAKCRB4tDGHoIJi
0l5zAP9FcI/1JClbYyW8Ww/u1FjWaaTZPlI37QTxc3eyTNDk1gD/X+NwruBP7g7o
k0a2fGxRECLLi6BGWP4ublx6JyltjAw=
=gGkB
-----END PGP SIGNATURE-----

--JICgwRvRS9Ky+b8v--


--===============6856177122552219871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6856177122552219871==--

