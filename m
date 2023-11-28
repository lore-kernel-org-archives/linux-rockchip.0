Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B99EBC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 13:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zqh1PsKfVQiKClOAL2GzNExWzNiAqM/cadjYlHOoZRY=; b=3rzbT+ZvLH3KjehLT2rT9duFwb
	m7h52K68zPbdOPeryZO/k1Ryrz1Iu5mlyO1s3dkhVb5KQWG+u0fq2ilv6qDDDX/snDlmjjX2Xm+nV
	R6ata3GDNjz8vC6Y+74w3PtYFMhuzVY2kkpDT62vlY0lu9wjdflPF0mDXBTPjZ8vpnHYidqYvNolH
	fMDHl9pgwh45dFKjHx3DwZTuhEtIDQRR8U6jSz7XB9eSqBMD9TctAHon8Jc8xUK5iRhWYVCtNYyin
	or5BGNW9bEO4uXVWZrN0uDDg9mC082HRjFHsYk1pALlFOcO8l0EzCtV0444DiXXVtmROsNd4KhAaS
	S60KknVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7y9t-005OPM-0C;
	Tue, 28 Nov 2023 13:29:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7y9p-005OOA-11;
	Tue, 28 Nov 2023 13:29:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id C11EEB8399C;
	Tue, 28 Nov 2023 13:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C68D8C433C9;
	Tue, 28 Nov 2023 13:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701178183;
	bh=eegc62CSFJSGMpwmfbQ9cieR8ro9QUfxI2Hecr1t0d0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jq7O6PHR6YExx9eupodBnBU26Udoi6FMtcX3bU0B51+pFSeHpJij8cLvwfre2NU9r
	 hlU8qmy3P9IKCI32NGfGoni/pILrS/N0Cck3Tw7ijrhJCX1Sf7O7oU2BFFkwWdJZNR
	 iiQeyGhKbsamyvQTl7kyEyLKkq+N2PPHIolJ5kOfAAHS1dm/aR6mTJirWaZ/FWN7tf
	 0D1yIWE/TUPh7NQQ1aZp2qlVgarhL3nEIZNzaQVa5OpJCI47SJqKml4TEp3yPS9Ti8
	 JMc/ozLQGq95jIAU9G6MmFGXMRLW2Otb9xTDH8Yas6bpLF9Wg1eT7bbYXmlO/TiwG2
	 JdNpUHuh7JNOg==
Date: Tue, 28 Nov 2023 14:29:40 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v4 05/45] drm/connector: Check drm_connector_init
 pointers arguments
Message-ID: <v3hplco5fdedv6bnc6mwx2zhhw4xxdiekha26ykhc5cmy7ol77@2irk3w4hmabw>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
 <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
 <87h6l66nth.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <87h6l66nth.fsf@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_052945_496398_7E6F4B43 
X-CRM114-Status: GOOD (  19.23  )
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
Content-Type: multipart/mixed; boundary="===============0966515176106119351=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0966515176106119351==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ncmpulkgjsh2p7e6"
Content-Disposition: inline


--ncmpulkgjsh2p7e6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jani,

On Tue, Nov 28, 2023 at 02:54:02PM +0200, Jani Nikula wrote:
> On Tue, 28 Nov 2023, Maxime Ripard <mripard@kernel.org> wrote:
> > All the drm_connector_init variants take at least a pointer to the
> > device, connector and hooks implementation.
> >
> > However, none of them check their value before dereferencing those
> > pointers which can lead to a NULL-pointer dereference if the author
> > isn't careful.
>=20
> Arguably oopsing on the spot is preferrable when this can't be caused by
> user input. It's always a mistake that should be caught early during
> development.
>=20
> Not everyone checks the return value of drm_connector_init and friends,
> so those cases will lead to more mysterious bugs later. And probably
> oopses as well.

So maybe we can do both then, with something like

if (WARN_ON(!dev))
   return -EINVAL

if (drm_WARN_ON(dev, !connector || !funcs))
   return -EINVAL;

I'd still like to check for this, so we can have proper testing, and we
already check for those pointers in some places (like funcs in
drm_connector_init), so if we don't cover everything we're inconsistent.

Maxime

--ncmpulkgjsh2p7e6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZWXrRAAKCRDj7w1vZxhR
xTyXAP0W+h2/0xLXXBJVtoNPSJ+MdMt1B3qXNmsRScATV36j3QD+JmPDNBt3syJA
33NzAAvtBetz/KSX6B52Yckf1U8lwwU=
=KHiZ
-----END PGP SIGNATURE-----

--ncmpulkgjsh2p7e6--


--===============0966515176106119351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0966515176106119351==--

