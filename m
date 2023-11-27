Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF5EAC07D5A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 09:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yI0jkl3oZIJiWlCIsMH7Z2VZztegWiCAEHYp4GN2AlQ=; b=fTWJqmoCPKGW6CXD6K1Bh5YNDY
	JN2/H7Fld6yylALZSKZkmGjlqltz9joKdjXNQHG/xx2OURf8jXfc0E50Sm6+BLvfTZfNbY99gvI7V
	rMJNIJ/HC//iaJPScN9pHJOQZVwQzaQcDRkhQ5Xp2Ud6sI559uoykhqxEEKTQerRKI0B0sk3i48pN
	GOArxJji2Sfj5lv5m4FYVpYMcnaP8M4J9CT+0r14k0BCoswc0PIokeBAObdnwInDWYumzg24DiD3S
	qv3Gd/xxVI/nhZQ241nb3tOviRP4HOQ6cNOpbwwmLpGxraIgrJGwSFWYnObMKIFYt4+RDzak8VHgF
	HflUFQCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Y75-001zh4-0m;
	Mon, 27 Nov 2023 09:41:11 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Y6y-001zfC-07;
	Mon, 27 Nov 2023 09:41:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D917CCE107F;
	Mon, 27 Nov 2023 09:41:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31DAAC433C9;
	Mon, 27 Nov 2023 09:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701078060;
	bh=VAe16eg7y6ayTkfAT9VTCj+Q3FFIy+QqJ0XsEAFzdqo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ie6DAQKQwth6/jsj75eLcKctEZhUSo3DB0NwQ2dpsFGO1StB90BsXbeaHN0mAAp5r
	 eBTOZ0KH8MvrhVT6ZSAnGs89nyE+jIjaFTVBfoRB5NI1Lx2Cch6ycLeW5aA1RB8nR1
	 5Mrnhw6eBJEzPlKSL6d++7ZRL0QcMchZ30C/YoEic6QG3a+aEdIAWmzFtJFP3sLZAb
	 4O2z7iEkjaCO8KpJx9qFQH2UviDu92Ydl/azM+Wc7SAkwxNbnb1cRGkcCrU4TRNM+b
	 hmM91Th0AzdPz8u7IuiA4GPFBr4oJJ9Do4FmdDr4hCfNvLT4Y2j38vpWSBxUO0i+CW
	 9jqQWwJk6rFyA==
Date: Mon, 27 Nov 2023 10:40:57 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Johan Jonker <jbx6244@yandex.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH RFC v3 22/37] drm/rockchip: inno_hdmi: Remove useless
 output format
Message-ID: <pxj5yv3f5ukobsqfokd5ojh2is5za5wdv3imfqrlcu3smoib76@5lw5bwl77uvg>
References: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
 <20231031-kms-hdmi-connector-state-v3-22-328b0fae43a7@kernel.org>
 <52b232e4-7ffa-1d01-efa6-a0af84729483@yandex.com>
MIME-Version: 1.0
In-Reply-To: <52b232e4-7ffa-1d01-efa6-a0af84729483@yandex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_014107_238155_83BB80A8 
X-CRM114-Status: GOOD (  11.51  )
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
Content-Type: multipart/mixed; boundary="===============6108408245160103116=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6108408245160103116==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fgomrsf3hj7iwzkr"
Content-Disposition: inline


--fgomrsf3hj7iwzkr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Nov 25, 2023 at 11:00:52AM +0100, Johan Jonker wrote:
> In stead of further cripplingRockchip HDMI drivers one could also make
> it functional based=A0 on EDID info.

I'm not crippling it, it was dead code. This has no functional impact
whatsoever.

> To start with the output could you turn RGB888 input and switch between
> RGB444, YCBCR444 and YCBCR422 output.

I don't have any hardware to test that out

Maxime

--fgomrsf3hj7iwzkr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZWRkKQAKCRDj7w1vZxhR
xRUcAP9CI1PcttTNikiIZjxjYzvcKVQK/UCxKc5meY4XBGQ5OgD+LSZ4/nwHLH0l
7NofWH+K9NjPixshRfY99cdGrd+x+wc=
=/lNp
-----END PGP SIGNATURE-----

--fgomrsf3hj7iwzkr--


--===============6108408245160103116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6108408245160103116==--

