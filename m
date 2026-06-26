Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB505C43211
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 13:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnaklcsdcsFeM1JNjHWOBqujH+ww8891YumJY5yDZ60=; b=AB7VQG7ihvN7mT
	K35c1r6p/7rxHmuQjheSNyUGQHZtfWm44HVbJCPk7KOMzbEQxQnRHwPh1ca0ezvGtZ40tQuTPx2Dd
	TKCWHxNNjKsMtfmC4OlEKMZ6R9PqXCzQ8JIiDMETVG4/fy7AggCxFCySi2OvM/RzYXmnFGXn7LgWS
	RpvwfvxkTeP1xyQyhD1TihxLY+9RriktC9CUd3MRGH//PBitq39ykRXWjGLE7lbni30CFoqWzuyc4
	1wYH1Uil3hpk4F45WmAi7lmn/bF/s2q//1LP21cAlzKPRXUSbi55LMU7pi+attdD+L/2dRgVvdIP4
	62cSOTPOuD6//MZfGOmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd6Lf-0000000BM6R-03MQ;
	Fri, 26 Jun 2026 13:11:59 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd6Lc-0000000BM5k-3Unz
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 13:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1782479515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VKNTFsC75BNMcJnQI4eMzMtTvr9UpO3oOorJIEMb0vQ=;
	b=cLmglm0fFtdT+tIAZb6uKVEXMr65V0gMWXMmZyYqtbeIF6nMdAu+bEKeh2VZ+R1JfpLlrc
	pU7ZGeCtvqzRnHmVrQsaAAOCvrSNFIjeCgKSqIqGo84Yq7T70fQAU4eNrDSa/MAhN2vjmY
	3rFzQKQT3MKDDLHfxYtEgTvV8Ku8MIo=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-131-zH8AIfBuNO63wPTSZDNR_g-1; Fri, 26 Jun 2026 09:11:54 -0400
X-MC-Unique: zH8AIfBuNO63wPTSZDNR_g-1
X-Mimecast-MFC-AGG-ID: zH8AIfBuNO63wPTSZDNR_g_1782479514
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-8003dfff66dso18517217b3.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 06:11:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782479514; x=1783084314;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VKNTFsC75BNMcJnQI4eMzMtTvr9UpO3oOorJIEMb0vQ=;
        b=SFUdFuDJh8FqkXiTUJBFwxvtnV84Uxld6UKZk9kCyCPZ/43xSlFELcpKHrQlF2Cv3r
         4UcNRfXR/7n68eKadhUGXyoM2ZLkIxq71RxHsy+VgXAabQawoQ5hNjCtQW7vkPhpYQ5K
         A309P8cZ9K24J08+wfW/XFkqL9bwCatBF9lqxNt8hfW8sLnLF0gnC3YSzRGhciUd/Y4i
         RmqnbeWl1Wjk5Lmu8BBbGTjJtkQ/6yeEypn7wNeMFhUDhRkzWmy66Ji3KXrOo0Zd456H
         w6hP+mswOrt4caiz/zeN1BnKmkRR0CYEHWqUv+pjo5B4vaVxhWbJNs/tZUlsXAIGiLvy
         FsOQ==
X-Forwarded-Encrypted: i=1; AHgh+Rptut0VURgH1Bnjphlb31CQ4HZ7xEjM38mAnEoXTT7XgQrc7ZjmFeNGg0a+TK1XHGxTOIqbdi7IOvyBo1F89Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzlf4cT20zo3MAAT8anhuTAo7xOB8EhCFAnZM+YP3O8lcvcM5bK
	5VKawhFbrZREdzYRr80PjPvofDTM8JaG2JxXS2x9qZb943UcCAfG3dF3DV09GWs1NDAj93FjEWb
	Zcy2KC9F6asgLp85kBXYBLSjGSbmGfj4JrZ1+b4HltThLQbJwDd35J9F/MmhX50uwE64Fhxaj+8
	LQ5WsV1DvpKw2STmHBC0Nn+l5JkH3XEIkkVGwJplvFzJOsq1XK
X-Gm-Gg: AfdE7cm1m7Xj9Wpkf/hxqX9mqDrkTiabAMp/asIVUtZvRnxdjWKVlzTP2P98Hydimik
	g9/BtgkFDZ3a6zpjMhRvUS8gipLL0n5PNMYJoXf946CHz6hrdAvVBrgoC3IWBKIGpK59gzkoT94
	DEc/r5sHIl/0f7NaVRhjJkisAZeg5b8E4xOQTf25LXMy7wJXujvMvDOn01YCInhtX+
