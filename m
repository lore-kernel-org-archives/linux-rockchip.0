Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EC2DCAC5B8
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Oct 2025 18:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L+EOcEB3Mm9i2eGRYjkVCMiUGyDzSQTaHLT0msOUkM8=; b=PWOJWE2lqxg+hkDQnOJpj9HsX+
	dDzC/Xijz2w1bzqWd5u65JXPyAcCMEBPIV7Qedd4thEjzQOqZINi3V9kFtBkF+VYkDOVJr9y2CdZa
	RBWTeYzhySBrykWcmkJBJxLkFv7gpHpM1rul1r5Eszdco5dT0Hn+yOTxotSKj3rd2AkHtdKhsw+hV
	LYVwa5RWejI1TJPl8c0wMn5Uxig9fXHbMWsCPom63qsI416u4UHNrqS+PYGOSIx1uR8o1/t0mlTAe
	oIzWunTi65HBIXhVoRoskY3ukFYMChrlxy3E2WEP52gxd3dUDWXubQlgqy/qioIWihuGbR7gFhLQX
	8vKJzucw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4O4Q-0000000B1zW-2zsf;
	Thu, 02 Oct 2025 18:30:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4O4O-0000000B1z5-2ef4;
	Thu, 02 Oct 2025 18:30:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 874AB43824;
	Thu,  2 Oct 2025 18:30:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19E92C4CEF4;
	Thu,  2 Oct 2025 18:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759429823;
	bh=UmwaTQ9w3UMKmPx7igtoLu/6KZ/KNI/anI2nuK5fsks=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bDlPuov+ZH60K2M+tPgkCIIu5Tn7T2svAnnp0xBAfvsll9JVwgE6yk2YoRJ0jRVua
	 qt7lrdQV+Au25av/tXqM4k7uG5OYOziz7S/mreVukaQNrcNqS8411W/xXkrEgQgCAn
	 MGDBogFHOLCJaTjx6L5MkEYBtoFyKXswxf8IRsZyZFzSQ4Kyh6p4SRka+KD7Lk3YrY
	 Wf028C32OXMUC3HAi/wxSnV75oTvR8R6xeRp/Ar1fDQegW+kTKP+DmLLdc1oGJlrnX
	 HqlNpEiMf0AzYciFhfoDOSj6tr9hK8KxpKTHARo7kEldHoOqoOm9j6B3rW3W8kR7Oo
	 AI3jvJRUX9+pQ==
Date: Thu, 2 Oct 2025 19:30:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 2/3] dt-bindings: display: rk3588-dw-hdmi-qp: Document
 enable-gpios property
Message-ID: <20251002-kissing-boxing-c8b567d08e2a@spud>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <20251002034708.19248-3-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_113024_689795_0CA8EA87 
X-CRM114-Status: UNSURE (   6.84  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, Muhammed Efe Cetin <efectn@6tel.net>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Algea Cao <algea.cao@rock-chips.com>, Ondrej Jirman <megi@xff.cz>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0210404073933382121=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0210404073933382121==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7A3hshEiPf8Kpjpw"
Content-Disposition: inline


--7A3hshEiPf8Kpjpw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--7A3hshEiPf8Kpjpw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaN7EtgAKCRB4tDGHoIJi
0m7hAQCDPTelKmX1m36VmufkE/l93pQBPg4VvrPAQUIIInNz/gEA8xs1KgKuKykX
0HWiWE9u5+7Er0wOlLhFeUXbu1nkBgQ=
=IADe
-----END PGP SIGNATURE-----

--7A3hshEiPf8Kpjpw--


--===============0210404073933382121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0210404073933382121==--

