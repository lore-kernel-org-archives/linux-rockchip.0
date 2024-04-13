Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B80C4C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 06:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D43YV/I9ymltfdLfuhZaFpwfSrN1vovRDOlrQE1m168=; b=KERtNJYjvzy7pCJlFRPBTAtKys
	OQuCwU12RqFIMMYWBaziHoq5SxYUbLJmJO97eBicKbjm4V/Urf5U1sfaPFL3R0cdOewMldHt64gEZ
	+CFW4KS2H2nX16k5289itqhS/RWG++eEv8r9NB+cSvGyRt424fTKjor6rwDg0gqycvvap8CraAvG0
	sEqM853F2ePKhEQ0prOTdD7OOjFDJpilVntMT6fPtqcEa0bjknovrA5R+SpT0zzQrqObN7lDjnAsC
	AyJhWduH8zoeK3OrjWiIYRF3z4RPCNLLhFo1QxfbiXpbBwXLe+PYMI+tzlj6MLfR/TrgfCY7ZJent
	rNoWFHaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvX2a-00000002YAy-3GwB;
	Sat, 13 Apr 2024 06:39:08 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvX2W-00000002Y9V-1qER
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 06:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=UGLa
	QB+Iw2RM3zOnSeet1OBI5DXFOCaVcQZGWoHw6/M=; b=UXFnA0gaRTlicU1eGmFw
	M14hrfGPhOdCy0ib+qkmujECYDiFSrKgoORtfxtbBa5WBOKyTUXuxrKWlxpIVE8C
	h3oupEisiSp0NWM94P7jK8j8ystIKDdu/QI+aXZVbxDuv2a8mU4uKI5KQd8ODy/g
	BD5nGZ0F1PlNXPWzTxnZTil9QtellL+7lW4cr7ioTL+0PojF9+H6cEmKL+iF/rxx
	XcfTT3i6ZnkDaaxO3T6OtmC3SnbQOdBMGmh2dFxsQWgYSRzlodSWnKc968nBuhzF
	nZIj/1Ahkv9/qHBip6PkYAWH2gc5BlYcaf7fJEIOqx1aYw4bX4WG4kik9EKBg5sv
	nQ==
Received: (qmail 1435521 invoked from network); 13 Apr 2024 08:38:55 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 13 Apr 2024 08:38:55 +0200
X-UD-Smtp-Session: l3s3148p1@CBRspPQV8ElQk7GI
Date: Sat, 13 Apr 2024 08:38:54 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-i2c@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
Message-ID: <hgdhrf2jiovfxcppdtsq32sfbk4xuq7ewiwq4awwztj4mp3yez@kj6ixihkcxhe>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Dragan Simic <dsimic@manjaro.org>, linux-i2c@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <20240410112418.6400-33-wsa+renesas@sang-engineering.com>
 <4bcd397ec377a4932c34d62c85ef28ed@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <4bcd397ec377a4932c34d62c85ef28ed@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_233905_400451_CC001DE0 
X-CRM114-Status: UNSURE (   7.72  )
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
Content-Type: multipart/mixed; boundary="===============4396686655706086455=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4396686655706086455==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qknyah4mgczhweoa"
Content-Disposition: inline


--qknyah4mgczhweoa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Maybe it would be good to turn it into a debug message, instead of
> simply removing it?  Maybe not all client drivers handle it correctly,
> in which case having an easy way for debugging would be beneficial.

Hmm, but it still returns -ETIMEDOUT to distinguish cases?


--qknyah4mgczhweoa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmYaKHoACgkQFA3kzBSg
KbYlVA/+MUricXOt+mbCxREQXUINn+xSChvT9stYcMVqMxjDu0SEak6tkUuGcvTt
BAXj3a93QxZB0kyVlC+ULQHlssZxloRDwNUZ+aE/0OCobAwGFDNZCOyh7b0YirOE
r7YY0OP7vib7uFU5bNc6Ma9N7991PH107cxViqwYhiNNtNt0pOXa/WXP+ZMTqodP
AeOvQ+PN2aK9pmObgpvnXAr07Lgu5LqRlJPLP76fTKDbEp93cT9KLnr1h1MEaU4u
K6vNCPqasHCHtgYXCr1ScIzWT5WAgYH7pzEZK7ByX7L0Im8Mtq3HlIb2WIkapCH1
c0VDGUOPpNQAbzfX/fnZFr+ujb4CD2sedtsDo3R+uQO0xd3sXuMo6rAlf2wh79dj
3j9+tBcFBD+ZZIFcyXE5INVB/eMsVkZePRHr5Rzu9iwv/vSs+NvgFjnbUBE+/jCE
lC+R7EjoH+gKH+1cCfy2hK8nnrh3x7APIiCs9Od/L04kpZpH7o72IrUEvDzitlR3
CKKgGLCGypujRE5jD5uH84X0uJCwPSuXICFCA1Oxrsmp9spQ9hDoGPZV1xc9LF1p
fvzwLZGa8Z3TeiUXhB0ccQmrnd4BjXK37MBZ6l1Srz9AYZxPpC/JAAGi9ZCjlSl+
D/OkobkAhZx1/Z6nKZsCF7ENBjiDlLayyUX5CVAU7DjYipfMyDs=
=L3eu
-----END PGP SIGNATURE-----

--qknyah4mgczhweoa--


--===============4396686655706086455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4396686655706086455==--

