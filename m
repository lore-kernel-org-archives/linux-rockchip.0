Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CA89CA5FCE
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2026 06:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sN4MkO3H9fIMm4CPyc4wVahWCm0lYcmzL/lc5v2Y+6E=; b=0XVXWnZAKkW8My
	VozB9pBEwJlfE+gTMrp69Z7/Id9GGV/d7rWijzDNCMDPEcX2Xz+vPB54XYNwjGMvWYtgtWEhMBwVZ
	dcPcJsT72S9viwwCJglHa84JpgOG+B9736sZnArYQrkUUJiVRhRGQhVwxMZWarVynHp7pIb/OlX/5
	HMwIiA80cgTMbkjsYOkR0YGux9b/kHhaEm4KafaqmWokuq74lz6+BwjeTgbLa+qfcdkA2ZlIHLpj6
	R/MTGV9i+bmtztAID6OfoNP7dZhLoJjouJ0YaMYuDyDi4WddVH5K46Kmlv4YBICrnyKwggwIeY3Nh
	gHDe7kRkQ2E8Zi8/ngtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAlM-00000007w0K-2oiv;
	Thu, 01 Oct 2026 06:59:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAlL-00000007w07-1TnC
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Oct 2026 06:59:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B093444793
	for <linux-rockchip@lists.infradead.org>; Thu,  1 Oct 2026 06:59:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E8081F00898
	for <linux-rockchip@lists.infradead.org>; Thu,  1 Oct 2026 06:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790837966;
	bh=adKEV0wp8fnkm3B2gVtkxUbYQ0N4xZbbOvQZcLnu0xk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=ZTEqIekgpZghTg8Qn8vwEmbcMeMYl2MORgJxn3aIHii9lmlTTHXZULIZaVG6qSbBU
	 P1GpvEyVhrBhMi/mxpGoxmyOhDj0twY5/81waMYx34MNJYpyJW/LGUPeAxIk4Gb3tS
	 291yIQxl1AzJd+hKdqlRFd6inzcyYydgb3tNfWPDRy9FVVDUzeGQbpXp2S02THGyJO
	 cBNMWgzFXyDjGvG+KjD2jVAWTdEuZ5SPtgBv4hf/VJBW5T/eR3p7ntSCwVWjJbxHS/
	 EtdsuoEljzPiJkqs+B/W+oywc3R6jty9xcO198geJNwEC8Z9ZM5JTuumBUxhIb+jXo
	 21JWDU1ZRilHQ==
Received: by mail-lf2-f12.google.com with SMTP id 2adb3069b0e04-5ba3e27d525so1237883e87.1
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2026 23:59:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBzD2J25XweejqHab8oTgDJiw0AUNRvqDp7M5Ot3xO4B2wPi5Re/J/bpnrmvsJGnvOf3JeG77iYUMdf5z2l2kA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIankQT3XTezGZusDDghIcr68CqJaugYU3ibm12BXNuABRNI1lk
	yapUBALsboBfi/z+V4G+mrW5w38hF4C4Q3HjlqGkzpUslzSDs/ZRZ+8S7NYAsaFHhVB96M5Wda+
	U8U+/df58ZQFzaAHmj4NSVLnAMVrMqvg=
X-Received: by 2002:a05:6512:3ba0:b0:5ba:3b01:36a5 with SMTP id
 2adb3069b0e04-5ba405ee75amr1389712e87.14.1790837964923; Wed, 30 Sep 2026
 23:59:24 -0700 (PDT)
MIME-Version: 1.0
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com> <20260916-drm-bridge-every-panel-v3-7-83afb4f1a707@bootlin.com>
In-Reply-To: <20260916-drm-bridge-every-panel-v3-7-83afb4f1a707@bootlin.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 1 Oct 2026 08:59:09 +0200
X-Gmail-Original-Message-ID: <CAD++jLkhYNZ4R4Z60zTzNoZwCtk4rcL-pCbgdHpNEzV-4oO_Wg@mail.gmail.com>
X-Gm-Features: AclHuK8feDgrhg1tWHz9y2oJ4IDmaC5Th2MaGXRPg_l1XDpQ6IeWaj3r9RadEo0
Message-ID: <CAD++jLkhYNZ4R4Z60zTzNoZwCtk4rcL-pCbgdHpNEzV-4oO_Wg@mail.gmail.com>
Subject: Re: [PATCH v3 07/19] drm/panel: deprecate panel-bridge APIs
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

T24gV2VkLCBTZXAgMTYsIDIwMjYgYXQgMzo0NuKAr1BNIEx1Y2EgQ2VyZXNvbGkgPGx1Y2EuY2Vy
ZXNvbGlAYm9vdGxpbi5jb20+IHdyb3RlOgoKPiBOb3cgdGhhdCBhIGRybV9icmlkZ2UgaXMgZW1i
ZWRkZWQgaW50byBldmVyeSBkcm1fcGFuZWwsIHRoZSBwYW5lbF9icmlkZ2UgaXMKPiBub3QgbmVl
ZGVkIGFueW1vcmUuIEl0cyBBUElzIGFyZSBqdXN0IGFjY2Vzc2luZyB0aGUgZW1iZWRkZWQgZHJt
X2JyaWRnZQo+IHRyYW5zcGFyZW50bHkuCj4KPiBEZXByZWNhdGUgdGhlbSBhbGwsIGVuY291cmFn
aW5nIHRvIHVzZSB0aGUgZHJtX2JyaWRnZSBBUEkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENl
cmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJvb3RsaW4uY29tPgoKUmV2aWV3ZWQtYnk6IExpbnVzIFdh
bGxlaWogPGxpbnVzd0BrZXJuZWwub3JnPgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
