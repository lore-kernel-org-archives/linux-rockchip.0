Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 497BACAC5B0
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Oct 2025 18:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J2pXhjSZt3IRykJXriznmJqMSI9K+LKIoO4G0i3PvoY=; b=0PSPCbSZ5l6PdstjsCPDzc5225
	0wemtuD39DJmA0fJJ9EHO6YVAptNkalt9+chRHoAxLrJBcGMePxsiN2RM8bAhSqaYrHTvOrzAqe4q
	hiuTCkjoU7uOle25kkRSZgBlPg6mW8k9Gv6Q1F7fMkIgeVj+W/QxmtArhWgwYZY9ThkP+gqJYUFvX
	QSSR5Y9H/Yl7MGH/DeNOexHeNK/pFtOTgwdI+rBviPM0+HfE7PdRrKWD5tpIsNGMlrVyxQvDOvW/j
	WVpWd4PRe+1u/frFkfDJ9NlIhfBOlAJ0LsxWVk8zhOCml4WIhZnv1vVpL2kNpFulFsXQ3sdRvouMH
	0j2k6Ixw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4O4i-0000000B23y-1WGJ;
	Thu, 02 Oct 2025 18:30:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4O4f-0000000B22j-1vXM;
	Thu, 02 Oct 2025 18:30:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 948F54059F;
	Thu,  2 Oct 2025 18:30:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D973C4CEF4;
	Thu,  2 Oct 2025 18:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759429840;
	bh=0mh2PXI4RPCLiX+zU35do9JgkruwIWIRKLm0Jl8yX3c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DzqgycZjsrI4nqyDFEZYHQ+O4VSOxNCY4BKkDQuaCkSw1cgyc/TgUjAlBRStFoquY
	 Sjy7dkyUIh7e6DCP3TqL/vnw7Lfouyuh6DUbLzabR6kXHHBmJ/dochZzkQBRyhMQKV
	 ppTI+AeHLe7/YgdnMWWflFVSRjRoFrIx+wzh4ONkjTog/a/VQIfYn2Y7AfJrCLrB7P
	 tQuCUvbn0db/w/JGMUnWKDMPxN+8ve0SDhv2X0Vj3/lRvE7MrTM9lu3qjxaMk79FnQ
	 u2Geab/qL/JlrujgLOZZXpBDQCw8M33oo5l6xKJn5lHnN8xaMsWwbpTaFt8s1MwG5z
	 RRK1tmRZBbiAw==
Date: Thu, 2 Oct 2025 19:30:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Orange Pi CM5 Base
Message-ID: <20251002-rehab-ripcord-043788a3c6f4@spud>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <20251002034708.19248-2-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_113041_511142_7A1B2530 
X-CRM114-Status: UNSURE (   7.54  )
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
Content-Type: multipart/mixed; boundary="===============9120665117327126854=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9120665117327126854==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ntsgCHwA2iMj9xet"
Content-Disposition: inline


--ntsgCHwA2iMj9xet
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--ntsgCHwA2iMj9xet
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaN7EygAKCRB4tDGHoIJi
0i8HAP9YE/REwXXRgakNjtjNxjA84B7owoCO2nbe0IWr959JlwD5AUKlhJChjLP5
u8llwVBhX+ZbpzsLfMHeNR8tC5vk1Ak=
=/5jM
-----END PGP SIGNATURE-----

--ntsgCHwA2iMj9xet--


--===============9120665117327126854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9120665117327126854==--

