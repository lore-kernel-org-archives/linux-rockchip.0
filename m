Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D64FCCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 17:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ma+lDVwmW1EqYCjxE3RMNO2E3Lfczo5V0JqLNsdl4/8=; b=XrLpblpEIAH52ROSOtK76zw2tc
	K/0Y6yBoxt4Gqzrw/ktXhSxu3W5LpzS6+O2S08DBCbaI//GCa4PZee8qxnVs1wl7fyP+BWvB87eIq
	tT+7Qg+Ua+e8K66CfWRQe5oL3NH/5yEiNdZG6EVlPP5VF897bTzBxbppH4WabNO6HAQqMSbequwn3
	fqr3SsTo8GEL3w1bLus/RmsLdK4NwQHhaw3JIsRKtkNSpRB2Q+Yo3g+L119cfqPvarMaJe+hPidxY
	TAvA5Rwf63bNCch4T6SYUqSzLNiI2z+T0g+iWGh+iq3jq29FVREJw2mWcH/7RlCspcKApeJWvFuNI
	4SRjGVeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH3lb-0000000G1Ab-2tDM;
	Thu, 06 Nov 2025 17:27:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH3lX-0000000G19v-3RwQ;
	Thu, 06 Nov 2025 17:27:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E2AF74433B;
	Thu,  6 Nov 2025 17:27:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC827C116C6;
	Thu,  6 Nov 2025 17:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762450038;
	bh=lUYNwn621b4INnVv6cYUd9i8ygchqkVKYYeeytWLys8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AmMzs73VnjPXmC/0CawgwdAAECJ1wJXAWnwMQs7cvyNsJ8gcIKEmofrUeLkYBv1bd
	 1dwbVsduZY9Hh2P4Er88otWdF/OtGWQBj59m5EtsoxzMWIQqz4I/gg5CSBj2A1TXk5
	 +CDYE5TE1HSL3IZtGbNZ/4X9hMqqYJj3wEvS3IweFoWj2AE2jtIarNJYcPWV3e6Try
	 T5g4cl/zNIMVWgstSipeHjVO7I4mYPDg0HSmdLE1UpofGJZx4AuNIgH3xfYWXSof1Y
	 TW1r3xus5GPisF2NMyuBSwOVbEIQhFCmZEWc+SbXjqHg69Zu9aFNrWLLQm5Z4gR/u/
	 7DpEB7V12nwxg==
Date: Thu, 6 Nov 2025 17:27:12 +0000
From: Conor Dooley <conor@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH 2/9] dt-bindings: phy: rockchip-inno-dsidphy: Add
 compatible for rk3506
Message-ID: <20251106-litigate-cultivate-75a4aac333c7@spud>
References: <20251106020632.92-1-kernel@airkyi.com>
 <20251106020632.92-3-kernel@airkyi.com>
MIME-Version: 1.0
In-Reply-To: <20251106020632.92-3-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_092719_879079_1F3716ED 
X-CRM114-Status: UNSURE (   6.47  )
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
Content-Type: multipart/mixed; boundary="===============1890431114758516655=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1890431114758516655==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="V33MzIjcuA2BZAPY"
Content-Disposition: inline


--V33MzIjcuA2BZAPY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--V33MzIjcuA2BZAPY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaQzacAAKCRB4tDGHoIJi
0hUTAQD7NwjnqRmBmopmm9xS3ZqfaL4Lj+EawXUG/K8Qy/2v1QEArBXv4nDqLv9S
VD0Fl63GQYh+57qF0vwhbIjEcBRyQgs=
=XWuK
-----END PGP SIGNATURE-----

--V33MzIjcuA2BZAPY--


--===============1890431114758516655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1890431114758516655==--

