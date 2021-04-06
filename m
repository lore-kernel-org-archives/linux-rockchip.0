Return-Path: <SRS0=2XDZ=JD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74F5C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 11:54:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51A4B613D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 11:54:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 51A4B613D5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8I44NV/FrOvm43QtsrODwaSRolMVZd969j2rmqGSFzI=; b=qfgx9FF/BHZQnOUWkUwequRbY
	/Lpedy9D56Ru5eRGptYND2CMOxtf7JAttiNwp7ceMvJ/IJOaKfiJbROno8A06yfPAro7pUBTNSS1p
	VLD38RobD2nMYnzUIi01juI6nZxnpECnaLlMFP+ReGMlSE87SG7N6cpRPxeO8fZ3A3abmOJZGEJw9
	GW9so1/s2k5ivrxZ1tL1ZETV2Vojvbf3tPIi1Ab6EDBYkgxR7n7gyzhQ/z3mFJTsvkaaPvt/cF0qI
	wAYkTa4epo/bIl5/GrpZR4Lhjz3cdxiHqTcaY56HJcxuSMiogmS0fQlBdYZkhXH0wHOKq1OYtEjDZ
	/sUmELI2w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTkHl-002SOu-Do; Tue, 06 Apr 2021 11:54:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTk7z-002Psi-LW; Tue, 06 Apr 2021 11:44:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 54559613A3;
 Tue,  6 Apr 2021 11:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617709453;
 bh=2Vm9ityjyZldn07RFATp/5Z6vJvrtF34+UIuw8/w51g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GReFQWQpMbEkyEVsTKHs7ItqEeoFaP16m5Z3rbHGee/xUg8t97DrCK353XkdbGbf9
 lao7igukf7FQKFGApt0frZlorzz/1m9K6PSQnaNs8KWGe74p49eVqMnMWSMWr/eWb6
 h0E6V8WCjhzowkzHQKaBkT6y+Zl0z1OLo0UBhroRVCHDhJe0Nw2db833UnCeJjEsF5
 vFXsftpWcfKnGw/Wg7KJBeV7IdlAJh6JaV2qku9wWyxeJQCnvfMWFJ4nXmMzAkQKYp
 MBgfG9A4tCMG1nh+ayjA722WXw/iGJ434k7CUQ3wegQio0D9yZSJwuwQyNNFxp3+dF
 yc6IGZsD1CfUg==
Date: Tue, 6 Apr 2021 12:43:57 +0100
From: Mark Brown <broonie@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Support Opensource <support.opensource@diasemi.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, linux-pwm@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH] pwm: Rename pwm_get_state() to better reflect its semantic
Message-ID: <20210406114357.GC6443@sirena.org.uk>
References: <20210406073036.26857-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20210406073036.26857-1-u.kleine-koenig@pengutronix.de>
X-Cookie: BARBARA STANWYCK makes me nervous!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_124416_459157_84A1F982 
X-CRM114-Status: GOOD (  11.43  )
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
Content-Type: multipart/mixed; boundary="===============7867737614953313139=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7867737614953313139==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UFHRwCdBEJvubb2X"
Content-Disposition: inline


--UFHRwCdBEJvubb2X
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 06, 2021 at 09:30:36AM +0200, Uwe Kleine-K=F6nig wrote:
> Given that lowlevel drivers usually cannot implement exactly what a
> consumer requests with pwm_apply_state() there is some rounding involved.

Acked-by: Mark Brown <broonie@kernel.org>

--UFHRwCdBEJvubb2X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmBsSXwACgkQJNaLcl1U
h9CeAAgAg9/Q2RgSOxhbh64cI3whEBi2rDoy4JrnVOIaezDbl1KVpYtyba0y715D
Y+27eAxh97zRr3AOb8di8IGVTcKZqEJvwbFWeAxIYTqr7yewyfFV2r3+aj1n6uji
E06xtLVSajGadFJ8cwDdQmB2HGTiOraS8BIQTq8UgV4X6S2LOC6RRZ/BADXxlSXZ
awgIor1dw+uVGentYfCseXYt3xOeoBGm1kcv2bLWZOf7p34NrBErZxEelYeZycnR
FVaAHx4aGe2/1xPGOYGRdXxub+JSiKOXp8tFNWDNnrr/343S2A8pBE8u1GWqB2tu
i/C2E1EQmwot6hIKN5/6hIg/LOb4cA==
=bscb
-----END PGP SIGNATURE-----

--UFHRwCdBEJvubb2X--


--===============7867737614953313139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7867737614953313139==--

