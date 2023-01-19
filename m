Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D34BDC004D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 08:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Bus6dloC5GzdTPpj4PfOz2GU/f54h7p3NrIs4nbvvY=; b=db2M0sVquQKY6XPEknYmMewHeq
	1QRfNBE6WOqxUBFXudbjQ3Rf13qltZBgBJ9iNdVzN1+r4M5CTSRigwvZnhfMdADniFqAK2hR7wtAB
	8Xr4BkMbiAxOPKhvqgbcgXnsWmPEqPBkCqTTqXH8zrycfd4q8wIFXqthahYz7XYcQJmartpTMZ0Ef
	Cb11w4Ru3GD0mXIaesH5mX7AeWeT/lh7TQhAhgHEGbKipRFBHev733Zh3tGbxhVguh8h1eO5N/v44
	bzEXlX5VFvCPhmPfBxJu4YtkWE0hOzUWaR7StlhV2Vam+pPrVqTKiE6Y+UO/Q+kCPEBM+RBgxsNhT
	/dotXPqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIQ5V-0044oq-Fk; Thu, 19 Jan 2023 08:15:57 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIQ5S-0044nb-OB
	for linux-rockchip@lists.infradead.org; Thu, 19 Jan 2023 08:15:56 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 332D3320095E;
	Thu, 19 Jan 2023 03:15:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 19 Jan 2023 03:15:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1674116146; x=1674202546; bh=AZRqOyZ8Jg
	0MbSigIqhiYgKAcHHhTXZH8+7bfjgrWU4=; b=LP5+JNiwkPnLwEx6u9gEKvzPak
	gR9u40GgP9CcYVOzfbGhJ2/ZgWW4sQNJt0BQ2YWZtlCtkhNU27aKU1NlfEwocW4s
	deNlxLjDFOJg5XLWCxO+xqqw40kCqJ1Bee1H28cpUagno9js3vjSQNu9omlLfmO1
	UA0XYllwYU/kfFEXYNfy3gc7K+F2AuydY3HKCCyRpZmaKoyrIL2tQ79r4zkO6Rbt
	WGWnSTHP0ca/s7nppeht4wmANRjNUClAb4d11HYGO+mwzBnyqGFkvQMelbRzo/Vt
	YisWgjxYgFwtI8ePMb9d0po2oEubJj3IJTbpMuGpzVAkf3IK9tVh10SxHkfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1674116146; x=1674202546; bh=AZRqOyZ8Jg0MbSigIqhiYgKAcHHh
	TXZH8+7bfjgrWU4=; b=VaQLe8YARBu4q916stigTGelbMrwK68R9xSCbIanguf+
	l7ie2L/BlLaxqZL1+b4KE+FIjoAjvUormBsO7NJ+ug9o8HD//ybJxA1CyOBeAQTP
	s3Qw8tbJl3kiXKk8wrz+ZIjsPP7JSjGwMM2SgpAAtnuHU8Nz70iqJJde4bbqc8qO
	C1SIPoGPosf2Mhanzij0adU9xkbvTzrnu1nI2uIrSlbmKSbXI5iQEjdi7VQGKvPT
	+qkfvFQtuLWZtN0y4hTeF57DxsOFAlveeJmsPrJpDy2HToPXx8xDRLrY2wbD+oOO
	BzNnB/8LYg5fjf/yBhGInIElQal4bkMGcj/5uJS5ig==
X-ME-Sender: <xms:MfzIY_Nm7wDMMrKoKqunBID-IyJkvuYtzDQpT7OQbFYOxFXBXYjf_Q>
    <xme:MfzIY59DZ2bm_m915g_KP5xwa9hwOgtfiEQuyl5jjJNGclvfoGX-6MJxSt8HyGEQ6
    lGtRpVSLOuF0OePK9E>
X-ME-Received: <xmr:MfzIY-T8rJAxohiu_j7QTKpGtJWMp8g8_pN46xmg9L9i1DoC9M6BodfOc13bAOgB0ThD_SUUP0rxgYHM-asn2H1IhLt2k6D6Y50_3CCG5MD-mg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddtledguddukecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgig
    ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
    grthhtvghrnhepteefffefgfektdefgfeludfgtdejfeejvddttdekteeiffejvdfgheeh
    fffhvedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:MfzIYzvx7yNbHEBqSgndxb-UFJbYvwmKoto5AyWb1XIIvtdk_8nRvQ>
    <xmx:MfzIY3d8jKhKldvaar3p6WSbbFVqZAdcwquOzs4eVSxO3k4JkqReqg>
    <xmx:MfzIY_2EPmypF7BSidS5QFm8Tl13sZnhF-tPzJzebSysey09PSp37g>
    <xmx:MvzIYzr1AuA9avFaah3yRML2Lcp1m-BqegNjohm-I2hapr5cMYumDw>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 19 Jan 2023 03:15:44 -0500 (EST)
Date: Thu, 19 Jan 2023 09:15:42 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
	thierry.reding@gmail.com, linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH V11 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Message-ID: <20230119081542.lfgvaj6lwwdb2eaa@houat>
References: <20230118233135.1174859-1-macroalpha82@gmail.com>
 <20230118233135.1174859-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230118233135.1174859-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_001555_016674_67A48EFC 
X-CRM114-Status: GOOD (  10.20  )
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
Content-Type: multipart/mixed; boundary="===============5359458066749255134=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5359458066749255134==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xnang3wyffhh7tnm"
Content-Disposition: inline


--xnang3wyffhh7tnm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jan 18, 2023 at 05:31:32PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add helper function to find DSI host for devices where DSI panel is not
> a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> official Raspberry Pi touchscreen display).
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>

Sorry for not noticing this earlier, but this is a bit confusing.
Signed-off-by is there usually to follow either the authors or the
maintainers (or people that passed the patch along).

Given the order, the SoB here indicates that it's Maya Matuszczyk that
committed/submitted that patch, while you are the author. Obviously,
that isn't the case since you are both the author and submitter.

So what's going on?

Maxime

--xnang3wyffhh7tnm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCY8j8LgAKCRDj7w1vZxhR
xZ1XAP9XFViG0eHZD7K5/KzeUiZe3lVYfB1DC8XKmh9GP2ag3AD7BlvkM95/uzQj
IfPVTz2J4DzlByHwREBzcFBWojs09wg=
=JHSM
-----END PGP SIGNATURE-----

--xnang3wyffhh7tnm--


--===============5359458066749255134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5359458066749255134==--

