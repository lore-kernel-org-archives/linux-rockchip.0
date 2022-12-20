Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6527C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 07:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rAVxJEpTMd6WQVcaODRwsreXqN9yI1OqJ7mbt9XTOAU=; b=BO1l3EtfRBK2IlRtXcHUci6Wae
	UTyO7pFBMerVruU/af08dd1SufgAdwDGoRBx8nkoSShC1iePyVwvV+RDFTtlZP22UPBl2Yh2kCxwl
	QU1tlTQKafV7tIa2V0yzDm8v9NUUki0H2yhWFr5XrYw3QiBnb5fefbZQnuThI881m6Vc6CA8ZZIS6
	/C35Aj/LzEi9Gj5uuGqqZUyi6Dj19MfM4eYQoiWlHLBgcorbmEpLujMc4SIRpuZ+eZs6z41VKC+48
	A3DUv74jV8YsPlOAYb7wdonBG15v9Ymdm0JicxnKeYZNgYCAPA+668NUyhIr8pXvQVRDgGSqAJ42V
	PLhWc45Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7XBx-00B3tI-At; Tue, 20 Dec 2022 07:37:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7XBT-00B3RA-O3; Tue, 20 Dec 2022 07:37:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 42DE261295;
	Tue, 20 Dec 2022 07:37:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2691C433EF;
	Tue, 20 Dec 2022 07:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671521826;
	bh=66SlnYG/nwUzCZrhRPG1TjPvZM9jtU1rQo7zEHGPSqU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=vJB4jk/y5LQIaiEIhTFeBKn0rmFWU1H/8Vzf0VJLLZspPVyyheAqH7K3M9YGN6wgX
	 UxMCDyPdyAWw/z2IKWHGy4uJwYQEmV/txn3N8VAw29BBAavaTQ/MJmmO8HxKKz9oQq
	 ebsD/pIY0KHJHnocDD+LZnWleYHvr2G9Q6f69MxEiVFzixTTgwrFwJ3t8tZwxG560n
	 mtTkiMpkNBDjNusK3sJqN5gLT2S85Au+/5errsNy+6xPf1nJBONFCfQhOaECaAts87
	 zsmQ5L2zsoWepxt7mpIIdmvmXrhHtXUK4RLGzrFxVNMJ2d8OKTVo+DGy6ImTfE/joh
	 aXj4zPS8Tjtig==
From: Felipe Balbi <balbi@kernel.org>
To: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Thinh Nguyen
 <Thinh.Nguyen@synopsys.com>
Cc: linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: usb: rockchip,dwc3: Move RK3399 to its
 own schema
In-Reply-To: <20221219191038.1973807-2-robh@kernel.org>
References: <20221219191038.1973807-1-robh@kernel.org>
 <20221219191038.1973807-2-robh@kernel.org>
Date: Tue, 20 Dec 2022 09:37:00 +0200
Message-ID: <87bknya5lv.fsf@balbi.sh>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_233707_938090_0BDD57E5 
X-CRM114-Status: UNSURE (   8.85  )
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
Content-Type: multipart/mixed; boundary="===============1556837914044965743=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1556837914044965743==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Rob Herring <robh@kernel.org> writes:

> The rockchip,dwc3.yaml schema defines a single DWC3 node, but the RK3399
> uses the discouraged parent wrapper node and child 'generic' DWC3 node.

Why discouraged? Splitting those two separate devices (yes, they are
separate physical modules) has greatly simplified e.g. power management
and encapsulation of the core module.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCAAvFiEEg3wK/NVnD14JZqsmho6y4DXKpEQFAmOhZhwRHGJhbGJpQGtl
cm5lbC5vcmcACgkQho6y4DXKpEQmdQ/9HUBWlOG25MYVfiwdxaImz5mgCa6Tkae3
5Jsmxxfrv702yoTBc/Pfh32g6Vfbn5u0zO0D956HzXZub+q4ZXKNzJMRz6Hkgq5Q
8L3ta+RfPmSGc3pd9cB0zY77xeI4NAWQXeIbt1wz3uik9+RqHONmz2oTU47vIgHS
U6yNIecEBDIPBIxJ8jgi1kadmPeyBZAEzHjwqzMsJjDM3aYUXY3pMn+tL4N3noxD
xtCLfnCKSStZfkf1I+J9IG25apct/gdJmVXh8nkL4jxnLJKvobCXBszM/AI4uBo9
ROgE8mzawpuR8cBzh0FQMhSwcEHFkPoOA30GgJXwgnvrsSXgNSFAWQTdY4T38201
gKaWXK3dIeQBU32K1Zxlm7/vcLZn2mR6HfkmgRG0Y6ZlVeLvZIj2UVkcQHrMVAGx
GEjhev3Yn3TBU+237RRAYR6+uYKcFFgtmhc7YU1u6uQWJUVniztdpEe/Yvocz6xK
CVU8EYO1y4U1jo326JCRnGMwHDKH9JUyt0so+mDmuVGltkMCb+4R26VAXGC3iNl+
rs2pUYlXUn178Zs8rbBEBQUg/OoToFaT7R3h5zvdDiMr7ux+AhJALy2b+El63q1N
724mM2/9cm84opCok1LxBLaxeLxUGdCREL7A3uJrhiqK9rC6za8emL86KNPuh6na
ttm1GYfsohg=
=LkjN
-----END PGP SIGNATURE-----
--=-=-=--


--===============1556837914044965743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1556837914044965743==--

