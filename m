Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0495C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 16:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hpyI6+SRm5TYqD8uZpDB/K3hQJDkMGErcS/JCsQgB4s=; b=3Hjd6J0F6KNjXXZSd1QZQBYTT1
	NaWvsQiyNhP1z2B1rgKbRXj4bmEXkoSEF0uHV8U8Hiit2MqanSSXf5Zd9x5rKddEi4MMABYs7lju7
	3ZjW0t1QyXv2w8gtPYndeO+WX4zjdTR3ogHiLQeo/Ee0yBY8vZGWNGCrAhnJ+YDkqJzFQo34BQR+5
	0mjMgYbCxHSykPO5VZXSdjuIhKOlim6CCJ8a6EIOJZwVTX6PARkiW58w+eSc2bqMguWECfYuGt7BM
	+OGb0oKEygkBNddh+qbukLcOoDEQm/7CgdJKfhevUNKHDQs+vzZ0SPBcmDPyxTiNmwj0NWW3F3Br3
	eTtPGEBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwOwU-000000091Dt-0Y7K;
	Mon, 15 Apr 2024 16:12:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwOwR-000000091CR-03VI;
	Mon, 15 Apr 2024 16:12:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 691A360EE9;
	Mon, 15 Apr 2024 16:12:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0F5DC113CC;
	Mon, 15 Apr 2024 16:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713197542;
	bh=lf/eRIj/5j8u//ixELV2WwrUVkIcFMU4DZBF09ROLs4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DY8VYQg/kDNpT3Ypyl8UjW7PsG4RSdEPOB6e3kuF2CNnSRuRavvwKX6f6RSqwoQ9b
	 1HpcQ+crapieVK1m6Mj4P1xFow5OxmtSXkhNVWYYoENy+R9l2uTz8A4zGY+MnqA4w/
	 l+0v5f+bymKN5I30nFS14A9YNgqxkH/IZXupSnyV/08Eawydb27eqtCQ5ADpvuRDjJ
	 Rb5RYbes+mITOi+GjZwmWsvHlUqsFxq1+wCnToKsyRruUuy76FdQUySHmbNfcUeqK6
	 QMGib7Xdse50YxBeKbcUtyq4EStoqGHUfzDGrAQikpu+KTz6nbmIb+Bdg6QdxOvSEK
	 IRK4ia7EuCYKQ==
Date: Mon, 15 Apr 2024 17:12:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
	airlied@gmail.com, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, markyao0591@gmail.com,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/3] dt-bindings: display: add #sound-dai-cells
 property to rockchip dw hdmi
Message-ID: <20240415-even-credible-385b03941c85@spud>
References: <3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com>
MIME-Version: 1.0
In-Reply-To: <3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_091223_127672_72CFCD90 
X-CRM114-Status: UNSURE (   9.80  )
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
Content-Type: multipart/mixed; boundary="===============2716090345017064917=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2716090345017064917==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AEo7oWbtHZPZ4TpT"
Content-Disposition: inline


--AEo7oWbtHZPZ4TpT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 13, 2024 at 05:38:05PM +0200, Johan Jonker wrote:
> The Rockchip DWC HDMI TX Encoder can take one I2S input and transmit it
> over the HDMI output. Add #sound-dai-cells (=3D 0) to the binding for it.
>=20
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Please send cover letters for multi-patch series, for all 3:
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Chees,
Conor.

--AEo7oWbtHZPZ4TpT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZh1R4AAKCRB4tDGHoIJi
0rvCAP9DMAtQlMI0B9a808d60hETrodKbxFqTBwuNCFIwujrSAEAuM+sNixMih38
zXZd/R0HJhwIqi6+r0qVmT4pKU4+DQg=
=qORJ
-----END PGP SIGNATURE-----

--AEo7oWbtHZPZ4TpT--


--===============2716090345017064917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2716090345017064917==--

