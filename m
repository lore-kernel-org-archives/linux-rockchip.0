Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAF36CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 17:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XM2qat2/q27SzsTi9/fIDroQhbF/LSTQ1h5VGe2ZzWw=; b=qDXr2kFTRpIAipjEqhxEyKkWji
	XxnmvdtPUCoKqF6RbYQlcnW12LuqxUnVjbSM4whS4wDtuwEdHuLUnNXXDWAr1T6i9LjrLm9gc+nBD
	LGw00loTqHD+7neOmvJBVa4E03vw4A71tuQDgptx/BqGyBdReUdFZhNXQZodD5W0HsD3LcgfUFafC
	p5ftV1OMXdGspj3I2qy7N/jOSO126uwOeMsc+Ly41TfPJHJuITk6KIcylf996biWBhEJAr5eyAk80
	f/ZNLEvtGj748Ww5bAbf21wbM8+QafnXS1w5Z1gf8Ef6oFhwYbNATeD8V96HjpH5Zd+VPMmfGlyma
	2fhfmf/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBd4G-00000003u7l-3W04;
	Wed, 22 Oct 2025 17:56:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBd4F-00000003u6T-04Lr;
	Wed, 22 Oct 2025 17:56:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 467894A719;
	Wed, 22 Oct 2025 17:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80B06C4CEE7;
	Wed, 22 Oct 2025 17:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761155768;
	bh=zLBi04RxI2O0RigdxNhStIqhpXBwVCCldfIsWnpvxxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cm3RpiWi04aJLnz2ZZaO7BKC23T065gjcOqZ3/6CORMFzTwphQq5h09SnMwBTvUMd
	 ShVCsfZ31u6K6xC+WyZT9pQ44cao0zcXcGIC3LGprce5oyyOE3o9DlH/CK+VAywqVg
	 2TTtgXgikGdl7KixyDu+YWDONxoxJRqUiUN+pslnoupPrqdaV2z2EnSQOekDfJ9zM+
	 YyWTDjUlLPkddg+TFDS7SWyqVxjQmoOf92Xy7KHLTyQXA+CzClK45Ivn2Ofu+G8v1B
	 EHICJbnt5aMBBb4VzmZ5MioF1HAC7Yl2jT6y/pLCriQJNW9pbCgmsTmuPXx5hoJUmB
	 xO/4dw8OyXX6w==
Date: Wed, 22 Oct 2025 18:56:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: net: rockchip-dwmac: Add compatible
 string for RK3506
Message-ID: <20251022-splice-swimwear-b4aac8baa143@spud>
References: <20251021224357.195015-1-heiko@sntech.de>
 <20251021224357.195015-4-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20251021224357.195015-4-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_105611_085224_C9D9DB3A 
X-CRM114-Status: UNSURE (   7.09  )
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
Content-Type: multipart/mixed; boundary="===============4481787918284533814=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4481787918284533814==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VGM0Y4Yfiy4ZRLY1"
Content-Disposition: inline


--VGM0Y4Yfiy4ZRLY1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--VGM0Y4Yfiy4ZRLY1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaPkaswAKCRB4tDGHoIJi
0rF/AP46l7hsdSxhsDVFRzb7xHY517Q3P8GvjAI1g97P6NecmwEA3jy2Q55+Tnav
n7u98UvqjNZV7hY6LGukAHjOHVj/tgs=
=DDbK
-----END PGP SIGNATURE-----

--VGM0Y4Yfiy4ZRLY1--


--===============4481787918284533814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4481787918284533814==--

