Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F5BAC27C5F
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 14:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mTKiXQBVyk59YmO2QlgcpZrtXmfA57quLBXaf124IYM=; b=SdfrZ6qFOvWIfUEuyeUBzf4w2Y
	7hQbUgKn73VTyvd4j+W8vb3V6gostDYxRMTp8ds1OZ5Z8sQ79zJZI5AKINCBNOCqf+WFLbL4ODz1x
	wPCnRkMmNQfJuF5QMDDZqBcNcKdM+hYSuDlyrEX9+APscgzAVGxi2IF1oxGreK7FNDiRSmLRCXSxH
	6ew3VgkOJV8jWVXxpYm5cE9sSvy5TbJGxHrUVspxAgHqW7404MB44QBi0wzlXOvaI4H6H1P69rsot
	8bZfYl8UHX33VpmQw7Vt69YoZAQMuy0uQ9rFtnQBRfvbc8NuqS2Po70MAUs3fT2HaUcl35DBwI/N1
	2lBeaSsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFavJ-0000000EWCD-05AF;
	Fri, 07 Jun 2024 14:50:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFavF-0000000EWBB-3W97;
	Fri, 07 Jun 2024 14:50:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 44B4561142;
	Fri,  7 Jun 2024 14:50:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 942B0C3277B;
	Fri,  7 Jun 2024 14:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717771829;
	bh=Ri87GktoRdbIrRZ4CFHdq761BmHVMP0uI9BCFg8/uUI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ajpPnekzaeDsiKbcXi7JmQ1H14SkDq/KVtLrBwMpKKm3pPbbQC/XhwIsBiNjZYKyd
	 n0syZ89wyadP9smzrCuCvUanaH8L+0udg6KLkyWVzRjCY4PyhV5UTq28Fjo/buxHqI
	 XVVbtd7fR0cUP+3BRQJjrUNm2vTVzuxmaWCs0QsHTUbeDTLWg7OjNT3d0jj8VET0mW
	 aNKXJijIhUBbrqPTpstowjiQS70DcZXvgXHaKUfcD00jha6DmLoJMyAMD0EGCU91xT
	 /jo5frptrBtdIRWNEELO4cjyTcDX4yxhFOcP/tllDC5um8RBM2lX+vM9TbBmfKWLHm
	 IhCVeuFvDgmLA==
Date: Fri, 7 Jun 2024 15:50:24 +0100
From: Conor Dooley <conor@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 2/5 RESEND] dt-bindings: clock: rk3128: Drop
 CLK_NR_CLKS
Message-ID: <20240607-dealer-vertebrae-9b22db3dc43b@spud>
References: <20240605210049.232284-1-knaerzche@gmail.com>
 <20240605210049.232284-3-knaerzche@gmail.com>
 <20240606-dispersal-buffed-27a6e7540d4c@spud>
 <1f549cba-a754-4256-aa4b-dbc630e5e451@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1f549cba-a754-4256-aa4b-dbc630e5e451@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_075029_938131_AFA30638 
X-CRM114-Status: GOOD (  15.65  )
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
Content-Type: multipart/mixed; boundary="===============6830119810777653013=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6830119810777653013==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pn98VwvBn/z4pnw6"
Content-Disposition: inline


--pn98VwvBn/z4pnw6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 06, 2024 at 07:26:06PM +0200, Alex Bee wrote:
>=20
> Am 06.06.24 um 18:09 schrieb Conor Dooley:
> > On Wed, Jun 05, 2024 at 11:00:46PM +0200, Alex Bee wrote:
> > > CLK_NR_CLKS should not be part of the binding. Let's drop it, since
> > > the kernel code no longer uses it either.
> > What about other operating systems etc, e.g. U-Boot or barebox?
> For u-boot: RK3128 hasn't been switched to OF_UPSTREAM yet and it still
> uses it's own (dated) copy of the dt-bindings headers [0] and besides this
> macro isn't used there. Barebox doesn't support RK3128 at all and I'm
> generally not aware of any other bootloader/OS does which does and
> especially none which uses this macro.

Okay, thanks for looking into it.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

--pn98VwvBn/z4pnw6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmMeMAAKCRB4tDGHoIJi
0gLAAP9Z9FIoMScpKcRZaz/8f9q0x1pPmmkVVR4gcGHKm4Jw+gD/UZS0U/GpLXTT
qhR6kXOZM+E1lndKozOzLvUKmPweXws=
=CcOd
-----END PGP SIGNATURE-----

--pn98VwvBn/z4pnw6--


--===============6830119810777653013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6830119810777653013==--

