Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E40331125865
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 18:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HZ9ZZ16Z2T78BHkeE9IIFMYYDYREytgbglEwBCn2wGM=; b=lzULck8kyiqdC/dfLEWl8OJhdk
	sG/XPskPn2ZRSkJqxxWvvg70b095Y5tMhzE8zdx0PmFrUoSg5BGQTvLiD7siUAI/z1ykYzGh2Db0R
	OYaootMfOOH7o9OcrwxH4TZN1ViokANsVM77Z6rhLbHq4uUblah32UBZQHEvaJid8bSAxRoNGLENe
	vRo8iuonqQUHSGyhTuPV8f18S67AyQ2ovA5hmA+1x8EZgGWpL+2TjJDc8WNtP6AxnBAwpYBEWWI6U
	0m8/1G00Cz6cXWnvztb9UqIoV++emPgXF6Zlq1ETKTPEsc0D8pVNwLq9dx3qwDQXMwWucbuiWFAuU
	eJvkUNQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0OKN-0000000CBR8-23oW;
	Wed, 11 Mar 2026 18:30:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0OKL-0000000CBQd-35Z3;
	Wed, 11 Mar 2026 18:30:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D8C9060142;
	Wed, 11 Mar 2026 18:30:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E320DC4CEF7;
	Wed, 11 Mar 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773253836;
	bh=H9iyV4BAqADOKjQtFBjZoNRoOzXo2dCNmcaw6qiOPDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lqqHsTW1FNZIUsSzpeDcTSk3ohzzEYANXyL8xJAX2cnewL2+GpBLJLoDT2mU/GEXj
	 332g818ldYAMvyp95Txb58wONuGezP9nnKjG0WFE9NoTuU5Wjc6IX84Jlbqcp8dakS
	 WQqKMiGsRe4aZ9IK3PgaEU2akJ1qoF+4ZAYQckeFEaNqLIHS8YxdRbBBGILA0051hT
	 iTZPnIujwO6WMGicVHf994zoxjT2wx+8746ioxZVQghm+uObypYaGy6HjibN/8l+qa
	 +Cn6Avd37scMH7gOY1/s8YgRG1sO5ZUuQfd8eMlkeWxC9WqVHUl/s2/Ka3vC8I0MDK
	 Ss5kgSlKosaJw==
Date: Wed, 11 Mar 2026 18:30:31 +0000
From: Conor Dooley <conor@kernel.org>
To: Alexey Charkov <alchark@flipper.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: vendor-prefixes: Add Hynetek
 Semiconductor Co., Ltd.
Message-ID: <20260311-reprise-cartridge-a8f9c470c243@spud>
References: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
 <20260311-husb311-v1-1-f25bcb58cff7@flipper.net>
MIME-Version: 1.0
In-Reply-To: <20260311-husb311-v1-1-f25bcb58cff7@flipper.net>
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
Content-Type: multipart/mixed; boundary="===============8136324661391794801=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8136324661391794801==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g9wwrn7c0e9Ducz2"
Content-Disposition: inline


--g9wwrn7c0e9Ducz2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--g9wwrn7c0e9Ducz2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabG0xwAKCRB4tDGHoIJi
0lz1AP4haoaHSQSCTFXf2VkikeqNx9Iano/zc6eK3AkPkUhT1wD+Pz67k5Ynrl1g
BhHnDtJhHMCBkhuW1qQ51yemvru8iQI=
=t7Zv
-----END PGP SIGNATURE-----

--g9wwrn7c0e9Ducz2--


--===============8136324661391794801==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8136324661391794801==--

