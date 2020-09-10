Return-Path: <SRS0=KXJX=CT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 846BCC433E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 06:25:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 078B0207FB
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 06:25:08 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xSLHvB0x";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="seRvHY4A"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 078B0207FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3ILfO1bXyCT0P2FyLIhP4wpyVL4y7ia5FedR8Ofjvh8=; b=xSLHvB0xiP978Z+rPNJSNs/Ts
	Y8CUqfNWSqqrt85D9nYpWw+LA4LrFqn9Khr4Uu23VvRKALcaofyHgoiPW/hssGvNuyodCaBXXPPZB
	qU7TEjE9fcN974L8Smgoh3RyEmt9nYMRne7OK/ecn5L7ymZyHF53GaGr6ksYqlL+/UJWXQ87GzHl8
	dTkxNdbg66POn64gsbXQ4YDPZOq9tiBblqdwlqU4+dIoQ6Yd00n73dr7c5z88lXosovfsbvqjiBLj
	JYBCtL4cTynMpWrD2SvJ7id+DCj8nNnfHIhJFCxQ04VlEJIJrgDwi083BnP2+hgUct8xuku9C1Qzn
	AtaLJU/oQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGG12-0003qt-TZ; Thu, 10 Sep 2020 06:25:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGG0y-0003pO-WE; Thu, 10 Sep 2020 06:25:01 +0000
Received: from localhost (p5486ceec.dip0.t-ipconnect.de [84.134.206.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24B43207DE;
 Thu, 10 Sep 2020 06:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599719100;
 bh=//a6qxzEgSMZ3QQI7xw0qyPHvTAV/TNy95Zgt/g+v60=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=seRvHY4AHQ3zjw168vBNI9Sn7KbMkxIoe0VjU9K3EMlgTQZOHNWQ2NzzfLYOyHMkz
 pqjU0IrB3AfuBWKvlDjQBkndrzSx2PhUnEUSQ3pC+DyOh1mx6YPspcWR+7pA+EKvQU
 jrQG/7gEMGYy2dft9u5scUMMtbQZhAxxM+u7Bd7g=
Date: Thu, 10 Sep 2020 08:24:56 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 9/9] i2c: mux: reg: Simplify with dev_err_probe()
Message-ID: <20200910062456.GE1031@ninjato>
References: <20200902150643.14839-1-krzk@kernel.org>
 <20200902150643.14839-9-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200902150643.14839-9-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200910_022501_107418_5AB4195F 
X-CRM114-Status: GOOD (  12.85  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Sekhar Nori <nsekhar@ti.com>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, linux-i2c@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Peter Rosin <peda@axentia.se>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============6093003710064916387=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6093003710064916387==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="orO6xySwJI16pVnm"
Content-Disposition: inline


--orO6xySwJI16pVnm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 02, 2020 at 05:06:43PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and the error value gets printed.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied to for-next, thanks!


--orO6xySwJI16pVnm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl9ZxrgACgkQFA3kzBSg
KbYpRw//TLwPExzFBv8TTBphzRzCmoGKsmf5N3jW0O9HgZmAWVorubIMyACOmggd
S8mrJRk0d+HRsUq89l+y7MFDjo1wj86is7xBO4KQTm//nK0zqfeNNXMPGiFGwXa0
IhrTvGn91cJsUNDASSuVHPJUbXFxh62EiXYX+Va+RKJygyPRZEoEgQiaHoZf74sK
q3JETm2um6x2fCbPhIC4jN5TjvFwbnkiWFpUoZg5kQRao/qYCNbUY0XP0sQQMsPL
5PcpWM1HU505eGGIahQv8gl6ejxaz/w8K+GE7GSttBJ6T7/xy7ylqMnbB9sTFz7s
0+3VMAVcQKwFRq8mpU9lXuEc9cnzoyRVlOd3Dxi6QbSN2XIOoG+ipqgYq6ovIP1m
lAaYc+EfCRD9o2EdWkXMo5jh7Z+6FKfhnr0SVZphPcD/pfzFON/EEV4SN8aHxclL
YU6lEWItw9Fmo2XR8JRtLMtzKC+juNKrs6F7FnasrFV8W4BiF2AE5XzQDZ/keDfq
vS1/YnYBtYKGhFLHix56GRFIMsIXaa78ACwvGCIDk8qqrWHvOH3RCugI9CZMrizp
A79qLX53E+hRfgfowJP6LPZvWVWaSwXyBvvgmLGW3LRRfMYCCWy9goIfX3GzkpxB
caRa+RKl7G3B0fU/WQkKn/B0soM1EiUdQVSkmtGDxEb+v8bBzeU=
=oPRu
-----END PGP SIGNATURE-----

--orO6xySwJI16pVnm--


--===============6093003710064916387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6093003710064916387==--

