Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A4EDC982DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 22:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdJRpEfC3qguZHy2Sra2K38Y7EXg41+V/AB8fCqU340=; b=aRAwStECEDTQBr
	ncxzQpOlMn1om2pPz89oYm0/xrqTppwpw68vqU5TS7xCsbKTqu1zZlX3ibz4VWjRnWyWXTLMskauw
	Lm6Mccc/AigLFcSBOn2CaaciLq6vo85YcvcWmg0+Xd8XuH/T+/wazkRuFkgeR5s7Iy57EYXcMQ1DQ
	YM1iewAW/uxSKZq5fuy+fTHxwhh+w3ZZ7JAdKHKkcY2N42ZLXHEvZkmUPOler146K4sp+DZKIN3IG
	2nZ1l/Xdgf19QNRseW6+EsVdAEaVF3WWj0cITH90vABJA1VIVQnxVc708Wl3qi3sYYhBVH/xMek7D
	1WYSpdzpK7ZKiGMQjInQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8PzY-00000000W0V-379X;
	Sun, 20 Sep 2026 22:26:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8PzW-00000000W0B-36E3
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 22:26:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7B17043EE5
	for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 22:26:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4946D1F0089E
	for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 22:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789943194;
	bh=H1RxdKnl+mgp+J5mdKqwKEcwtM2QvVr2AoIW/SdfGVs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=Um4AR4NGybyoFBxIBGi0Xh4Y9rzD5LFCXqZCOggNLgf6RggNNbZYhHpO3Rxg/ypYh
	 1suENso0L/ow9XCf/vjSEUYP4tNWVXK5rk7NFcTO/wZ670wSc5ydX9D/1xtqJdfnos
	 dBdZ4PU2YhxZvA7xbrhPwv/P92hyGIxSlIxW1UYRTJFbBZ/K4jn8lVPL+TgfNxMojf
	 pH/e0M3qYN7jP2pASJsT/SuUSgShs7sJglrPc449J2q/D2TEVXK+SJ+aHusOvP1sFQ
	 UlTuiA3FoiQwEKVW8BB8e4DZUCKqk1oI0f7OyGn6aB0ROj6L0SThtYxSnQdDeLGC9V
	 mHmN0KGgVvstw==
Received: by mail-lf2-f12.google.com with SMTP id 2adb3069b0e04-5b5e4f16c81so2016039e87.2
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 15:26:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBxVfBd8CxH0oXZJb6I7KEmzRurfWppgKX7v8jQRhZbUgdvjAXIiL7VZMTdViH9Kf1fTVxma+/R1T/KU/kBuYQ==@lists.infradead.org
X-Gm-Message-State: AFuF++kKXIqjkoWEFvCmeS16IjC/Oy6ZsIrRwcLyUCucqTE7fWx5tz/s
	qvH+K38SBxiDtjmcNXqRclFT5yCpFaJhpHpQ6etmEftMidaLggk1XcS63+aqqkyUP3PjZZ2tYKj
	DN6zbpV/mJFK+fQgVtxESh7C+7zhOn4g=
X-Received: by 2002:ac2:4e14:0:b0:5b6:95e:87ee with SMTP id
 2adb3069b0e04-5b8c18137b6mr2715966e87.13.1789943193023; Sun, 20 Sep 2026
 15:26:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com> <20260916-drm-bridge-every-panel-v3-12-83afb4f1a707@bootlin.com>
In-Reply-To: <20260916-drm-bridge-every-panel-v3-12-83afb4f1a707@bootlin.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 21 Sep 2026 00:26:20 +0200
X-Gmail-Original-Message-ID: <CAD++jLk66Xj=4qTigoM6ha4G=+E5j7wOQCWEDq_x5BgoxKbqSw@mail.gmail.com>
X-Gm-Features: AcwNN1Xl2NMg3RCxeoynlYH4VMsnJTqdPMGzMe_YYek3k1zZ_YWzrrvsVntgttg
Message-ID: <CAD++jLk66Xj=4qTigoM6ha4G=+E5j7wOQCWEDq_x5BgoxKbqSw@mail.gmail.com>
Subject: Re: [PATCH v3 12/19] drm/mcde: dsi: don't create a panel_bridge
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
	Paul Kocialkowski <paulk@sys-base.io>, Inki Dae <inki.dae@samsung.com>, 
	Jagan Teki <jagan@amarulasolutions.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Sean Paul <sean@poorly.run>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Albert Esteve <aesteve@redhat.com>, 
	Anusha Srivatsa <asrivats@redhat.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	asahi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-samsung-soc@vger.kernel.org
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBTZXAgMTYsIDIwMjYgYXQgMzo0N+KAr1BNIEx1Y2EgQ2VyZXNvbGkgPGx1Y2EuY2Vy
ZXNvbGlAYm9vdGxpbi5jb20+IHdyb3RlOgoKPiBOb3cgYSBwYW5lbF9icmlkZ2UgaXMgYXV0b21h
dGljYWxseSBjcmVhdGVkIGZvciBldmVyeSBkcm1fcGFuZWwgYW5kIHRoZQo+IHBhbmVsLWJyaWRn
ZSBBUEkgaXMganVzdCBhIGRlcHJlY2F0ZWQgd3JhcHBlciB0byBhY2Nlc3MgaXQuCj4KPiBVcGRh
dGUgYW5kIHNpbXBsaWZ5IHRoZSBjb2RlIGJ5IGp1c3QgZ2V0dGluZyBhIHJlZmVyZW5jZSB0byB0
aGUKPiBhbHJlYWR5LWV4aXN0aW5nIGJyaWRnZSB1c2luZyBvZl9kcm1fZmluZF9hbmRfZ2V0X2Jy
aWRnZSgpLgo+Cj4gQWxzbyBrZWVwIHRoZSAiY29ubmVjdGVkIHRvIG5vbi1wYW5lbCBicmlkZ2Ug
KHVuc3VwcG9ydGVkKVxuIiBlcnJvciBsb2dpYwo+IGJ5IHVzaW5nIHRoZSBkcm1fYnJpZGdlX2lz
X3BhbmVsKCkgZnVuY3Rpb24uCj4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNh
LmNlcmVzb2xpQGJvb3RsaW4uY29tPgoKUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVz
d0BrZXJuZWwub3JnPgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
