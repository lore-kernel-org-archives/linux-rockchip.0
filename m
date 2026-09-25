Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEF8FC98325
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2026 16:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MD/YGbECthAKVyi5+GeqWRYaW3mAAlavyJhxWthiuo=; b=UEsBFQyi+izxkT
	PVwZcmWypLQkpS8GoHRVL43UrhRCZ3QSnyG/Q/pcs1n2SIlSr4EJSvcxuTepurnA8wYJy01OCbz9B
	rOj8ueK3++XWQc5jWKsijb5CxlgiSnn5LM2qo2EoPJPrPEGs6aEgbnPgz1BztHN5g+nRSltWxjSkA
	+n9vlXJ1pDKI9qJtHQjqkNuDJrpTJRfNRrjLaQIb88ZAktMhVTBsTSj31HX9AVqxJPLz/ehszzTRu
	G8d/Zka8TKX7FyGfKYtivBuXhIt4kkpq9Vsf6TGmf7FNwTWbA1lj7pqJGMeqzaRLuHkkH+DHY9kNi
	1hRhJ/kWpJWIwAhWSprw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA8kE-0000000DvY3-3YyN;
	Fri, 25 Sep 2026 16:25:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA8kD-0000000DvXQ-0hwi
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Sep 2026 16:25:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E788E43FE7
	for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2026 16:25:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFAC21F00893
	for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2026 16:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790353552;
	bh=6fYDLPuw7TdEq9beCl8lZHCEAKip/STw7RgtlWkrkg8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=SkZTyo4xxfFfIHkKIcVzKt/r6NVyGCRHYPlxBuj/CfdOc5/UiPnHhsNeysafJ83uT
	 PrsApt20TbtzJyRpj/ArQV+ysPRtw70TjqJbVdGUsvZcqDtlWD9Kq6uCr9e2hR5TcQ
	 WqHkFq31PmtukKbdE6y/W8GS9/XSR4o73yuajz9jGmCx6GdhINz2kzewMKYZle40Rz
	 Jc4eglh/tm38aa+rDhaE+rYk23PpYcf8o3TBVaTamJ/idDzDGvcrFiD2suq/GxYFWK
	 zgFkLbpLOozrM5LhUI306UQ1mmZ30ZjqiBsz8Sk4d6Pq2YHLUgL3h7x5LiWU8/PFE8
	 PJ7V94nNq5nFA==
Received: by mail-lf2-f12.google.com with SMTP id 2adb3069b0e04-5b8eb39a8edso580408e87.0
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2026 09:25:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBy+GyN32PzOEc3MTejPuNzKCKlYXJ04dH+qM3Iwv3hsOdppq8MADjPGm4OiVWIquuwqSWLrUh6TKZ7TsReACQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nEGtqqJ/Hkz5isdlpWRkIT8ITadjIAqhCp7JqZr/ju4Pm22Xgq
	B7DX4nNm7k8HJ+OQp4xwj2GIf1UBLpDMdZQyzhutpXbp+8xcyxfzF330rAUPZVm+RkC1q9jF9wY
	T+ITs3qwcENvAEX0/uMXKTQu5Ik7u4t4=
X-Received: by 2002:a05:6512:1344:b0:5b6:1a7c:59db with SMTP id
 2adb3069b0e04-5b8df0d22f7mr2083445e87.53.1790353550897; Fri, 25 Sep 2026
 09:25:50 -0700 (PDT)
MIME-Version: 1.0
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
 <20260916-drm-bridge-every-panel-v3-12-83afb4f1a707@bootlin.com>
 <arInho2bsfJiCgjV@houat> <DLNCQEG62F5N.O98WAO4U2FJO@bootlin.com>
 <CAD++jLkk-a0MrQUiaDD8OoDDoYVwBwSjFTj5ZBy=Xo7MS4+01g@mail.gmail.com> <arTlpd-KAsVpj3UH@houat>
