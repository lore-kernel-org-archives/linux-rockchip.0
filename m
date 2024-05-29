Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08C18C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 15:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o8x6lKuJ3N+XUhjba/Gqf6E8c/Bk2HWjw0eaDGWsXco=; b=WR3bTV2+YEB5xoouNNWWUun0ba
	Vj3lYQ/rLkxhOqOMup7Y5rfwmRVE6wo1rZ3dKkP3Wt1XpTuvGKJEUhaexURR8MRTaB94/SwDo4ykG
	q8+jj0dm9/K5wwgCZyK5eod+vC1xN0ogqn67L2H3F4l5q0mBOSbJa/NOdOnk0Vraa2Uly/MZsWeeB
	UtZ7W6qtu4ukhxbWYppXn9bqcji80/nW2msSzHzuynZ9Yata+dJnuEflpLkE3f+1vRzf269CzATuW
	ygsHHBVtNrgEH+ed1oVle6sU6fyNn+XTD0m8czdS++3rXLKzM5srchd6DM0U+vzOi76RhXtLLzpV9
	QWYrd0TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCLeZ-00000004mjz-3UUq;
	Wed, 29 May 2024 15:55:51 +0000
Received: from out-172.mta1.migadu.com ([2001:41d0:203:375::ac])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCLeV-00000004mi5-0tHD
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 15:55:49 +0000
X-Envelope-To: andyshrk@163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1716998143;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4v4JxLcVLd8gWkKTMWCIwey80lFqT9gw7qVAp737Dzg=;
	b=eM4NCV4dS8iSwN/mOl5uzlsEI1LjYgeCgfecjsWoyo3XXG8yFFz3DVfV7jdPbn17iu7gSi
	OdUK3Gcy58sPhOhc274/8+ybpTz9LTNiBSFy7DxkRogyT5zvsAbpx00b2EgfIyM5Lmlabj
	tJFQALmxUD2R/VvbaX2jGYyyqo0bijRCJfjqCawV2B+khyJFolrhDVt7yE5LOAI8JXtvXI
	eiRGXgW6DB3CPwynNORtxQPH+2PujPvtJ6Z91puigUlg9ZormsIIiRAf9xEabIqnp1Cmr1
	l9pLLuredi+4cWZzDPKINY+nV6Qa6dPfMaAcDmXm0+wh2B4rZ9tXBNPQ7sPy7g==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: mripard@kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: dri-devel@lists.freedesktop.org
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: heiko@sntech.de
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, mripard@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, hjc@rock-chips.com, tzimmermann@suse.de,
 dri-devel@lists.freedesktop.org, s.hauer@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 0/1] Fix the port mux of VP2
Date: Wed, 29 May 2024 17:55:25 +0200
Message-ID: <2397969.FhQbyb98Gs@bagend>
Organization: Connecting Knowledge
In-Reply-To: <171405838036.2897712.4067984796758491640.b4-ty@sntech.de>
References: <20240422101905.32703-1-andyshrk@163.com>
 <171405838036.2897712.4067984796758491640.b4-ty@sntech.de>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_085548_474622_98D90C49 
X-CRM114-Status: GOOD (  13.82  )
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
Content-Type: multipart/mixed; boundary="===============1983243786327530057=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1983243786327530057==
Content-Type: multipart/signed; boundary="nextPart7320409.ZChHLWW2r3";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart7320409.ZChHLWW2r3
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/1] Fix the port mux of VP2
Date: Wed, 29 May 2024 17:55:25 +0200
Message-ID: <2397969.FhQbyb98Gs@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Thursday, 25 April 2024 17:19:58 CEST Heiko Stuebner wrote:
> On Mon, 22 Apr 2024 18:19:04 +0800, Andy Yan wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > The port mux bits of VP2 should be defined by
> > RK3568_OVL_PORT_SET__PORT2_MUX, this maybe a copy and paste error when
> > this driver first introduced.> 
> > Hi Heiko:
> >    Maybe thi is the problem you met when you porting the dsi2 driver.
> > 
> 
> Applied, thanks!
> 
> [1/1] drm/rockchip: vop2: Fix the port mux of VP2
>       commit: 2bdb481bf7a93c22b9fea8daefa2834aab23a70f

Wasn't this patch supposed to be part of 6.10-rc1?
--nextPart7320409.ZChHLWW2r3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZldP7QAKCRDXblvOeH7b
btUeAQC4sSMaBwRDiexmeDgGbIxjwMuMYE0XHbgLjJI+tvfh9QD/R83eqtzCIjKM
dqgg+qGOUYmVLyE8XIDN42D5ZijcDQY=
=uCK0
-----END PGP SIGNATURE-----

--nextPart7320409.ZChHLWW2r3--





--===============1983243786327530057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1983243786327530057==--




