Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F697C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 15:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apDzwvn8Vp9eYvKBCoc1MY9P88SaOIdvGV2sCByPJ5k=; b=XGGMx8QpJBAnUB
	ILQcO06Rx3iFZtAJTN/jpdeoegj0ziV7yyKv7WY6XuR5vo8kzQSChVix8QO3ouAD4v0y2CxvEGf6B
	C+3qbAOnHK3iRKIUwZqjDHCSkHOm6Z0euIHtcFlHXCRaeRc7rOnoOod+rZT476zZXBP9oGnCfDmIc
	ZcXIdoozm3ABOVl/CS8sg1cwcbceVmJ2u78mGAuHYgPSJa4lCgI2fglHG5rsjsEGbqk2MYisSL0yz
	nlwwUvbqbZ/2X0BQHnMrrvU+XtYwflDHtak+3aL3eqDMhsfEfvEeZCbpvdB/4UYj1T6zYeTxGOufy
	cf7KufEBIKIlc5CGZSiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd8Do-0000000BWyp-3aeW;
	Fri, 26 Jun 2026 15:12:00 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd8Dm-0000000BWyH-0CR0
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 15:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1782486716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gNWd65/LlS1S7z+e2JXdypKHFrBZo/8VRicT21AfZoc=;
	b=hPM9TV7BCHIdybqUCzr5pGdqGZaks8qnRCS/NAKH50BrkJMA9gZ7F6gq8D8btT0Ev3sNCj
	aU3EjI/PfTeaCvZE/OHPe8Nw3KEMpkVrItpQulKym8BuHzBbJitEbSrGWNNAhjjwFdaFuq
	6Xxps7w+JQS9NpwJCF7pVqoIChV8oM4=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-288-1z7Dsx0LMnun-C1GDcj7sA-1; Fri, 26 Jun 2026 11:11:54 -0400
X-MC-Unique: 1z7Dsx0LMnun-C1GDcj7sA-1
X-Mimecast-MFC-AGG-ID: 1z7Dsx0LMnun-C1GDcj7sA_1782486714
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-7ffa2b66e3cso22455207b3.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 08:11:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782486714; x=1783091514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gNWd65/LlS1S7z+e2JXdypKHFrBZo/8VRicT21AfZoc=;
        b=fQMrvbTD6MN1R4m9oZMt9+C4fY743q1+AyvR/2sE5GWgaQfJ+uY4qaQ87I+GOPhQBl
         UoSo871oeaJBOl+gd2YMDlp3ZcdmuUNDeIiOufOdCSvZy8a1sj0/TYsQ/r/OyS8zmQzC
         o5b2CkpAdpTnlE9V3cnuOrFhZxmoMw7rVfJZDgwjPeCzDbBZVDVzxmP5ty0ill5KgCmf
         j5iQv7b0v9N5psXwvuVDIhKkaNtnPks9Mo+bAUmtxd3IItc0JHpJRJ1yppQcVBJCMyFI
         O3NyGvaZFzoQiH+0m3FoUCfHjhcTYlVne/ffuDkcQFrL+2N9mvcw8yR69hgKFf4x63ss
         pbFQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr0xoeZPry2RVgy1dNywLKz1To6jsLSJPWbHwc1cSyCi7NL3LGWrVnzVVaR5kWOlG4++DexMUFQrvfKgyGHxw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHtfouN18Z/XUpCRwJqZLN76rQuWbrgd9lli/4W/8TY48wacG5
	vW8MXqaf+NtqdgfWBt/l6UjBYsHiOOPs2POxcSVUMlWQxNcwIrzGzgURsva9htnezxMZ9M+75Iw
	aWZhu9PVidGp1VrvNnU6LtPtMaHozkRqX9Jb6UbkIyRtm/4+ZGhXgN/ghvsMyqQ2Bu5fzSiXs+Q
	yBBlu7Ign8Wn4KmM4pPpCbWhKAjgZjAUaDTCplnGo/hOZhwewd
