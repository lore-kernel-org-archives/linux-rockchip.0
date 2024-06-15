Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31440C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 21:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U/JJf3qalKOarhn2DN+4mPOfkY8SSq3rHWjbDEjftyE=; b=XwNJqiQNoFClWNyEla2e0p8yjv
	MdeUbTG8akTTndcYtaQopQ2bqivmNMjjv5JZisyVbnvavm9sIBDJWhNeFUZ1q2HVuZ8XKAJ6PAJlW
	01ehg0+GdhcvpJzMnvYeW/yxKAaQ8oB3ulbRt+ZfStdO3TibX31wofQ0rJkiqtPavO6spS/HZwV6b
	o6PYIx1PBh28ppNs5V+AH9YU2P6xiW7jQmevLRZ9lnTs5MARFfSG6NJWgueYdNc8Ey4btpZbHUCe1
	zIKEaPnu5tIvcup7PhfbrYjjLywMvo6X6L0SGIAGOIJTX8o5PT8oYRXYIO8Sd5Inj3cqBubzX3dtt
	pXvt9AWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIbLi-00000006AVd-49kh;
	Sat, 15 Jun 2024 21:54:14 +0000
Received: from out-183.mta1.migadu.com ([2001:41d0:203:375::b7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIbLf-00000006AUg-12aP
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 21:54:13 +0000
X-Envelope-To: dri-devel@lists.freedesktop.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1718488447;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sP7+7yYRFVKrfpXsMgVKtUyGT3YHuHrpHrvynwsk0Kg=;
	b=SeBI4fmGitwR8BpwBbXVAWpQAz+GZDvJjyoKvALIv7cutdIQ+hPuRAWERFNLzAzUgV6ytN
	sI4S6XDdIZ1NaqqEZhMSweapHFzqbUZV7pRv1pzX0ZqEvO9K3/BOcxqqh/UoXrHf+LefWU
	imNJBsuItut0adOuYuBhk7hzG1RVi+h+bSRhOiX1BhOYVNhpe3Ki9SqWSyDAjzD6jaVFx1
	mnbYHFH8mRGBrlfbi0G4kVV2WkTxi3TrUxfQ/RNP2ZVvVJSTvMtWfVypXYI9GJox7VKEUD
	k3Ob0TZs2eBKwMMzm725XneTNV5k42IwtGUaC5kn0/h5cC6DDwCNUtq8G5H2UA==
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: heiko@sntech.de
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: maarten.lankhorst@linux.intel.com
X-Envelope-To: mripard@kernel.org
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: airlied@gmail.com
X-Envelope-To: daniel@ffwll.ch
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jonas@kwiboo.se
X-Envelope-To: jonas@kwiboo.se
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 06/13] drm/rockchip: dw_hdmi: Add max_tmds_clock validation
Date: Sat, 15 Jun 2024 23:53:51 +0200
Message-ID: <2357044.LC0K3s5jzQ@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240615170417.3134517-7-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
 <20240615170417.3134517-7-jonas@kwiboo.se>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_145411_774394_5D3D10FC 
X-CRM114-Status: UNSURE (   7.03  )
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
Content-Type: multipart/mixed; boundary="===============7344898291228828800=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7344898291228828800==
Content-Type: multipart/signed; boundary="nextPart7974929.RqnHuFZ18C";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart7974929.RqnHuFZ18C
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Sat, 15 Jun 2024 23:53:51 +0200
Message-ID: <2357044.LC0K3s5jzQ@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240615170417.3134517-7-jonas@kwiboo.se>
MIME-Version: 1.0

On Saturday, 15 June 2024 19:03:57 CEST Jonas Karlman wrote:
> The rate limit for RK3288, RK3399 and RK3568 is based on current mpll
> table. The rate limit for RK3228 and RK3228 is based on the
> inno-hdmi-phy pre-pll table.

I see RK3228 mentioned twice; I guess the second should be RK3328?
--nextPart7974929.RqnHuFZ18C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZm4NbwAKCRDXblvOeH7b
blB8AQC/Rk03SLUNvUrFh0Zs3OLlTdb/1xIjrcPsDe+8VzXSeAEAiWSzPhyih8Lw
sE+0vY6wFwT/TXGJ8rcsyUVfdwvAigo=
=SrRQ
-----END PGP SIGNATURE-----

--nextPart7974929.RqnHuFZ18C--





--===============7344898291228828800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7344898291228828800==--




