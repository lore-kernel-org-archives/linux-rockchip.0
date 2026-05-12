Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EDADCD343F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q9fUWxfzWv7+0Sx+ZTGKAM9Y06av8gbMcpuQMF0i7Qg=; b=xZNVWDZniyLQ0wZX5le2zXnK1i
	OPKHk9u1Y/c4D6/r9RAIP4wBNQJknaJQxiL6cHcdgCJxUACMdnHvf7E0B5AzcXVUkSDdlxqL+JI5x
	JI9yrZmh4R0GaMJWtIM0g3lEhwmb/zk0s1/XqJqfOqCmkVsZAeijNUWE0AirhkoZGx1bGSpkAY9Q4
	f8TElguq/AkyijirQzvQzJ16iJVX0P6CcyridkP+/E6t8EKZe4BGrucOTTrMIcf2jXQh8dHuTknwC
	e5UCz16PEPQtU1Fc6sR3NIVFq6blZ4ZHEaCNyTuEAAKy8QBS3BtjdquQol1vZX0GOJAjKkE8sQF3v
	ckj53YRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMqdt-0000000HVTE-0205;
	Tue, 12 May 2026 17:11:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMqdq-0000000HVSd-2WKP;
	Tue, 12 May 2026 17:11:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BBC53408FF;
	Tue, 12 May 2026 17:11:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54B3FC2BCB0;
	Tue, 12 May 2026 17:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778605893;
	bh=PM7Hsk7rCZ7i7ss0DWokkdpyP/aaxTsbqAbCbIJEgO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dx/RlZ20DHNQSDtLHsoojSgNx5+PmGzfx6uY+qJpWhuz9d4XDZqu1YIQcpSCyyxjs
	 4akB56wGOcega4tbyEQ1CNnW/foikCpjYjj5hNglKjM6d/QRS0aMHioQMpyJtSrz/r
	 8K3W7/VJBIIpVjq6MoN/e+J1UcvE4GetAimajeSBYCHa4+uQBUwunbD+4Q6DDfYLYR
	 i1FeJFd+DnPmJ3KXturPPx5uRUAPrkGX7U1114grF1oHAFZmcktaMXNz/GjZdFPQeb
	 33jEyLQatlsAtya1GEtTpoxhay1gozyGmDqRZukaVKxXhihm4ForjIdaPg307qba8m
	 4fvM5Ftlo9Xng==
Date: Tue, 12 May 2026 18:11:26 +0100
From: Conor Dooley <conor@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 02/10] dt-bindings: display: rockchip: analogix-dp:
 Add per-clock descriptions
Message-ID: <20260512-unmoral-jacket-265a50cb4ea8@spud>
References: <20260512095644.1946084-1-damon.ding@rock-chips.com>
 <20260512095644.1946084-3-damon.ding@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20260512095644.1946084-3-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_101134_654750_38466354 
X-CRM114-Status: UNSURE (   6.43  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: multipart/mixed; boundary="===============0245438913253205109=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0245438913253205109==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xz/8nfi28M2rs0iV"
Content-Disposition: inline


--xz/8nfi28M2rs0iV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--xz/8nfi28M2rs0iV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagNfPgAKCRB4tDGHoIJi
0sU8AP4vxmovvT1OpZFfAxAwr95num10Rou4WT2dmzmv35Q8YwD/ZdnsttL9jh2J
o7mrpvcV9tKvqbzCroKr/tILpzRIHAY=
=kWPn
-----END PGP SIGNATURE-----

--xz/8nfi28M2rs0iV--


--===============0245438913253205109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0245438913253205109==--

