Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBB9BC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 10:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/ok/wP0fjdtpSRRjHTaj0D/idWnj10N8mwOqbNRwqY=; b=n8oiB7p2TYcFdA
	X3RJTteg4fSdwED8++WiII9LQlKc+WSFCG++YB8X7az+3JYuvO2zn+dMXKrQtUgpEOi3Noh3FTuPg
	1bKfdP9LRvwYv8vdNm98NSVWkAU/9UhIaY0Eb9AJbDcSG+203k8UjehkCEbo7ZHjmDvc+30vj7UPS
	ZPuX5dJC6s0TWr1e9rpIfIv+zyGGx0Zq89lRqX/RIV6w/IoUteCBQRo2ddbcy9X51x7WK+rNNb7kZ
	EMo5px0LQr7U5NtUEamXZa5QGNMUNxvMCtpiMQzH67/wYRD6ZyT6oXWuWHOgC5YS0Noh9OZMWG5Ba
	TFpyuy1FoGeZwYOg8+mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shRqL-0000000GOo3-3rvI;
	Fri, 23 Aug 2024 10:48:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shRpV-0000000GOP8-1Q1K;
	Fri, 23 Aug 2024 10:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FNbXOx598TDYgdA8NaIEZsBVSraU+CQsgIhi1d4qqCQ=; b=cL9Er7Yo/5KkgBw8fyyBzi8wrU
	XCc2z9xbbhkK5fhWM6Jj5Wzcza/+zd8fAcZcg7yCjAoxeO/vWqqh2QFSqwYkWlH0QhGnugHcvizYe
	r+6R1gmBabHMxT6fcZYEO83j41sM5fpRmFaFjrEiz/bvDQ0kS5oC82wStifK6Rv0PWQwr9v1+GVJk
	GfCuXCM62S2N5k5dHj4q5WHmtpd8eagMIKMTWNA9bWi/iXi0lueH4ngGgaanT4MHwrvAz8nutz/4d
	baOQFeg0ZgxP8jILyEjC9tXnFLNAO7RuC86h3rFow8eF+69lnZXch0wdzf22VV3b5MCLECps3z+du
	f4syM6Pw==;
Received: from i5e861933.versanet.de ([94.134.25.51] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1shRoz-0004MQ-7M; Fri, 23 Aug 2024 12:47:09 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Conor Dooley <conor@kernel.org>
Subject: Re: [PATCH v4 3/4] dt-bindings: display: rockchip: Add schema for RK3588 HDMI
 TX Controller
Date: Fri, 23 Aug 2024 12:47:50 +0200
Message-ID: <3137870.U3zVgo479M@diego>
In-Reply-To: <20240822-pushchair-premises-f4055779216a@spud>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <4167579.6PsWsQAL7t@diego> <20240822-pushchair-premises-f4055779216a@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_034741_423772_A3112AE4 
X-CRM114-Status: GOOD (  20.85  )
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
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luis de Arquer <ldearquer@gmail.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandre ARNOUD <aarnoud@me.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Mark Yao <markyao0591@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 22. August 2024, 10:41:10 CEST schrieb Conor Dooley:
> On Thu, Aug 22, 2024 at 09:01:34AM +0200, Heiko St=FCbner wrote:
> > @Conor: just for me, did some shift happen in our understanding of dt-
> > best-practices in terms of syscon via phandle vs. syscon via compatible?
> > =

> > Because Rockchip boards are referencing their GRFs via phandes forever
> > but similar to the soc vs non-soc node thing, I'd like to stay on top of
> > best-practices ;-)
> =

> If IP blocks, and thus drivers, are going to be reused between devices,
> using the phandles makes sense given that it is unlikely that syscon
> nodes can make use of fallback compatibles due to bits within that "glue"
> changing between devices. It also makes sense when there are multiple
> instances of an IP on the device, which need to use different syscons.
> My goal is to ask people why they are using these type of syscons
> phandle properties, cos often they are not required at all - for example
> with clocks where you effectively need a whole new driver for every
> single soc and having a phandle property buys you nothing.

I guess I'm of two minds here.

For me at least it makes sense to spell out the dependency to the
syscon in the devicetree and not just have that hidden away inside the
driver.

But on the other hand, we already have the per-soc configuration [0]
defining which grf bits needs to be accessed, so adding a

	.lanecfg1_grf_compat =3D "rockchip,rk3568-vo"

would not create overhad, as the grf regs and bits and rearranged
all the time anyway.


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c#n1652
taking DSI as an example, where this is even more obvious



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