In-Reply-To: <arTlpd-KAsVpj3UH@houat>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 25 Sep 2026 18:25:35 +0200
X-Gmail-Original-Message-ID: <CAD++jLmktDoqn2EbXsNnyGRudo-q2NCxUf+9ZjeU+WrY4CBMWw@mail.gmail.com>
X-Gm-Features: AclHuK_fq2ZWJ1A-qMmc6hpV7kHeTfdnkXq9HUzMYWRHIkAmDRIf8rPpfyjUW1o
Message-ID: <CAD++jLmktDoqn2EbXsNnyGRudo-q2NCxUf+9ZjeU+WrY4CBMWw@mail.gmail.com>
Subject: Re: [PATCH v3 12/19] drm/mcde: dsi: don't create a panel_bridge
To: Maxime Ripard <mripard@kernel.org>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
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

T24gVGh1LCBTZXAgMjQsIDIwMjYgYXQgMTA6NTfigK9BTSBNYXhpbWUgUmlwYXJkIDxtcmlwYXJk
QGtlcm5lbC5vcmc+IHdyb3RlOgo+IE9uIFRodSwgU2VwIDI0LCAyMDI2IGF0IDA5OjUxOjUzQU0g
KzAyMDAsIExpbnVzIFdhbGxlaWogd3JvdGU6Cgo+ID4gPiBMaW51cywgdW5sZXNzIHlvdSBoYXZl
IG1vcmUgaW5mbyBJJ20gZ29pbmcgdG8gYXBwbHkgdGhlIHBhdGNoIGFzCj4gPiA+IGlzLiBSZW1v
dmluZyB0aGlzIHNwZWNpYWwgY2FzZSB3b3VsZCBiZSB3ZWxjb21lIGFzIGEgbGF0ZXIgcGF0Y2gu
Cj4gPgo+ID4gSSdkIHNheSBnbyBhaGVhZCBhcy1pcy4KPgo+IEknbSBmaW5lIHdpdGggdGhhdCwg
YnV0IEkgcmVhbGx5IHdhbnQgdGhpcyByZW1vdmVkIGF0IHNvbWUgcG9pbnQuCgpJZiBMdWNhIHdh
bm5hIGZpeCB0aGlzIHVwIChkcm9wIHRoaXMgcGF0aCkgdGhhdCdzIGZpbmUgYnkgbWUsCmVsc2Ug
c2VuZCBhIHBhdGNoIGltbWVkaWF0ZWx5IGFmdGVyIHRoaXMgaXMgYXBwbGllZCBhbmQgSSdsbApB
Q0sgaXQuCgo+ID4gSSBkbyBoYXZlIHRoZSBpZGVhIHRvIGNvZGUgdXAgYW5kIHN1Ym1pdCB0aGUg
QVY4MTAwIGVuY29kZXIKPiA+IGFuZCBJIGhhdmUgdGhlIGhhcmR3YXJlIHRvIHRlc3QgaXQsIGJ1
dCBldmVyeSBvdGhlciB1c2VyIHNob3VsZAo+ID4gYmUgdXNpbmcgcGFuZWxzIGRpcmVjdGx5LCBh
bmQgSSB3b3VsZCBiZSB0aGUgb25seSBub24tcGFuZWwKPiA+IHVzZXIgc28gSSBjYW4gZGVhbCB3
aXRoIGl0IHdoZW4gaXQgY29tZXMgdXAuCj4KPiBJdCB3b24ndCBjaGFuZ2UgYSB0aGluZy4gQWxs
IGV4aXN0aW5nICJwYW5lbCIgdXNlcnMgd2lsbCBiZSBicmlkZ2UgdXNlcnMKPiBhZnRlciB0aGlz
IHBhdGNoIGlzIG1lcmdlZC4gU28gd2hldGhlciB5b3Ugd2FudCB0byBlbmFibGUgYSBicmlkZ2Ug
b3IKPiBub3Qgc2hvdWxkbid0IG1hdHRlciwgdGhlIG9ubHkgdGhpbmcgdGhhdCBkb2VzIGlzIHdo
ZXRoZXIgdGhlIGV4aXN0aW5nCj4gdXNlcnMgd291bGQgc3RpbGwgd29yay4KCkkga25vdywgYWxs
IGl0IGRvZXMgaXMgY3JlYXRlIGEgc25hZyB0aGF0IEkgd291bGQgcnVuIGludG8gbXlzZWxmLgoK
QnV0IGl0J3Mgbm90IGdvbm5hIGJlIGEgcHJvYmxlbSBmb3IgYW55b25lIGVsc2UsIHRoYXQncyBh
bGwgSSBtZWFudC4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