X-Gm-Gg: AfdE7cmOEtS20DdziWa/s2HkiAigTDSnAh4JdUF2OOdPIq3KYyvOpiA9seMVihaAPnw
	WyeLSrb4w6DegoXZaOnYuOUul3iCtG++0n0fLDGKH59mrbUI09n3Eh13Zzpsq+sXZ7+9I3Dq+ny
	728h0KgT8HkCJfo/7Y0ObWirvc60qMnpncP1+cae6P+mq9Q52JZhmht0Gth7FyLw4w
X-Received: by 2002:a05:690c:6804:b0:7fc:cbe1:746d with SMTP id 00721157ae682-80c73fe6f4bmr9719157b3.42.1782486713976;
        Fri, 26 Jun 2026 08:11:53 -0700 (PDT)
X-Received: by 2002:a05:690c:6804:b0:7fc:cbe1:746d with SMTP id
 00721157ae682-80c73fe6f4bmr9718797b3.42.1782486713496; Fri, 26 Jun 2026
 08:11:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260626-drm_refcount_wiring-v1-0-cca1a7b3bdef@redhat.com>
 <20260626-drm_refcount_wiring-v1-3-cca1a7b3bdef@redhat.com> <20260626-successful-badger-from-neptune-ae2bc6@houat>
In-Reply-To: <20260626-successful-badger-from-neptune-ae2bc6@houat>
From: Albert Esteve <aesteve@redhat.com>
Date: Fri, 26 Jun 2026 17:11:42 +0200
X-Gm-Features: AVVi8CdeJARTOKb4ohxfJd8a69EdpRugjimEtA7qtwxmMR2cbKOdWmwQblTZgKI
Message-ID: <CADSE00LO98u6aDwvjijO_hAaMBXSGXaWPuFWiveQi_RWQ0MTVA@mail.gmail.com>
Subject: Re: [PATCH 3/5] drm/panel: make *find_panel*() return a counted reference
To: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
	Linus Walleij <linusw@kernel.org>, Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Yannick Fertre <yannick.fertre@foss.st.com>, 
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
	Philippe Cornu <philippe.cornu@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, Jyri Sarha <jyri.sarha@iki.fi>, 
	Jingoo Han <jingoohan1@gmail.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Alison Wang <alison.wang@nxp.com>, Paul Kocialkowski <paulk@sys-base.io>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Thierry Reding <thierry.reding@kernel.org>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, 
	linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qZ57rL4jLteIBtxwy3iHGZ2uhBdGnP366HJn_EdpaLY_1782486714
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_081158_183048_3EFD5DAD 
X-CRM114-Status: GOOD (  34.12  )
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