X-Received: by 2002:a05:690c:2601:b0:80b:ef0a:7aad with SMTP id 00721157ae682-80bef0a8585mr15809627b3.31.1782479513427;
        Fri, 26 Jun 2026 06:11:53 -0700 (PDT)
X-Received: by 2002:a05:690c:2601:b0:80b:ef0a:7aad with SMTP id
 00721157ae682-80bef0a8585mr15808937b3.31.1782479512984; Fri, 26 Jun 2026
 06:11:52 -0700 (PDT)
MIME-Version: 1.0
References: <20260626-drm_refcount_wiring-v1-0-cca1a7b3bdef@redhat.com>
 <20260626-drm_refcount_wiring-v1-4-cca1a7b3bdef@redhat.com> <20260626-manipulative-rainbow-rhino-d73b65@houat>
In-Reply-To: <20260626-manipulative-rainbow-rhino-d73b65@houat>
From: Albert Esteve <aesteve@redhat.com>
Date: Fri, 26 Jun 2026 15:11:41 +0200
X-Gm-Features: AVVi8CcW-L7vrM5Bm_e3_mA7DiL0CVsM1LDa8FwSzsOcNktoquvN-pr6tbwgp5U
Message-ID: <CADSE00+1m1ASzJzefO2bLuMYAJa3kSmW4py7Qng70VnZSUv0sg@mail.gmail.com>
Subject: Re: [PATCH 4/5] drm/bridge: release panel reference on all lookup
 exit paths
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
X-Mimecast-MFC-PROC-ID: RvxgpTGZLg09DZ5e9RZs_RW-ipcgGLz8mz-PWV280t8_1782479514
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_061156_968563_7CB3E352 
X-CRM114-Status: GOOD (  22.31  )
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

