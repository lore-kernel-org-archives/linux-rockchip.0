Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C66AC2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 16:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PGe5y2OFAKt02gbxanwCHU1W1RQviFyC2KuLwR1htPo=; b=SDGnkSE9n+slaO1hTWOybF/VjN
	rK7znlZUWKrUSEBLgIwrli5qi/+GAicos1paMjX5uLmLPRG2k/PcUHpC0C+E5jFOxH7VQQ4fZjfCf
	97EPuwC8DA1MvaWADZBIYF7tqUqkPnKi5sZb7r2yihuQT0/8e0nNDVzyn2Aw9ASxWrMYHIRqptYBk
	hkAVI5dk/c4VeT/cMKBCiJ8JKKzc4SH4XMsJKEDR5T8MumhQrTTmD6mZEC5U1nsLzybRXu9GTiWwf
	EqsVob+eGwg9qcj5KUQIdHzCGmySl4RLeFgQQ4zzJ4jM5DTWPXzDDZu1+SIraIwOQ/xQO5n1s1yBw
	jDyaXU5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH3hq-00000009sEd-3Fsd;
	Mon, 19 May 2025 16:51:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH34Y-00000009kWK-0JZO;
	Mon, 19 May 2025 16:10:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9F7724A304;
	Mon, 19 May 2025 16:10:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57595C4CEE4;
	Mon, 19 May 2025 16:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747671037;
	bh=8Gfs1ppaN2jlWBdNlgUpnLmCuisZo8JpB/m7e1EOfY4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ux0OAwzsDhwEUzAgkYnF1PBlXBNY6/IoCrn18FzOxHABKpbXVPdqB/F05wVxnJi/L
	 MlZfa298W9L0UwoSlLPSOqLLs3UmFc3YwUt2v1OKWKNMZNg5Iou6qkVl8aQxWb+zBw
	 MXuhC6BIghUZOGzqYiW3cVf9Pio9XGDImV+ZL9u665zImRAbTKd/GTrHVtp7O7q/fd
	 4DkuDjCcYityBt6kZfId6BQhugdI/032oTdCFCPMHpNCzVr0iVYiJCrOssmCc19hIH
	 m97TkiLH9BUIaPwlKrxlhh7swkUzHiIonUfghBOq63e070hZ5Ige8DSZf+ONWROGT0
	 KdS9NfvBn+dJA==
Date: Mon, 19 May 2025 17:10:32 +0100
From: Conor Dooley <conor@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: gpu: mali-utgard: Add Rockchip RK3528
 compatible
Message-ID: <20250519-tweak-showplace-264a15576e76@spud>
References: <20250518225418.682182-1-jonas@kwiboo.se>
 <20250518225418.682182-2-jonas@kwiboo.se>
MIME-Version: 1.0
In-Reply-To: <20250518225418.682182-2-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_091038_132541_1CD6674D 
X-CRM114-Status: GOOD (  10.71  )
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
Content-Type: multipart/mixed; boundary="===============2182242446507226814=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2182242446507226814==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zE6C03YwwDfltbjP"
Content-Disposition: inline


--zE6C03YwwDfltbjP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 18, 2025 at 10:54:11PM +0000, Jonas Karlman wrote:
> Rockchip RK3528 SoC has a Mali-450 MP2. Add a compatible for it.
>=20
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--zE6C03YwwDfltbjP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaCtX+AAKCRB4tDGHoIJi
0no8AQDkDSkDoPmDYFg2jj31yNSF71G37/q7Z+IxLIzuuuABUQD+IxyTT4p/MLMI
izTE/i5XxqvB776nHAIckmO8hCXKmgI=
=b3XN
-----END PGP SIGNATURE-----

--zE6C03YwwDfltbjP--


--===============2182242446507226814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2182242446507226814==--