T24gRnJpLCBKdW4gMjYsIDIwMjYgYXQgMjo1MOKAr1BNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIEp1biAyNiwgMjAyNiBhdCAwMjowMzoyNVBN
ICswMjAwLCBBbGJlcnQgRXN0ZXZlIHdyb3RlOgo+ID4gQ2FsbGVycyBvZiBvZl9kcm1fZmluZF9w
YW5lbCgpIHJlY2VpdmUgYSBwb2ludGVyIHdpdGggbm8gcmVmZXJlbmNlCj4gPiBoZWxkLCBjcmVh
dGluZyBhIHdpbmRvdyB3aGVyZSB0aGUgcGFuZWwgZGV2aWNlIGNhbiBiZSB1bnJlZ2lzdGVyZWQK
PiA+IGFuZCBmcmVlZCBiZXR3ZWVuIHRoZSBsb29rdXAgYW5kIGZpcnN0IHVzZSAoZS5nLiwgZHJt
X3BhbmVsX3ByZXBhcmUoKSkuCj4gPgo+ID4gZmluZF9wYW5lbF9ieV9md25vZGUoKSBpcyB0aGUg
Zndub2RlIGNvdW50ZXJwYXJ0IG9mIG9mX2RybV9maW5kX3BhbmVsKCkuCj4gPiBkcm1fcGFuZWxf
YWRkX2ZvbGxvd2VyKCkgd29ya2VkIGFyb3VuZCB0aGUgbWlzc2luZyBwYW5lbCBrcmVmIGJ5IGNh
bGxpbmcKPiA+IGdldF9kZXZpY2UoKSBvbiB0aGUgcGFuZWwncyB1bmRlcmx5aW5nIHN0cnVjdCBk
ZXZpY2UuIEhvd2V2ZXIsIGdldF9kZXZpY2UoKQo+ID4gb25seSBwcmV2ZW50cyB0aGUgZGV2aWNl
IGtvYmplY3QgZnJvbSBiZWluZyBmcmVlZC4gSXQgZG9lcyBub3QgcHJldmVudCB0aGUKPiA+IHBh
bmVsJ3Mga3phbGxvYygpJ2QgY29udGFpbmVyIG1lbW9yeSBmcm9tIGJlaW5nIHJlbGVhc2VkIHdo
ZW4gdGhlIGtyZWYKPiA+IHJlYWNoZXMgemVyby4KPiA+Cj4gPiBGaXggYm90aCBsb29rdXAgZnVu
Y3Rpb25zIGJ5IGFjcXVpcmluZyBhIHJlZmVyZW5jZSB3aXRoIGRybV9wYW5lbF9nZXQoKQo+ID4g
YmVmb3JlIHJldHVybmluZywgdW5kZXIgcGFuZWxfbG9jay4gQ2FsbGVycyBhcmUgbm93IHJlc3Bv
bnNpYmxlIGZvciBjYWxsaW5nCj4gPiBkcm1fcGFuZWxfcHV0KCkgd2hlbiB0aGV5IG5vIGxvbmdl
ciBuZWVkIHRoZSBwb2ludGVyLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFsYmVydCBFc3RldmUg
PGFlc3RldmVAcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fcGFu
ZWwuYyB8IDIyICsrKysrKysrKysrKysrKysrLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTcg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9wYW5lbC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jCj4gPiBp
bmRleCA1NDVmZTkzZGMyOGZlLi5hMDBhZTk4ZWQwOTU2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9wYW5lbC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVs
LmMKPiA+IEBAIC00NTgsMTQgKzQ1OCwxNyBAQCBFWFBPUlRfU1lNQk9MKF9fZGV2bV9kcm1fcGFu
ZWxfYWxsb2MpOwo+ID4KPiA+ICAjaWZkZWYgQ09ORklHX09GCj4gPiAgLyoqCj4gPiAtICogb2Zf
ZHJtX2ZpbmRfcGFuZWwgLSBsb29rIHVwIGEgcGFuZWwgdXNpbmcgYSBkZXZpY2UgdHJlZSBub2Rl
Cj4gPiArICogb2ZfZHJtX2ZpbmRfcGFuZWwgLSBsb29rIHVwIGFuZCByZWZlcmVuY2UgYSBwYW5l
bCBieSBkZXZpY2UgdHJlZSBub2RlCj4gPiAgICogQG5wOiBkZXZpY2UgdHJlZSBub2RlIG9mIHRo
ZSBwYW5lbAo+ID4gICAqCj4gPiAgICogU2VhcmNoZXMgdGhlIHNldCBvZiByZWdpc3RlcmVkIHBh
bmVscyBmb3Igb25lIHRoYXQgbWF0Y2hlcyB0aGUgZ2l2ZW4gZGV2aWNlCj4gPiAtICogdHJlZSBu
b2RlLiBJZiBhIG1hdGNoaW5nIHBhbmVsIGlzIGZvdW5kLCByZXR1cm4gYSBwb2ludGVyIHRvIGl0
Lgo+ID4gKyAqIHRyZWUgbm9kZS4gSWYgYSBtYXRjaGluZyBwYW5lbCBpcyBmb3VuZCwgdGhlIHBh
bmVsJ3MgcmVmZXJlbmNlIGNvdW50IGlzCj4gPiArICogaW5jcmVtZW50ZWQgYmVmb3JlIHJldHVy
bmluZyBhIHBvaW50ZXIgdG8gaXQuIFRoZSBjYWxsZXIgbXVzdCBjYWxsCj4gPiArICogZHJtX3Bh
bmVsX3B1dCgpIHdoZW4gaXQgbm8gbG9uZ2VyIG5lZWRzIHRoZSBwYW5lbCBwb2ludGVyLgo+ID4g
ICAqCj4gPiAtICogUmV0dXJuOiBBIHBvaW50ZXIgdG8gdGhlIHBhbmVsIHJlZ2lzdGVyZWQgZm9y
IHRoZSBzcGVjaWZpZWQgZGV2aWNlIHRyZWUKPiA+IC0gKiBub2RlIG9yIGFuIEVSUl9QVFIoKSBp
ZiBubyBwYW5lbCBtYXRjaGluZyB0aGUgZGV2aWNlIHRyZWUgbm9kZSBjYW4gYmUgZm91bmQuCj4g
PiArICogUmV0dXJuOiBBIHJlZmVyZW5jZS1jb3VudGVkIHBvaW50ZXIgdG8gdGhlIHBhbmVsIHJl
Z2lzdGVyZWQgZm9yIHRoZSBzcGVjaWZpZWQKPiA+ICsgKiBkZXZpY2UgdHJlZSBub2RlIG9yIGFu
IEVSUl9QVFIoKSBpZiBubyBwYW5lbCBtYXRjaGluZyB0aGUgZGV2aWNlIHRyZWUgbm9kZQo+ID4g
KyAqIGNhbiBiZSBmb3VuZC4KPiA+ICAgKgo+ID4gICAqIFBvc3NpYmxlIGVycm9yIGNvZGVzIHJl
dHVybmVkIGJ5IHRoaXMgZnVuY3Rpb246Cj4gPiAgICoKPiA+IEBAIC00ODQsNiArNDg3LDcgQEAg
c3RydWN0IGRybV9wYW5lbCAqb2ZfZHJtX2ZpbmRfcGFuZWwoY29uc3Qgc3RydWN0IGRldmljZV9u
b2RlICpucCkKPiA+Cj4gPiAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KHBhbmVsLCAmcGFuZWxf
bGlzdCwgbGlzdCkgewo+ID4gICAgICAgICAgICAgICBpZiAocGFuZWwtPmRldi0+b2Zfbm9kZSA9
PSBucCkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRybV9wYW5lbF9nZXQocGFuZWwpOwo+
ID4gICAgICAgICAgICAgICAgICAgICAgIG11dGV4X3VubG9jaygmcGFuZWxfbG9jayk7Cj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHBhbmVsOwo+ID4gICAgICAgICAgICAgICB9Cj4g
PiBAQCAtNTM4LDcgKzU0MiwxMyBAQCBpbnQgb2ZfZHJtX2dldF9wYW5lbF9vcmllbnRhdGlvbihj
b25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ID4gIEVYUE9SVF9TWU1CT0wob2ZfZHJtX2dl
dF9wYW5lbF9vcmllbnRhdGlvbik7Cj4gPiAgI2VuZGlmCj4gPgo+ID4gLS8qIEZpbmQgcGFuZWwg
YnkgZndub2RlLiBUaGlzIHNob3VsZCBiZSBpZGVudGljYWwgdG8gb2ZfZHJtX2ZpbmRfcGFuZWwo
KS4gKi8KPiA+ICsvKgo+ID4gKyAqIEZpbmQgcGFuZWwgYnkgZndub2RlLCByZXR1cm5pbmcgYSBj
b3VudGVkIHJlZmVyZW5jZS4KPiA+ICsgKgo+ID4gKyAqIEJlaGF2ZXMgaWRlbnRpY2FsbHkgdG8g
b2ZfZHJtX2ZpbmRfcGFuZWwoKS4gT24gc3VjY2VzcyB0aGUgcmV0dXJuZWQKPiA+ICsgKiBwb2lu
dGVyIGhhcyBiZWVuIHBhc3NlZCB0aHJvdWdoIGRybV9wYW5lbF9nZXQoKTsgdGhlIGNhbGxlciBt
dXN0IGNhbGwKPiA+ICsgKiBkcm1fcGFuZWxfcHV0KCkgd2hlbiBkb25lIHdpdGggaXQuCj4gPiAr
ICovCj4gPiAgc3RhdGljIHN0cnVjdCBkcm1fcGFuZWwgKmZpbmRfcGFuZWxfYnlfZndub2RlKGNv
bnN0IHN0cnVjdCBmd25vZGVfaGFuZGxlICpmd25vZGUpCj4gPiAgewo+ID4gICAgICAgc3RydWN0
IGRybV9wYW5lbCAqcGFuZWw7Cj4gPiBAQCAtNTUwLDYgKzU2MCw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
ZHJtX3BhbmVsICpmaW5kX3BhbmVsX2J5X2Z3bm9kZShjb25zdCBzdHJ1Y3QgZndub2RlX2hhbmRs
ZSAqZndub2RlCj4gPgo+ID4gICAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeShwYW5lbCwgJnBhbmVs
X2xpc3QsIGxpc3QpIHsKPiA+ICAgICAgICAgICAgICAgaWYgKGRldl9md25vZGUocGFuZWwtPmRl
dikgPT0gZndub2RlKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgZHJtX3BhbmVsX2dldChw
YW5lbCk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgbXV0ZXhfdW5sb2NrKCZwYW5lbF9sb2Nr
KTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcGFuZWw7Cj4gPiAgICAgICAgICAg
ICAgIH0KPgo+IFRoaXMgcGFydCBzaG91bGQgcHJvYmFibHkgYmUgaW4gYSBzZXBhcmF0ZSBwYXRj
aAoKWWVzLiBUaGlzIGlzIGFub3RoZXIgcGxhY2Ugd2hlcmUgSSBoZXNpdGF0ZWQgb24gb3JnYW5p
emF0aW9uLCBhcyBpdCBpcwp2ZXJ5IHNpbWlsYXIgdG8gb2ZfZHJtX2ZpbmRfcGFuZWwoKSBmaXgu
IEJ1dCBmaW5kX3BhbmVsX2J5X2Z3bm9kZSgpIGlzCm11Y2ggbW9yZSBzZWxmLWNvbnRhaW5lZCAo
aXQgaXMgZGVjbGFyZWQgc3RhdGljIHRvIGJlZ2luIHdpdGgpLiBTbyBpdAptYWtlcyBzZW5zZSB0
byBzcGxpdCB0aGVtLiBJIHdpbGwgZG8gc28gaW4gdGhlIG5leHQgdmVyc2lvbi4KCj4KPiA+IEBA
IC02ODYsNiArNjk3LDcgQEAgdm9pZCBkcm1fcGFuZWxfcmVtb3ZlX2ZvbGxvd2VyKHN0cnVjdCBk
cm1fcGFuZWxfZm9sbG93ZXIgKmZvbGxvd2VyKQo+ID4gICAgICAgbXV0ZXhfdW5sb2NrKCZwYW5l
bC0+Zm9sbG93ZXJfbG9jayk7Cj4gPgo+ID4gICAgICAgcHV0X2RldmljZShwYW5lbC0+ZGV2KTsK
PiA+ICsgICAgIGRybV9wYW5lbF9wdXQocGFuZWwpOwo+ID4gIH0KPiA+ICBFWFBPUlRfU1lNQk9M
KGRybV9wYW5lbF9yZW1vdmVfZm9sbG93ZXIpOwo+Cj4gdG9nZXRoZXIgd2l0aCB0aGlzIG9uZT8K
Pgo+IE1heGltZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