T24gRnJpLCBKdW4gMjYsIDIwMjYgYXQgMjo1M+KAr1BNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIEp1biAyNiwgMjAyNiBhdCAwMjowMzoyNlBN
ICswMjAwLCBBbGJlcnQgRXN0ZXZlIHdyb3RlOgo+ID4gb2ZfZHJtX2ZpbmRfcGFuZWwoKSBhbmQg
ZHJtX29mX2ZpbmRfcGFuZWxfb3JfYnJpZGdlKCkgbm93IHJldHVybiBhCj4gPiBjb3VudGVkIHJl
ZmVyZW5jZSB0aGF0IHRoZSBjYWxsZXIgbXVzdCByZWxlYXNlIHdpdGggZHJtX3BhbmVsX3B1dCgp
Lgo+ID4KPiA+IEZvciBicmlkZ2UgZHJpdmVycyB0aGF0IGltbWVkaWF0ZWx5IHdyYXAgdGhlIHBh
bmVsIGluIGEgcGFuZWxfYnJpZGdlCj4gPiAod2hpY2ggYWNxdWlyZXMgaXRzIG93biByZWZlcmVu
Y2UpLCByZWxlYXNlIHRoZSBsb29rdXAgcmVmZXJlbmNlIHJpZ2h0Cj4gPiBhZnRlciB0aGUgYnJp
ZGdlIGNyZWF0aW9uIGNhbGwuCj4gPgo+ID4gRm9yIGFuYWxvZ2l4LWFueDYzNDUsIHdoaWNoIHN0
b3JlcyB0aGUgcGFuZWwgZm9yIGRpcmVjdCB1c2UsIHJlbGVhc2UKPiA+IHRoZSByZWZlcmVuY2Ug
aW4gdGhlIGkyYyByZW1vdmUgcGF0aC4KPiA+Cj4gPiBGb3IgcGxhdGZvcm0gZHJpdmVycyB1c2lu
ZyBhbmFsb2dpeF9kcF9jb3JlIHdpdGggYSBjb21wb25lbnQgbGlmZWN5Y2xlCj4gPiAoZXh5bm9z
X2RwLCByb2NrY2hpcCBhbmFsb2dpeF9kcCksIHJlbGVhc2UgdGhlIGxvb2t1cCByZWZlcmVuY2Ug
aW4gdGhlCj4gPiBwbGF0Zm9ybSByZW1vdmUoKSBmdW5jdGlvbi4gVGhlIHBhbmVsX2JyaWRnZSBj
cmVhdGVkIGR1cmluZyBiaW5kKCkgaG9sZHMKPiA+IGEgc2VwYXJhdGUgcmVmZXJlbmNlIHRoYXQg
ZGV2bSBjbGVhbnVwIHJlbGVhc2VzIGFmdGVyIHJlbW92ZSgpIHJldHVybnMuCj4gPgo+ID4gQWxz
byBmaXggZGV2bV9kcm1fb2ZfZ2V0X2JyaWRnZSgpIGFuZCBkcm1tX29mX2dldF9icmlkZ2UoKSBp
bgo+ID4gYnJpZGdlL3BhbmVsLmMgaXRzZWxmOiBib3RoIGNhbGwgZHJtX29mX2ZpbmRfcGFuZWxf
b3JfYnJpZGdlKCkgYW5kCj4gPiB0aGVuIHBhc3MgdGhlIHBhbmVsIHRvIGRldm0vZHJtbV9wYW5l
bF9icmlkZ2VfYWRkKCksIHdoaWNoIGFjcXVpcmVzCj4gPiBpdHMgb3duIHJlZmVyZW5jZSB2aWEg
ZHJtX3BhbmVsX2JyaWRnZV9hZGRfdHlwZWQoKS4gVGhlIGxvb2t1cAo+ID4gcmVmZXJlbmNlIHdh
cyBuZXZlciByZWxlYXNlZDsgYWRkIGRybV9wYW5lbF9wdXQoKSBhZnRlciBlYWNoIGJyaWRnZQo+
ID4gY3JlYXRpb24gY2FsbC4KPiA+Cj4gPiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS1vcHVz
LTQtNgo+ID4gU2lnbmVkLW9mZi1ieTogQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQuY29t
Pgo+Cj4gSSB0aGluayB0aGlzIG9uZSBzaG91bGQgYmUgZWl0aGVyIHNwbGl0IGludG8gb25lIHBh
dGNoIHBlciBkcml2ZXIsIG9yCj4gbWVyZ2VkIHdpdGggdGhlIG9mX2RybV9maW5kX3BhbmVsIHBh
dGNoLiBJJ20gc3RpbGwgbm90IHF1aXRlIHN1cmUgd2hpY2gKPiB3b3VsZCBiZSB0aGUgYmVzdCwg
bWF5YmUgdGhlIGxhdHRlcj8KCkkgaGF2ZSBzcGVudCBzb21lIHRpbWUgbXlzZWxmIHRoaW5raW5n
IGFib3V0IGhvdyB0byBhcHByb2FjaCB0aGlzLgpJbml0aWFsbHkgSSB0aG91Z2h0IGFib3V0IGRv
aW5nIG9uZSBwYXRjaCBwZXIgZHJpdmVyIGFzIHlvdSBzdWdnZXN0ZWQsCmJ1dCBzaW5jZSB0aGVy
ZSBhcmUgbWFueSBzaW1pbGFyIGZpeGVzIHRoYXQgYXJlIG1vc3RseSBvbmUtbGluZXJzLCBJbgp0
aGUgZW5kIEkgZGVjaWRlZCB0aGF0IGdyb3VwaW5nIHRoZW0gd291bGQgbWFrZSB0aGUgcmV2aWV3
IGVhc2llciBhbmQKcmVzdWx0IGluIGEgbGVzcyBpbmZsYXRlZCBzZXJpZXMuIE1heWJlIG1lcmdp
bmcgd2l0aCBvZl9kcm1fZmluZF9wYW5lbApwYXRjaCBtYWtlcyBzZW5zZSB0byBhdm9pZCBoYXZp
bmcgb25lIHBhdGNoIGludHJvZHVjaW5nIGEgdHJhbnNpZW50CnJlZmVyZW5jZSBsZWFrIChldmVu
IGlmIGl0IGlzIGZpeGVkIHJpZ2h0IGFmdGVyIGFuZCBpcyBiaXNlY3RhYmxlKS4KQnV0IHRoYXQg
d2lsbCBhbHNvIGNyZWF0ZSBhIGdpYW50IHBhdGNoIChoYXJkZXIgdG8gcmV2aWV3PykuIEFub3Ro
ZXIKb3B0aW9uIGNvdWxkIGJlIHRvIG1lcmdlIHBhdGNoZXMgNCBhbmQgNSwgd2hpY2ggYmFzaWNh
bGx5IHVwZGF0ZSBhbGwKY2FsbGVycywgYW5kIGtlZXAgdGhlIEFQSSB1cGRhdGUgc2VwYXJhdGVk
LiBFaXRoZXIgd2F5LCBJIGFtIGhhcHB5CndpdGggd2hhdGV2ZXIgeW91IGRlY2lkZSBpcyBiZXR0
ZXIuIEkgd2lsbCB0YWtlIG5vdGUgb2YgdGhpcyBmb3IgdjIuCgo+Cj4gTWF4aW1lCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
