Return-Path: <SRS0=B9YW=DE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 359D3C4346E
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 18:01:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8362239D4
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 18:01:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="neCbUzId";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaNdOR7t"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8362239D4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B1dQVGSKoJ+qdleyQ+64jK8AsEkMNTFx1WLpi0JjhNg=; b=neCbUzId9HmYOjEnAMciDTe9I
	piK9c887TBEgIP0nAxDOBSvCD/Qt/xS+q+2hla+OxWxMeKgetu9cK/P8MUR8BR5Ht1LeH+CyxI7ek
	74HOk2vKnOttxryJxIu/Ba/COZ035k0Z0TM/ylHcglvNUtK3suFAzVqXayPsTnoO8dg/5snF4jWiv
	Rf8If/kpqcYSdlL79Faez1qBBOF2yGNo3dGGaZCYsP89PO8NealADQY2JyEYza/0ANNkoEeMKrCpr
	JhxV5ssv3O6CC83luDewhJugkq98wuIoS0aDrtUPhiYVn1e+DOXnzk4XRec1ZSZQ+WpGnAmnKhZP5
	K8Ui8WFDQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMazZ-00006t-0J; Sun, 27 Sep 2020 18:01:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMazU-00005L-JG; Sun, 27 Sep 2020 18:01:41 +0000
Received: from localhost (router.4pisysteme.de [80.79.225.122])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 690C4239EE;
 Sun, 27 Sep 2020 18:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601229698;
 bh=IxIVeKJYmD2WxR814QsH0EvlFMWfSB1OHN5F7yMa9aY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FaNdOR7tXX/2emfjfzen11ZnesKWs6RmkzODxKu5B3rlPe6M1ofY7E95DBRFRUd3c
 wzzgtWZLRrCEgJuQUTOTsBLuf/kWEhQbkkxkd3QSIg4v/Kst7Xi2NhBIQUuSOVlfKM
 UMkHjgCrO/ohRqJt7wKP0i1f3zKdQSV/ZX1RzZvQ=
Date: Sun, 27 Sep 2020 20:01:35 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 7/9] i2c: rk3x: Simplify with dev_err_probe()
Message-ID: <20200927180135.GA19475@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Michal Simek <michal.simek@xilinx.com>,
 Sekhar Nori <nsekhar@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Oleksij Rempel <linux@rempel-privat.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Peter Rosin <peda@axentia.se>, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20200902150643.14839-1-krzk@kernel.org>
 <20200902150643.14839-7-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200902150643.14839-7-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200927_140140_792459_20B96C09 
X-CRM114-Status: GOOD (  13.03  )
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
Content-Type: multipart/mixed; boundary="===============6315821819215476674=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6315821819215476674==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9jxsPFA5p3P2qPhR"
Content-Disposition: inline


--9jxsPFA5p3P2qPhR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 02, 2020 at 05:06:41PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and the error value gets printed.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied to for-next, thanks!


--9jxsPFA5p3P2qPhR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl9w03sACgkQFA3kzBSg
KbZBpQ//da1xjT5NZ0JR2DTtqFdK+FsDuAnixq1XMIfQfk7Kt2bOC1PK9NSqjDPb
TInsycWM2dKpYl1UptBYzlYchflgmox7nLNkkK9SEsnk8RE3THm3FzT32YkQH78M
+3fnm+nDELWNIm+W15ISJY4lnqRZV8+8Pf6j6oJ9wGJtAIZ7ee9qDPuCQrCMAI0j
xQvRN8+0OopUB8puW7pbthc+HgjigBSm0KIb3CQLMwhnhDRhYx5ah5XYmeFo3N8z
8zaAm4ewrNuVfY59fUjBk9jv/tJwPYKk26hVNAa0tHooY16OFf0Ia3HXXqAq03fL
c6mPsGtoYwnkKqNzV+1rpBncdpLRnlh0Fa/pljrZFwrvsOaU/NprJ8K7mrcYGanu
4r/OldG1HGuxkLPdYQTd5VtDfD331uQHqXsvwzBu2mIGnZC/GNWBjj/jrkXyEO1a
IM6CKwKRs+1KcCdZ+y04FA+bgs6T42a8B/JMXHH6sNi0TLigmTGgFTiqzXcyUgtF
DUNpDuuENgCG72wIHxAhThw289KqXqzsLWpZMTbWmtbAxYWAUeitRRUdS0dKAIbO
yqR9BhJWbGJFrzFv2yUwxtGOaz9n7/hRnmGn3hXv7BgFr7/H7z92WEW0bZEDC7QI
hJ/GkaTK5wbEbGa3XdVwcRoG9/Z6gmwrTMl1IF9dbdslWN4puls=
=3XWQ
-----END PGP SIGNATURE-----

--9jxsPFA5p3P2qPhR--


--===============6315821819215476674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6315821819215476674==--

