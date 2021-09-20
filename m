Return-Path: <SRS0=3gvV=OK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0766DC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 11:50:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE58760FED
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 11:50:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CE58760FED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=78rwiXrFFphM+cBD+ynL4d+6oq5Q0MqctbX5vpb1U1E=; b=s35tl1GOh7ExxxzFL8GHEYDOtv
	++S12PTzPIvAnTz9KL8xgQQ6AR6/QDf8pl5PKZduFOASqkfw/P99YfYVE7qAz1DWZJwDoxpaTJdPd
	idbNSCLuziuCAuzSR4x2wV0EQj2MehgMELtgl7+tujWwSb6TjRxVhcm1k3hyBucgYOZammCESiaOy
	WZaZFCXY4Sjk0hrO4voxdy6/BUK3ulECu/v6gu1wBWO3DbKjnM/sMKWtcvJfQaA5LxF61uk9txn/Y
	qTDVXNSoJPeRa+C5FtC8aYKou90c4dezsOBWO/z9lCbRw05oaB1Oi4c7xt59pZhTHYv9EcLKg/85R
	fdsR8sfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSHoK-001Rw0-2L; Mon, 20 Sep 2021 11:50:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSHo7-001Rt8-4k; Mon, 20 Sep 2021 11:50:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AAE1E6108C;
 Mon, 20 Sep 2021 11:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632138598;
 bh=V6kgYgogW976xpByhMqKFGsk3ORwS5VxWZ+29DRMxHY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AlaozWlWlARDWspL5oZTclqYkhokylGOFqWGYdLdB02cO47tSDd7L0tudUYAx3dFf
 txoMY4xg7OH8bq+ztj99ZgC8Kdaa4BeMHN2IR+8LKff3V/XnyRCOiX3nIr8n4WYsgO
 wPii8/jg2yFfALwoeAkHFdW2J1A3Z82epJbqEX5sJZFIhoddEzzQt1xlAkrU8N+6JV
 ALX+HYfiiIK9wg6jAUHh3l0F8m8maKsuO4amRpPX+xwq3B2TL58aWCkXlXsG0eYDQq
 m3wPWMWnrVgQPWVMX+2NRvsUwSf6peLFQBTpbbfn2715FyElDuxOSeuoHl2dFob08F
 Zz2N0RgiGWezg==
Date: Mon, 20 Sep 2021 12:49:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Message-ID: <20210920114914.GC4192@sirena.org.uk>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
 <42974939.Tn3hggVSkZ@archbook>
 <20210916122549.GF5048@sirena.org.uk> <2435067.tOv7cHfTnj@archbook>
MIME-Version: 1.0
In-Reply-To: <2435067.tOv7cHfTnj@archbook>
X-Cookie: diplomacy, n:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_044959_244144_8C769828 
X-CRM114-Status: GOOD (  16.08  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0968822656848943857=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0968822656848943857==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZfOjI3PrQbgiZnxM"
Content-Disposition: inline


--ZfOjI3PrQbgiZnxM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 19, 2021 at 07:38:47PM +0200, Nicolas Frattaroli wrote:

> Going forward, what would be a solution that is acceptable for upstream? =
As=20
> far as I understand, the obvious route here is to drop the rockchip,fsync-
> half-frame property and just always set this mode when we're using a TDM =
bus=20
> format. Is this correct?

Yes.

> According to the TRM, the register bit this sets only affects TDM modes.=
=20
> Though since TDM is not standardised in any way from what I've read onlin=
e, it=20
> is possible that there is hardware out there which expects the non-fsync-=
half-
> frame mode, but I am completely fine with only thinking about this hardwa=
re=20
> when it actually surfaces.

Right, we can figure it out later.

--ZfOjI3PrQbgiZnxM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmFIdToACgkQJNaLcl1U
h9BGIAgAgRW0++RxUFblbEgs7rujuZ+mmldKzxR18cC+Os/498LvNXyA+iEO49w8
uKcqHbz77yNSnVJj8aJhhLin6Xie6m755h+PFnlZ2IbjCRrfHT1QPP3sPmfJn3xW
RrZHrQX3kKPb3Tbm8s9tdz0E1HgjkqnrlETHnGbXYL5RUv2/SzDQlAD40i153a1T
vcaIhIvmIH5un/jbFoJSPlp11EQWsMN1dz1CvWaT4m+3AsU/oht57XdVeJHk53h1
HjXefXq9ZE6bjHSwudceZtHvM4aFf+3IVmRM4i9ZKHF046mOYWxw+49Z3dTtA7Bi
ipwsNPQOMZGPIfZTgZ8+ST/F4aJTlA==
=xhRq
-----END PGP SIGNATURE-----

--ZfOjI3PrQbgiZnxM--


--===============0968822656848943857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0968822656848943857==--

