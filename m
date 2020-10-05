Return-Path: <SRS0=gs2I=DM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AD72C4363A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2020 15:39:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC1BC2075A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2020 15:39:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="GF3bVB9p";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yt3ruZa6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC1BC2075A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oB1GCs2y2oMwHrCO5NKhshs27Sa5A1l81paj+h9Bbg0=; b=GF3bVB9py/V2FV7+vQxyOv1yH
	M47fqnVjYgtId2si8ebQkegN26v/mtD7nQxIK4LkWe7WXEJJbiSse4KuLuk4JVmxPgCL+gUI1bZkH
	lLHWr7Ksr6qRL5pA1vz+BWdgsetYBTuUiBBX7ICLTxaKWlh17jeeo5GjLoO5bsaV/K3fE/cGi+zkV
	YLEOEphdyq4BkLR8Agf3AsatHU2cZPBZOLvdpOr9MORp3ERCXuq6506cTVM2JGXIWkLkvYZ+4b4G7
	mbVorWDFFuZXOZMLp8VVWwvB8uQ0ZoyTs40BNSUw7Sz+5RMG6+NlutJwUi5fMkeia3DhHkaWSDAfN
	ZAWTndj6w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kPSaL-0000V8-Kl; Mon, 05 Oct 2020 15:39:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPSaF-0000S0-7l
 for linux-rockchip@lists.infradead.org; Mon, 05 Oct 2020 15:39:30 +0000
Received: from earth.universe (dyndsl-095-033-158-146.ewe-ip-backbone.de
 [95.33.158.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CD5C2085B;
 Mon,  5 Oct 2020 15:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601912361;
 bh=YDa9qgcYN/rLvsHl7wxHnDzXxyPxrajJMh139W2bTQc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yt3ruZa68573tch0c/Ho1ALzHfCpTDMLesbdlPmWRDYNKB50IT55EoZp87fsRkzgz
 7+6j5JNoNjJ3AsqOjA1un0djegx8x339kHr5uakI101R3J4o5G+KgoyioglXZXg5dL
 Bxy38eyfhsJbMySPsKZTFlatV3r6LR8AuCR8oLYA=
Received: by earth.universe (Postfix, from userid 1000)
 id 1CDCB3C0C87; Mon,  5 Oct 2020 17:39:19 +0200 (CEST)
Date: Mon, 5 Oct 2020 17:39:19 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: Another round of adding missing
 'additionalProperties'
Message-ID: <20201005153919.llmcjbz4hiqvzd4x@earth.universe>
References: <20201002234143.3570746-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20201002234143.3570746-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201005_113927_472222_ABF68080 
X-CRM114-Status: GOOD (  15.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-iio@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-leds@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-serial@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, netdev@vger.kernel.org,
 Baolin Wang <baolin.wang7@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============7473115442375716175=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7473115442375716175==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ruzfmjzmyxibtjj5"
Content-Disposition: inline


--ruzfmjzmyxibtjj5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 02, 2020 at 06:41:43PM -0500, Rob Herring wrote:
> Another round of wack-a-mole. The json-schema default is additional
> unknown properties are allowed, but for DT all properties should be
> defined.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>=20
> I'll take this thru the DT tree.
>=20
>  [...]
>  .../bindings/power/supply/cw2015_battery.yaml |  2 ++
>  .../bindings/power/supply/rohm,bd99954.yaml   |  8 ++++++++
> [...]

Acked-by: Sebastian Reichel <sre@kernel.org>

-- Sebastian

--ruzfmjzmyxibtjj5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl97PhAACgkQ2O7X88g7
+pqkbg/9HQHD97P7Thh0rG2tNf/oTuwqdbqpGz8XffiIbWso3SaAukPavFc/b34T
Bhf9ldAe4Jy7Sz8qDavKYO8qMWOF8av5Je5ajNG3fFmRAO28Jz1vcRsxn7JiTvlU
SnlrNgxMlppGfzCt59G/IH6GyJVUVhZduf1HhaterbutugRNLE6LKY85rtwPlCR6
d4+sJE+gKYJmNhxj1XYyVrXoWQs22IA8nJggb2g2l5nHfFolffKHFRXTX5Ax7WFL
vhm/uSgz/4T9RyObm3lx4ODSSZqC3oc1E0DR3jf97rWH6xGUVFuJoAtE5ZpS5AJt
uC3k2QQJ8mCt5fUA+khtnS4DIsF07uOzd5Hbex8NcXiFnlO/9GYWlmGXxlAnhdrk
vSk8jlPgslc4xKpae1y8DFQiMndd9+1g0b4ZOJ6RnhaNpnOoFOIIPmC2ViRnQ8/0
kv5w7Hop2CIxAYj3Jk1IzlmtbmJeQt39ya7uHNJhV2ISd8P3AmrkcNedPd8OV7MO
7DrV+n/aKjH2gLYX0+377iH59APbluDQd64e+iDir2L5PP4BWXmyMOGqZ+Od7ScJ
YT7hlpoKPVwZ1lqta77S7LDpYrRtyv8Ce5EsFineimEc1b4N51GTMh6lDPIGVcXz
Xa1GC6kpGXU9Cx39fOb5K64cnrJ5Whplgiyv+4xd1suU1q25CZM=
=XHTx
-----END PGP SIGNATURE-----

--ruzfmjzmyxibtjj5--


--===============7473115442375716175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7473115442375716175==--

